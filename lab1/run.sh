#!/usr/bin/env bash

# Check if 'docker compose' is available
if docker compose version &>/dev/null; then
  COMPOSE_CMD="docker compose"
else
  # Fallback to the legacy 'docker-compose'
  COMPOSE_CMD="docker-compose"
fi

# Use the selected command to bring up services in detached mode
$COMPOSE_CMD up -d

echo "Prometheus is starting up. Use './check.sh' to verify it's running."
