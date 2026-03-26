#!/bin/bash

# move to workspace special:spotify
hyprctl dispatch togglespecialworkspace spotify

# launch spotify if it isn't already running
if ! pgrep -x spotify >/dev/null; then
    spotify & disown
    exit 0
fi

# move spotify to special:spotify if it's already running
addr=$(hyprctl clients -j | jq -r '.[] | select(.class | test("(?i)spotify")) | .address' | head -n1)
if [ -n "$addr" ] && [ "$addr" != "null" ]; then
    hyprctl dispatch movetoworkspacesilent special:spotify,address:$addr
fi