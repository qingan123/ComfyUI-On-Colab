#!/usr/bin/env bash
set -Eeuo pipefail
read -r -p 'Notebook目录或文件: ' target </dev/tty || { echo '需要交互终端' >&2; exit 1; }; [[ -e "$target" ]] || { echo '路径不存在' >&2; exit 1; }; echo "已选择Notebook: $target"; echo '请在Colab中重新打开该Notebook以使用最新内容。'
