#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$repo_root"

python3 - <<'PY'
import pathlib
import sys

if sys.version_info < (3, 11):
    raise SystemExit("Python 3.11+ is required to validate TOML configs")

import tomllib

paths = [pathlib.Path("alacritty.toml"), *sorted(pathlib.Path("theme").glob("*.toml"))]

for path in paths:
    with path.open("rb") as handle:
        tomllib.load(handle)
    print(f"OK {path}")
PY
