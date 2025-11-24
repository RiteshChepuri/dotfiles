#!/bin/sh

# Define colors
BLANK='#00000000'    # Transparent
CLEAR='#ffffff22'    # White with transparency
DEFAULT='#00897bE6'  # Teal with opacity
TEXT='#00897bE6'     # Text color (Teal with opacity)
WRONG='#880000bb'    # Wrong password (Dark Red with transparency)
VERIFYING='#00564dE6' # Verifying color (Darker teal with opacity)

# Ensure i3lock is installed
if ! command -v i3lock >/dev/null 2>&1; then
    echo "Error: i3lock is not installed."
    exit 1
fi

# Run i3lock with options
i3lock \
    --insidever-color=$CLEAR     \
    --ringver-color=$VERIFYING   \
    \
    --insidewrong-color=$CLEAR   \
    --ringwrong-color=$WRONG     \
    \
    --inside-color=$BLANK        \
    --ring-color=$DEFAULT        \
    --line-color=$BLANK          \
    --separator-color=$DEFAULT   \
    \
    --verif-color=$TEXT          \
    --wrong-color=$TEXT          \
    --time-color=$TEXT           \
    --date-color=$TEXT           \
    --layout-color=$TEXT         \
    --keyhl-color=$WRONG         \
    --bshl-color=$WRONG          \
    \
    --screen 1                   \
    --blur 9                     \
    --clock                      \
    --indicator                  \
    --time-str="%H:%M:%S"        \
    --date-str="%A, %Y-%m-%d"    \
    --keylayout 1

# Optional: Turn off display after locking
xset dpms force off
