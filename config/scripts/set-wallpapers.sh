#!/usr/bin/env bash
set -euo pipefail

WALLPAPER_DIR="$HOME/Images/Wallpapers"

if [[ ! -d "$WALLPAPER_DIR" ]]; then
    echo "Ошибка: папка $WALLPAPER_DIR не существует" >&2
    exit 1
fi

mapfile -t files < <(find "$WALLPAPER_DIR" -maxdepth 1 -type f)

if [[ ${#files[@]} -eq 0 ]]; then
    echo "Ошибка: в $WALLPAPER_DIR нет файлов" >&2
    exit 1
fi

RANDOM_FILE="${files[RANDOM % ${#files[@]}]}"

feh --bg-fill DP-0 "$RANDOM_FILE"
feh --bg-fill HDMI-0 "$RANDOM_FILE"

