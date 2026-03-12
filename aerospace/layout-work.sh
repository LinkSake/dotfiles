#!/bin/zsh

aerospace flatten-workspace-tree

windows=$(aerospace list-windows --workspace focused --json)

slack_id=$(echo "$windows" | jq '.[] | select(.["app-name"] == "Slack") | .["window-id"]')
teams_id=$(echo "$windows" | jq '.[] | select(.["app-name"] == "Microsoft Teams") | .["window-id"]')
outlook_id=$(echo "$windows" | jq '.[] | select(.["app-name"] == "Microsoft Outlook") | .["window-id"]')

aerospace focus --window-id "$slack_id"
aerospace layout h_tiles
aerospace move left

# Outlook goes to the right first (top)
aerospace focus --window-id "$outlook_id"
aerospace move right

# Teams joins below Outlook
aerospace focus --window-id "$teams_id"
aerospace join-with right

aerospace mode main
