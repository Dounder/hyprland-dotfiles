---
# Step-by-Step Installation and Configuration Guide

This guide provides detailed, step-by-step instructions for installing and configuring applications, tools, and settings on your system. Follow the steps below to set up your environment.
---

## Table of Contents

- [Table of Contents](#table-of-contents)
- [1. App Installations ](#1-app-installations-)
- [2. Docker Setup ](#2-docker-setup-)
  - [Optional: Install LazyDocker ](#optional-install-lazydocker-)
- [3. Fast Node Manager (fnm) ](#3-fast-node-manager-fnm-)
- [4. ZSH Configuration ](#4-zsh-configuration-)
  - [4.1 Spaceship Theme ](#41-spaceship-theme-)
  - [4.2 ZSH Plugins ](#42-zsh-plugins-)
- [5. Hyprland Setup ](#5-hyprland-setup-)
  - [5.1 Install Essential Packages ](#51-install-essential-packages-)
  - [5.2 Screen Sharing Configuration ](#52-screen-sharing-configuration-)
- [6. Custom Fonts ](#6-custom-fonts-)

---

## 1. App Installations <a name="1-app-installations"></a>

Follow these steps to install applications via Flathub:

1. Open your terminal.
2. Run the following commands to install the desired applications:

   ```bash
   # Flatpak
   flatpak install flathub app.zen_browser.zen
   flatpak install flathub rest.insomnia.Insomnia
   flatpak install flathub com.jetbrains.DataGrip

   # Snap
   sudo snap install code --classic

   # AUR
   sudo pacman -S spotify-launcher
   ```

---

## 2. Docker Setup <a name="2-docker-setup"></a>

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

## 3. Fast Node Manager (fnm) <a name="3-fast-node-manager-fnm"></a>

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

## 4. ZSH Configuration <a name="4-zsh-configuration"></a>

### 4.1 Spaceship Theme <a name="41-spaceship-theme"></a>

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

### 4.2 ZSH Plugins <a name="42-zsh-plugins"></a>

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

## 5. Hyprland Setup <a name="5-hyprland-setup"></a>

### 5.1 Install Essential Packages <a name="51-install-essential-packages"></a>

1. Install the required packages:

   ```bash
   sudo pacman -S hyprpolkitagent blueman swaync waybar hyprpaper hypridle hyprsunset pavucontrol nm-connection-editor
   ```

2. Install additional utilities:

   ```bash
   yay -S logout
   ```

### 5.2 Screen Sharing Configuration <a name="52-screen-sharing-configuration"></a>

1. Install PipeWire and related packages:

   ```bash
   sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack
   ```

2. Install the Hyprland desktop portal:

   ```bash
   sudo pacman -S xdg-desktop-portal xdg-desktop-portal-hyprland
   ```

---

## 6. Custom Fonts <a name="6-custom-fonts"></a>

Download and install the following fonts:

1. **[FiraCode](https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip)**
2. **[MesloLGS NF](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)**
3. **[FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip)**
