#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
IMAGE="ghcr.io/xu-cheng/texlive-full:latest"

docker run --rm --platform linux/amd64 \
  -v "$PROJECT_DIR":/work \
  -w /work \
  "$IMAGE" \
  latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex