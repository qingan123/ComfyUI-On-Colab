#!/usr/bin/env bash
set -Eeuo pipefail
REPO_URL=${REPO_URL:-https://github.com/nazdridoy/ComfyUI-On-Colab.git}; tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT; git clone --depth 1 "$REPO_URL" "$tmp/repo"; OUT_DIR=${OUT_DIR:-$PWD/colab}; mkdir -p "$OUT_DIR"; cp "$tmp/repo/ComfyUIonColab.ipynb" "$OUT_DIR/ComfyUIonColab.ipynb"; echo "Notebook: $OUT_DIR/ComfyUIonColab.ipynb"
