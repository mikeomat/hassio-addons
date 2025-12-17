#!/bin/bash
set -e

# Read Home Assistant config and export as environment variables
export ACTUAL_SERVER_URL=$(jq -r '.actual_server_url' /data/options.json)
export ACTUAL_SERVER_PASSWORD=$(jq -r '.actual_server_password' /data/options.json)
export API_KEY=$(jq -r '.api_key' /data/options.json)

# Execute the original entrypoint
cd /usr/src/app
exec /usr/src/app/entrypoint.sh
