#!/bin/zsh

# Usage: layout-dev.sh [half|third]
mode=${1:-half}

aerospace flatten-workspace-tree

windows=$(aerospace list-windows --workspace focused --json)

kitty_id=$(echo "$windows" | jq '.[] | select(.["app-name"] == "kitty") | .["window-id"]')
zen_id=$(echo "$windows" | jq '.[] | select(.["app-name"] == "Zen") | .["window-id"]')

aerospace focus --window-id "$kitty_id"
aerospace layout h_tiles
aerospace move left

aerospace focus --window-id "$zen_id"
aerospace move right

if [ "$mode" = "third" ]; then
    aerospace focus --window-id "$kitty_id"
    aerospace resize width 627
fi

aerospace mode main
