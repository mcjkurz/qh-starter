#!/usr/bin/env bash
set -euo pipefail

echo "Installing Python packages..."
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo "Installing OpenCode..."
npm install -g opencode-ai

echo "Checking installations..."
python -c "
import jieba
import qhchina
import numpy
import matplotlib
import sklearn
import plotly

print('All Python packages imported successfully.')
"

opencode --version

echo "Development environment is ready."
