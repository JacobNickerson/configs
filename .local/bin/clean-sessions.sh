#!/usr/bin/bash

# Cleans up duplicate entries in $XDG_RUNTIME_DIR/ since it keeps happening
# Assumes that only ONE hyprland instance will be running at once
HYPR_DIR="$XDG_RUNTIME_DIR/hypr"

[[ -d "$HYPR_DIR" ]] || exit 0

active=$(ls -td "$HYPR_DIR"/*/.socket.sock 2>/dev/null | head -1)
active_dir=$(dirname "$active")

for dir in "$HYPR_DIR"/*; do
    [[ "$dir" != "$active_dir" ]] && rm -rf "$dir"
done

