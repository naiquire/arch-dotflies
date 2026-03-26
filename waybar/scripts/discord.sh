#!/bin/bash

# move to workspace special:discord
hyprctl dispatch togglespecialworkspace discord

# launching discord disabled since detecting existing instances is unreliable

# # launch discord if it isn't already running
# if ! pgrep -x discord >/dev/null; then
#     discord & disown
#     exit 0
# fi

# # move discord to special:discord if it's already running
# addr=$(hyprctl clients -j | jq -r '.[] | select(.class | test("(?i)discord")) | .address' | head -n1)
# if [ -n "$addr" ] && [ "$addr" != "null" ]; then
#     hyprctl dispatch movetoworkspacesilent special:discord,address:$addr
# fi