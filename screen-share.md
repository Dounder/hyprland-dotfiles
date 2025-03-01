### **Step 1: Ensure PipeWire and xdg-desktop-portal are Running**

Screen sharing on Wayland requires `PipeWire` and `xdg-desktop-portal`. Check if they’re running:

1. Open a terminal and run:
   ```bash
   systemctl --user status pipewire pipewire-pulse xdg-desktop-portal
   ```
2. If they’re not running, start them:
   ```bash
   systemctl --user start pipewire pipewire-pulse xdg-desktop-portal
   ```

---

### **Step 2: Set Firefox to Run in Wayland Mode**

To make Firefox run in Wayland mode, you need to set the `MOZ_ENABLE_WAYLAND=1` environment variable.

#### **Option A: Temporary Solution (Run from Terminal)**

1. Open a terminal.
2. Run Firefox with the following command:
   ```bash
   MOZ_ENABLE_WAYLAND=1 firefox
   ```
   This will launch Firefox in Wayland mode for this session only.

#### **Option B: Permanent Solution (Add to Shell Configuration)**

1. Open your shell configuration file:
   - For **Bash**:
     ```bash
     nano ~/.bashrc
     ```
   - For **Zsh**:
     ```bash
     nano ~/.zshrc
     ```
2. Add the following line at the end of the file:
   ```bash
   export MOZ_ENABLE_WAYLAND=1
   ```
3. Save the file and exit the editor.
4. Reload the configuration:
   ```bash
   source ~/.bashrc  # or source ~/.zshrc
   ```

#### **Option C: Permanent Solution (Add to Hyprland Configuration)**

1. Open your `hyprland.conf` file:
   ```bash
   nano ~/.config/hypr/hyprland.conf
   ```
2. Add the following line:
   ```bash
   env = MOZ_ENABLE_WAYLAND,1
   ```
3. Save the file and restart Hyprland.

---

### **Step 3: Verify Firefox is Running in Wayland Mode**

1. Open Firefox (using one of the methods above).
2. Type `about:support` in the address bar and press Enter.
3. Look for the "Window Protocol" entry under "Graphics." It should say `wayland`.

---

### **Step 4: Test Screen Sharing in Google Meet**

1. Open Firefox and go to [Google Meet](https://meet.google.com).
2. Join a meeting.
3. Click the "Present now" button (bottom-right corner).
4. Select "Your entire screen" or "A window" and choose the screen or window you want to share.
5. Grant the necessary permissions when prompted.

---

### **Step 5: Troubleshooting**

If screen sharing doesn’t work:

1. **Check if `xdg-desktop-portal-hyprland` is running**:

   ```bash
   systemctl --user status xdg-desktop-portal-hyprland
   ```

   If it’s not running, start it:

   ```bash
   systemctl --user start xdg-desktop-portal-hyprland
   ```

2. **Check Browser Logs**:

   - For Firefox, open `about:config` and search for `media.webrtc.debug.logging`. Set it to `true` to enable debug logs.
   - For Chromium-based browsers, launch the browser from the terminal and look for errors when attempting to share the screen.

3. **Ensure Environment Variables are Set**:
   Double-check that the `MOZ_ENABLE_WAYLAND=1` variable is set correctly in your shell or Hyprland configuration.

---

### **Step 6: Fallback to X11 (If Needed)**

If screen sharing still doesn’t work on Wayland, you can temporarily switch to an X11 session for Google Meet:

1. Log out of your current session.
2. Select an X11 session (e.g., "GNOME on Xorg") from your display manager.
3. Log in and try screen sharing again.
