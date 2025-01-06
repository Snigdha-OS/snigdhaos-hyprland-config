#!/bin/sh

cd ~  # Ensure we're starting in the user's home directory

# GTK2 configuration
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"  # Set GTK2 configuration file

# Session and desktop environment
export XDG_SESSION_TYPE=wayland           # Set session type to Wayland
export XDG_SESSION_DESKTOP=hyprland       # Set desktop environment to Hyprland

# Mozilla Firefox and Wayland integration
export MOZ_ENABLE_WAYLAND=1               # Enable Firefox in Wayland mode
export MOZ_DBUS_REMOTE=1                  # Fixes "Firefox is already running, but not responding"
export MOZ_WAYLAND_USE_VAAPI=1            # Enable VAAPI for hardware-accelerated video
export GDK_BACKEND=wayland,x11            # Use Wayland if available, fallback to X11 if not

# Elementary and Clutter settings
export ECORE_EVAS_ENGINE=wayland-egl      # Use Wayland EGL for EFL applications
export ELM_ENGINE=wayland_egl             # Use Wayland EGL engine for elementary apps

# Java settings
export _JAVA_AWT_WM_NONREPARENTING=1     # Disables AWT window reparenting in Java apps
export NO_AT_BRIDGE=1                    # Disable assistive technologies (AT) bridge

# Wayland-specific backend for bemenu
export BEMENU_BACKEND=wayland            # Set bemenu to use Wayland backend

# SDL (Simple DirectMedia Layer) settings
export SDL_VIDEODRIVER=wayland           # Force SDL to use Wayland backend (could cause issues with older SDL games)

# Qt application settings
export QT_QPA_PLATFORM=wayland           # Force Qt to use Wayland as its platform

# FZF default options for better color scheme and readability
export FZF_DEFAULT_OPTS=" \
--color=bg+:-1,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#a6e3a1,prompt:#cba6f7,hl+:#f38ba8"

# Allow user to customize this script by overriding with a personal script
hyprstart="$HOME/.config/hypr/hyprstart"  # Path to user-defined script
[ -x $hyprstart ] && . $hyprstart          # Source the script if it exists and is executable

# Launch Hyprland
exec Hyprland  # Start the Hyprland Wayland compositor
