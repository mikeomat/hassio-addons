#!/usr/bin/with-contenv bashio

bashio::log.info "Ensuring SSL directory exists..."
mkdir -p /ssl/traefik/

bashio::log.info "Generating static config..."
gomplate -f /etc/traefik/traefik.yaml.gotmpl -d options=/data/options.json -o /etc/traefik/traefik.yaml

if [ -f /config/static.yaml ]; then
    cat /config/static.yaml >> /etc/traefik/traefik.yaml
    bashio::log.info "Appended static.yaml to traefik.yaml"
fi
bashio::log.info "Static config generated"
