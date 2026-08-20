#!/usr/bin/env bash
set -Eeuo pipefail
REPO_URL=${REPO_URL:-https://github.com/nazdridoy/ComfyUI-On-Colab.git}; tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT; git clone --depth 1 "$REPO_URL" "$tmp/repo"; OUT_DIR=${OUT_DIR:-$PWD/colab}; mkdir -p "$OUT_DIR"; cp "$tmp/repo/ComfyUIonColab.ipynb" "$OUT_DIR/ComfyUIonColab.ipynb"; echo "Notebook: $OUT_DIR/ComfyUIonColab.ipynb"
echo "这是Google Colab Notebook，不会在本机创建公网网页服务；请打开Notebook后使用Colab生成的公开链接。"
