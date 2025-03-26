#!/usr/bin/env bash

# Simple check to ensure Prometheus is reachable on port 9090
if curl -s http://localhost:9090/ > /dev/null; then
  echo "Prometheus is running and reachable at http://localhost:9090"
  exit 0
else
  echo "Prometheus is NOT running or not accessible."
  exit 1
fi
