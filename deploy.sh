#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/opt/devops-cicd-webapp"

cd "$APP_DIR"
git pull --ff-only origin main
sudo systemctl restart devops-cicd-webapp
sudo systemctl is-active --quiet devops-cicd-webapp

echo "Deployment completed successfully."
