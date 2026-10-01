#!/bin/zsh
# Выкладка демо на GitHub Pages: https://emilaxme.github.io/zapis/<slug>/
set -e
cd "$(dirname "$0")"
[ -d .git ] || { git init -q -b main; git remote add origin https://github.com/EmilAxme/zapis.git; }
git add -A
git commit -q -m "Обновление демо $(date '+%d.%m %H:%M')" || echo "нечего коммитить"
git push -q -u origin main
