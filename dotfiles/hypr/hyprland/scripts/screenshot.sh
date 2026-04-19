#!/usr/bin/env bash

# Create screenshots folder if it doesn't exist
DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

# Generate filename with timestamp
TIMESTAMP=$(date +%F_%T)

if [ "$1" = "region" ]; then
    FILE="$DIR/region_$TIMESTAMP.png"
    # Capture selected region
    # We use 'slurp' to get the geometry for 'grim'
    GEOM=$(slurp)
    if [ -z "$GEOM" ]; then exit 1; fi # Exit if user cancels (Esc/Right-click)
    grim -g "$GEOM" "$FILE"
    NOTIFY_TITLE="📸 Regional screen captured"
else
    FILE="$DIR/full_$TIMESTAMP.png"
    # Capture full screen
    grim "$FILE"
    NOTIFY_TITLE="📸 Screenshot Taken"
fi

# Copy the image to clipboard using CopyQ
# -i (input) reads from the file path
copyq copy image/png - < "$FILE"

# Send notification
notify-send "$NOTIFY_TITLE" "Saved to: $FILE"
