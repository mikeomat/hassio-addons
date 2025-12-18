#!/bin/bash
#
# check-updates.sh - Check for upstream updates for Home Assistant addons
#
# Usage: ./check-updates.sh [addon-name]
#   If addon-name is provided, only that addon will be checked.
#   If no argument is given, all addons with update.json will be checked.
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILTER_ADDON="${1:-}"

CHANGES_MADE=false

# Find all addons with update.json
for UPDATE_JSON in "$SCRIPT_DIR"/*/update.json; do
  [ -f "$UPDATE_JSON" ] || continue
  
  ADDON_DIR="$(dirname "$UPDATE_JSON")"
  ADDON="$(basename "$ADDON_DIR")"
  
  # Skip if specific addon requested and this isn't it
  if [ -n "$FILTER_ADDON" ] && [ "$ADDON" != "$FILTER_ADDON" ]; then
    continue
  fi
  
  CONFIG_FILE="$ADDON_DIR/config.yaml"
  CHANGELOG_FILE="$ADDON_DIR/CHANGELOG.md"
  
  echo "============================================"
  echo "Checking $ADDON"
  echo "============================================"
  
  # Read update.json
  if ! UPSTREAM_REPO=$(jq -r '.upstream_repo' "$UPDATE_JSON" 2>/dev/null); then
    echo "  ⚠️  Failed to read update.json"
    continue
  fi
  STRIP_V=$(jq -r '.strip_v_prefix // false' "$UPDATE_JSON")
  
  echo "  Upstream: $UPSTREAM_REPO"
  
  # Get current version from config.yaml
  if [ ! -f "$CONFIG_FILE" ]; then
    echo "  ⚠️  Config file not found: $CONFIG_FILE"
    continue
  fi
  
  CURRENT_VERSION=$(grep -E '^version:' "$CONFIG_FILE" | sed 's/version:[[:space:]]*//' | tr -d '"' | tr -d "'")
  echo "  Current version: $CURRENT_VERSION"
  
  # Get latest release info from upstream
  RELEASE_JSON=$(curl -s "https://api.github.com/repos/$UPSTREAM_REPO/releases/latest")
  
  LATEST_TAG=$(echo "$RELEASE_JSON" | jq -r '.tag_name')
  RELEASE_NAME=$(echo "$RELEASE_JSON" | jq -r '.name')
  RELEASE_DATE=$(echo "$RELEASE_JSON" | jq -r '.published_at' | cut -d'T' -f1)
  RELEASE_BODY=$(echo "$RELEASE_JSON" | jq -r '.body // ""')
  RELEASE_URL=$(echo "$RELEASE_JSON" | jq -r '.html_url')
  ASSETS_COUNT=$(echo "$RELEASE_JSON" | jq '.assets | length')
  
  if [ "$LATEST_TAG" = "null" ] || [ -z "$LATEST_TAG" ]; then
    echo "  ⚠️  Could not fetch latest release"
    continue
  fi
  
  # Check if release has assets
  #if [ "$ASSETS_COUNT" -eq 0 ]; then
  #  echo "  ⚠️  No release assets found, skipping"
  #  continue
  #fi
  #echo "  Release has $ASSETS_COUNT assets"
  
  # Determine version string (with or without 'v' prefix)
  LATEST_VERSION="$LATEST_TAG"
  if [ "$STRIP_V" = "true" ]; then
    LATEST_VERSION="${LATEST_TAG#v}"
  fi
  
  echo "  Latest version:  $LATEST_VERSION"
  
  # Check if update needed
  if [ "$LATEST_VERSION" = "$CURRENT_VERSION" ]; then
    echo "  ✅ Up to date"
    continue
  fi
  
  echo "  🔄 Update available!"
  
  # Update config.yaml
  sed -i "s/^version:.*/version: \"$LATEST_VERSION\"/" "$CONFIG_FILE"
  echo "  Updated $CONFIG_FILE"
  
  # Update Dockerfile if exists
  DOCKERFILE="$ADDON_DIR/Dockerfile"
  if [ -f "$DOCKERFILE" ]; then
    # Update ARG VERSION if present
    if grep -q "^ARG VERSION=" "$DOCKERFILE"; then
      sed -i "s/^ARG VERSION=.*/ARG VERSION=$LATEST_VERSION/" "$DOCKERFILE"
    fi
    # Update hardcoded version references
    sed -i "s/:$CURRENT_VERSION/:$LATEST_VERSION/g" "$DOCKERFILE"
    echo "  Updated $DOCKERFILE"
  fi
  
  # Update build.yaml if exists
  BUILD_YAML="$ADDON_DIR/build.yaml"
  if [ -f "$BUILD_YAML" ]; then
    sed -i "s/$CURRENT_VERSION/$LATEST_VERSION/g" "$BUILD_YAML"
    echo "  Updated $BUILD_YAML"
  fi
  
  # Update CHANGELOG.md
  echo "  Updating $CHANGELOG_FILE"
  
  # Create changelog entry
  CHANGELOG_ENTRY="## [$LATEST_VERSION] - $RELEASE_DATE

**Upstream Release:** [$RELEASE_NAME]($RELEASE_URL)

$RELEASE_BODY

---

"
  
  # Create CHANGELOG.md if it doesn't exist
  if [ ! -f "$CHANGELOG_FILE" ]; then
    cat > "$CHANGELOG_FILE" << 'EOF'
# Changelog

All notable changes to this add-on will be documented in this file.

EOF
  fi
  
  # Insert new entry after the header
  # Find the line number of first existing version entry
  HEADER_END=$(grep -n "^## \[" "$CHANGELOG_FILE" | head -1 | cut -d: -f1 || echo "")
  
  if [ -z "$HEADER_END" ]; then
    # No existing entries, append to end
    echo "$CHANGELOG_ENTRY" >> "$CHANGELOG_FILE"
  else
    # Insert before first existing entry
    head -n $((HEADER_END - 1)) "$CHANGELOG_FILE" > "$CHANGELOG_FILE.tmp"
    echo "$CHANGELOG_ENTRY" >> "$CHANGELOG_FILE.tmp"
    tail -n +$HEADER_END "$CHANGELOG_FILE" >> "$CHANGELOG_FILE.tmp"
    mv "$CHANGELOG_FILE.tmp" "$CHANGELOG_FILE"
  fi
  
  echo "  Updated $CHANGELOG_FILE"
  
  CHANGES_MADE=true
done

echo ""
echo "============================================"
if [ "$CHANGES_MADE" = true ]; then
  echo "✅ Changes made"
  exit 0
else
  echo "ℹ️  No updates needed"
  exit 0
fi
