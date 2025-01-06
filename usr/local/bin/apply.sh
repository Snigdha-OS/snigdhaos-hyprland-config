#!/bin/sh

# Usage: import-gsettings
# This script imports GTK settings from a configuration file and applies them using gsettings.

# Define the configuration file path
CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini"

# Exit if the configuration file does not exist
if [ ! -f "$CONFIG" ]; then
    echo "Configuration file not found: $CONFIG" >&2
    exit 1
fi

# Define the GNOME schema for settings
GNOME_SCHEMA="org.gnome.desktop.interface"

# Extract settings from the configuration file
GTK_THEME="$(grep -E '^gtk-theme-name' "$CONFIG" | cut -d'=' -f2 | xargs)"
ICON_THEME="$(grep -E '^gtk-icon-theme-name' "$CONFIG" | cut -d'=' -f2 | xargs)"
CURSOR_THEME="$(grep -E '^gtk-cursor-theme-name' "$CONFIG" | cut -d'=' -f2 | xargs)"
FONT_NAME="$(grep -E '^gtk-font-name' "$CONFIG" | cut -d'=' -f2 | xargs)"

# Validate and apply each setting
[ -n "$GTK_THEME" ] && gsettings set "$GNOME_SCHEMA" gtk-theme "$GTK_THEME"
[ -n "$ICON_THEME" ] && gsettings set "$GNOME_SCHEMA" icon-theme "$ICON_THEME"
[ -n "$CURSOR_THEME" ] && gsettings set "$GNOME_SCHEMA" cursor-theme "$CURSOR_THEME"
[ -n "$FONT_NAME" ] && gsettings set "$GNOME_SCHEMA" font-name "$FONT_NAME"

echo "Settings successfully imported from $CONFIG."
