#!/usr/bin/env bash
set -Eeuo pipefail
mkdir -p "${OUT_DIR:-$PWD/colab}"
read -r -p '输出目录 [./colab]: ' d </dev/tty || { echo '需要交互终端' >&2; exit 1; }; d=${d:-${OUT_DIR:-$PWD/colab}}; mkdir -p "$d"; cp "$(dirname "$0")/../ComfyUIonColab.ipynb" "$d/ComfyUIonColab.ipynb"; echo "Notebook: $d/ComfyUIonColab.ipynb"; echo '这是Google Colab Notebook，不会在本机创建公网网页服务；运行Notebook后使用Colab生成的公开链接。'
