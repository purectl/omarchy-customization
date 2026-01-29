# SRW
<img width="1335" height="714" alt="image" src="https://github.com/user-attachments/assets/47a160e8-d0f9-4fca-bd45-f972caa708ba" />


# Install
```bash
curl -sSL https://raw.githubusercontent.com/xsorroww/omarchy-customization/main/terminal/bashrc/srw/install-srw.sh | bash
```

## Manual install
```bash
url -sSL https://raw.githubusercontent.com/xsorroww/omarchy-customization/main/terminal/bashrc/srw/install-srw.sh -o install-srw.sh
chmod +x install-srw.sh
./install-srw.sh
```
**or create an add everything yourself!**

# Testing
1. Once installed just run **srwfetch** or just **srw** for command usage.
2. if you want it to appear on the terminal when you open and or clear it:

```bash
if [ -f "$HOME/.local/bin/srw.bash" ]; then
    source "$HOME/.local/bin/srw.bash"
    
    #alias clear='command clear && srwfetch'
fi

#srwfetch
```
**just uncomment them they will be commmented out by default with installer!**


## Features

- **25+ Pre-made Themes** - Dracula, Nord, Gruvbox, Catppuccin, Solarized, and more
- **Custom ASCII Art** - Use your own ASCII art or keep default
- **Caching** - Static system info cached for 24h for fast loading
- **Line-by-line Animation** - Optional typing animation effect (on by default)
- **Full Customization** - Control what info shows, colors, padding, and more
- **Responsive Layout** - Adapts to terminal width (side-by-side or stacked)
- **Theme Management** - Create, edit, delete, and apply themes easily
  
# config
```toml
# ~/.local/share/srw/srw.toml

# ──────────────────────────────────────────────
# Color / Theme
# ──────────────────────────────────────────────
# This is the default purple theme. 
[colors]
ascii_r = 96
ascii_g = 56
ascii_b = 165
username_r = 167
username_g = 139
username_b = 250
separator_r = 167
separator_g = 139
separator_b = 255
label_r = 200
label_g = 180
label_b = 255
value_r = 255
value_g = 255
value_b = 255

# ──────────────────────────────────────────────
# Animation Settings
# ──────────────────────────────────────────────
[animation]
enabled = true      # Enable/disable line-by-line animation
line_delay = 30     # Delay between lines in milliseconds (0-1000)

# ──────────────────────────────────────────────
# Display Settings
# ──────────────────────────────────────────────
[display]
padding = 2         # Padding around ASCII (0-10)

# ──────────────────────────────────────────────
# Information Display
# ──────────────────────────────────────────────
[information]
show_username = true      # Show username@hostname line
show_hostname = true      # Show hostname
show_os = true            # Show OS information
show_kernel = true        # Show kernel version
show_uptime = true        # Show system uptime
show_packages = true      # Show package count
show_shell = true         # Show current shell
show_resolution = true    # Show screen resolution
show_terminal = true      # Show terminal emulator
show_cpu = true           # Show CPU model
show_memory = true        # Show memory usage
show_disk = true          # Show disk usage
show_temperature = true   # Show CPU temperature
show_battery = true       # Show battery status

# ──────────────────────────────────────────────
# Value Overrides
# ──────────────────────────────────────────────
[overrides]
# Leave empty to use system-detected values
# Set custom values to override
username = ""        # Custom username (e.g., "dev", "admin")
hostname = ""        # Custom hostname (e.g., "workstation", "laptop")
# Only works for username and hostname

# ──────────────────────────────────────────────
# Custom Information Lines
# ──────────────────────────────────────────────
[custom_lines]
# Add up to 3 custom info lines
# Format: Label = "Value"
line1 = ""           # Example: "Editor = Neovim"
line2 = ""           # Example: "WM = i3"
line3 = ""           # Example: "Music = Playing"
```

