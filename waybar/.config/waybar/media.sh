#!/bin/bash

# Get metadata from playerctl
artist=$(playerctl metadata artist)
title=$(playerctl metadata title)

# Handle missing data
if [ -z "$artist" ]; then artist="Unknown Artist"; fi
if [ -z "$title" ]; then title="Unknown Title"; fi

# Output JSON
echo "$title - $artist"
