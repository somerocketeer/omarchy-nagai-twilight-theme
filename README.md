# Omarchy Theme: Nagai Twilight

A warm, dusk-inspired theme for Omarchy-compatible apps.

## Palette (Nagai Twilight)

Core (purple-forward, no orange)
- Primary Background:   #1F1A2E (Deep purple-twilight)
- Secondary Background: #1A1625 (Darker violet-black)
- Tertiary Background:  #2D2640 (Elevated purple surface)
- Primary Accent:       #BD93F9 (Violet sunset)
- Secondary Accent:     #5B8FB9 (Muted sky blue)
- Tertiary Accent:      #FF79C6 (Pink horizon)
- Text Primary:         #E9E4F5 (Soft pearl)
- Text Secondary:       #C8BFD8 (Muted lavender)
- Text Dim:             #726693 (Twilight purple-gray)
- Success:              #6FB3A8 (Teal-shifted green)
- Warning:              #EADDA6 (Soft sand)
- Error:                #FF5555 (Warm red)
- Info:                 #5B8FB9 (Muted sky blue)

Extras
- Selection Background: #3A3457
- ANSI Normal/Bright for terminals included in alacritty.toml

See palette.yml for machine-readable values.

## Apps covered (initial)
- Alacritty
- Waybar
- Hyprland
- Mako
- btop
- Walker
- Neovim (LazyVim spec)
- Chromium (flags)
- Icons (Yaru-orange)

## Usage (manual copy)
This repository uses a flat layout for configs (only backgrounds/ and preview/ are directories).
- Alacritty: alacritty.toml (import from your Alacritty config)
- Waybar: waybar.css
- Hyprland: hyprland-colors.conf (source from your hyprland.conf)
- Hyprlock: hyprlock.conf
- Mako: mako.conf → ~/.config/mako/config
- SwayOSD: swayosd.css
- btop: btop.theme → ~/.config/btop/themes/nagai_twilight.theme
- Walker: walker.css
- Neovim (LazyVim): neovim.lua → ~/.config/nvim/lua/plugins/neovim.lua
- Chromium: chromium.theme
- Icons: icons.theme (Yaru-orange)
