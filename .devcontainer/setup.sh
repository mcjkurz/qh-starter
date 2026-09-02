#!/usr/bin/env bash
set -e

# Chinese fonts so matplotlib doesn't render 豆腐块 (tofu boxes)
sudo apt-get update -qq && sudo apt-get install -y -qq fonts-noto-cjk

pip install --upgrade pip
pip install -r requirements.txt

npm install -g opencode-ai@latest

echo "Done. Run 'opencode' to start the AI agent."
