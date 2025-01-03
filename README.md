# SnigdhaOS Hyprland Config 🖥️🌿

This repository contains the configuration files for [Hyprland](https://github.com/hyprwm/Hyprland), a dynamic tiling Wayland compositor, specifically tailored for **SnigdhaOS** on **Arch Linux**. These configuration files aim to provide a smooth and efficient user experience with a modern design and various useful utilities for an optimized workflow.

## Table of Contents 📋
- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Features ✨

- **Dynamic Tiling**: Optimized tiling system for efficient multitasking.
- **Wayland Support**: Native Wayland support for a smooth, high-performance experience.
- **Pre-configured Keybindings**: Useful keybindings for window management and system controls.
- **Aesthetics**: Predefined color schemes and window decorations for a polished, modern look.
- **Performance Optimized**: Lightweight and fast configurations, even on lower-end hardware.

## Installation ⚙️

To use the configuration in this repository on **Arch Linux**, follow the instructions below:

1. **Clone the repository**:

   First, clone the repository to your local machine:

   ```bash
   git clone https://github.com/Snigdha-OS/snigdhaos-hyprland-config.git
   cd snigdhaos-hyprland-config
   ```

2. **Install dependencies**:

   Make sure you have all the required dependencies for Hyprland and related utilities installed. On **Arch Linux**, you can use the package manager `pacman`:

   ```bash
   sudo pacman -S hyprland wayland wlroots hyprctl waybar swaylock
   ```

   This will install:
   - Hyprland (the compositor)
   - Wayland (display server)
   - wlroots (a Wayland compositor library)
   - hyprctl (Hyprland management tool)
   - Waybar (status bar)
   - Swaylock (screen locking utility)

3. **Copy the config files**:

   Once the repository is cloned, copy the contents to your Hyprland configuration folder:

   ```bash
   cp -r * ~/.config/hypr/
   ```

   This will place the configuration files in the correct location for Hyprland.

4. **Start Hyprland**:

   After the installation and setup, you can start Hyprland either via a display manager or by logging into a TTY. To start it manually via TTY:

   ```bash
   exec hyprland
   ```

## Configuration ⚡

This repository includes several configuration files that you can modify for your own preferences:

- `hyprland.conf`: The main configuration file for the Hyprland compositor.
- `hyprland_bar.conf`: Configuration for the Waybar status bar, including visual settings and applets.
- `keybindings.conf`: Custom keybindings to control window management, navigation, and system utilities.
- `themes.conf`: Color schemes and themes for a consistent look across your desktop.

## Customization 🎨

Feel free to customize the configuration files to suit your personal workflow and preferences:

- **Keybindings**: Modify the `keybindings.conf` file to change or add keybindings.
- **Bar & Appearance**: Tweak the look of your desktop by editing `hyprland_bar.conf` and `themes.conf`.
- **Other Tools**: The configuration assumes you're using certain applications like `waybar`, `swaylock`, etc. You can replace or modify these as per your preferences.

## Contributing 🤝

Contributions are welcome! If you have suggestions for improvements, bug fixes, or new features, feel free to open an issue or submit a pull request.

### Steps to Contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Commit your changes and push them to your fork.
5. Create a pull request.

Please make sure your contributions follow the project's coding style and conventions.

## License 📄

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.