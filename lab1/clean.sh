#!/usr/bin/env bash

# Check if 'docker compose' is available
if docker compose version &>/dev/null; then
  COMPOSE_CMD="docker compose"
else
  # Fallback to the legacy 'docker-compose'
  COMPOSE_CMD="docker-compose"
fi

# Use the selected command to bring down the lab environment
$COMPOSE_CMD down -v

echo "All lab resources have been removed."
