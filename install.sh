#!/usr/bin/env bash
set -euo pipefail

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js is required. Install Node.js 20 or newer and rerun this script." >&2
  exit 1
fi

node_major="$(node --version | sed -E 's/^v([0-9]+).*/\1/')"
if (( node_major < 20 )); then
  echo "Node.js 20 or newer is required." >&2
  exit 1
fi

npm install --global '@qwen-code/qwen-code@0.22.0'

echo 'Qwen Code is installed. Run: qwen'
echo 'Then copy .env.example to ~/.qwen/.env and add your API key.'
