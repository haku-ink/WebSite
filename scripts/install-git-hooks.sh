#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HOOKS_DIR="${ROOT_DIR}/.git/hooks"
SOURCE_HOOK="${ROOT_DIR}/.githooks/pre-push"
TARGET_HOOK="${HOOKS_DIR}/pre-push"

mkdir -p "${HOOKS_DIR}"
chmod +x "${SOURCE_HOOK}"
ln -sf "../../.githooks/pre-push" "${TARGET_HOOK}"

echo "已安装 Git pre-push hook -> ${TARGET_HOOK}"
