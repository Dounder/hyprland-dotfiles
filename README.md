---
# Step-by-Step Installation and Configuration Guide

This guide provides detailed, step-by-step instructions for installing and configuring applications, tools, and settings on your system. Follow the steps below to set up your environment.
---

## Table of Contents

- [Table of Contents](#table-of-contents)
- [1. Flathub Installations ](#1-flathub-installations-)
- [2. Snap Installations ](#2-snap-installations-)
- [3. Docker Setup ](#3-docker-setup-)
  - [Optional: Install LazyDocker ](#optional-install-lazydocker-)
- [4. Fast Node Manager (fnm) ](#4-fast-node-manager-fnm-)
- [5. ZSH Configuration ](#5-zsh-configuration-)
  - [5.1 Spaceship Theme ](#51-spaceship-theme-)
  - [5.2 ZSH Plugins ](#52-zsh-plugins-)
- [6. Hyprland Setup ](#6-hyprland-setup-)
  - [6.1 Install Essential Packages](#61-install-essential-packages)
  - [6.2 Screen Sharing Configuration ](#62-screen-sharing-configuration-)
- [7. Custom Fonts ](#7-custom-fonts-)

---

## 1. Flathub Installations <a name="flathub"></a>

Follow these steps to install applications via Flathub:

1. Open your terminal.
2. Run the following commands to install the desired applications:

   ```bash
   flatpak install flathub app.zen_browser.zen
   flatpak install flathub rest.insomnia.Insomnia
   flatpak install flathub com.spotify.Client
   flatpak install flathub com.jetbrains.DataGrip
   ```

---

## 2. Snap Installations <a name="snap"></a>

To install Visual Studio Code using Snap:

1. Open your terminal.
2. Run the following command:

   ```bash
   sudo snap install code --classic
   ```

---

## 3. Docker Setup <a name="docker"></a>

Set up Docker on your system by following these steps:

1. Install Docker and related tools:

   ```bash
   sudo pacman -S gnome-terminal docker docker-compose
   ```

2. Enable and start the Docker service:

   ```bash
   sudo systemctl enable --now docker.service
   sudo systemctl start --now docker.service
   ```

3. Add your user to the Docker group:

   ```bash
   sudo usermod -aG docker $USER
   ```

4. Apply the changes by running:

   ```bash
   newgrp docker
   ```

### Optional: Install LazyDocker <a name="optional-install-lazydocker"></a>

LazyDocker is a terminal UI for Docker that simplifies container management. To install it:

1. Download and install LazyDocker:

   ```bash
   curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
   ```

2. Run LazyDocker:

   ```bash
   lazydocker
   ```

---

## 4. Fast Node Manager (fnm) <a name="fast-node-manager"></a>

**fnm** is a fast and simple Node.js version manager. Follow these steps to install and configure it:

1. Install fnm:

   ```bash
   curl -fsSL https://fnm.vercel.app/install | bash
   ```

2. Enable shell completions for fnm:

   ```bash
   fnm completions --shell $SHELL
   ```

3. Restart your terminal or source your shell configuration file (e.g., `.zshrc` or `.bashrc`).

4. Use fnm to install and manage Node.js versions. For example:

   ```bash
   fnm install 18  # Install Node.js v18
   fnm use 18      # Use Node.js v18
   ```

---

## 5. ZSH Configuration <a name="zsh"></a>

### 5.1 Spaceship Theme <a name="spaceship-theme"></a>

1. Clone the Spaceship prompt repository:

   ```bash
   git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
   ```

2. Create a symlink to the theme:

   ```bash
   ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
   ```

3. Open your `.zshrc` file and set the theme:

   ```bash
   ZSH_THEME="spaceship"
   ```

### 5.2 ZSH Plugins <a name="zsh-plugins"></a>

Install the following ZSH plugins:

1. Run the following commands to clone the plugins in parallel:

   ```bash
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions & \
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting & \
   git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
   ```

2. Add the plugins to your `.zshrc` file:

   ```bash
   plugins=(zsh-autosuggestions zsh-syntax-highlighting you-should-use)
   ```

---

## 6. Hyprland Setup <a name="hyprland"></a>

### 6.1 Install Essential Packages

1. Install the required packages:

   ```bash
   sudo pacman -S hyprpolkitagent blueman swaync waybar hyprpaper hypridle hyprsunset pavucontrol nm-connection-editor
   ```

2. Install additional utilities:

   ```bash
   yay -S logout
   ```

### 6.2 Screen Sharing Configuration <a name="screen-sharing-configuration"></a>

1. Install PipeWire and related packages:

   ```bash
   sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack
   ```

2. Install the Hyprland desktop portal:

   ```bash
   sudo pacman -S xdg-desktop-portal xdg-desktop-portal-hyprland
   ```

---

## 7. Custom Fonts <a name="fonts"></a>

Download and install the following fonts:

1. **[FiraCode](https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip)**
2. **[MesloLGS NF](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)**
3. **[FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip)**
