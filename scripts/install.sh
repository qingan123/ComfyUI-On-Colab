#!/usr/bin/env bash
set -Eeuo pipefail
mkdir -p "${OUT_DIR:-$PWD/colab}"
read -r -p '输出目录 [./colab]: ' d </dev/tty || { echo '需要交互终端' >&2; exit 1; }; d=${d:-${OUT_DIR:-$PWD/colab}}; mkdir -p "$d"; cp "$(dirname "$0")/../ComfyUIonColab.ipynb" "$d/ComfyUIonColab.ipynb"; echo "Notebook: $d/ComfyUIonColab.ipynb"
