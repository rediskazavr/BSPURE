#!/bin/bash

THEME_SOURCE_DIR="$HOME/BSPURE/configs/firefox/firefox-review-1.1.4/"

PROFILE_DIR=$(find ~/.mozilla/firefox -maxdepth 1 -type d -name '*default*' | head -n 1)

cp -r "$THEME_SOURCE_DIR"/* "$PROFILE_DIR/chrome/"