# Omarchy Theme: Nagai Sunset

A warm, dusk-inspired theme for Omarchy-compatible apps. Standalone project (no symlinks or Omarchy runtime integration yet).

## Palette

Core
- Primary Background:   #1A1B26 (Deep twilight blue)
- Secondary Background: #16161E (Darker night blue)
- Tertiary Background:  #24283B (Elevated surface)
- Primary Accent:       #FF9E64 (Sunset orange)
- Secondary Accent:     #7DCFFF (Pool turquoise)
- Tertiary Accent:      #F7768E (Coral pink)
- Text Primary:         #C0CAF5 (Soft lavender white)
- Text Secondary:       #9ABDF5 (Muted sky blue)
- Text Dim:             #565F89 (Twilight gray)
- Success:              #9ECE6A (Palm green)
- Warning:              #E0AF68 (Golden hour)
- Error:                #F7768E (Coral pink)
- Info:                 #7AA2F7 (Sky blue)

Extras
- Selection Background: #364A82
- ANSI Normal/Bright for terminals included in apps/alacritty/alacritty.toml

See palette/nagai-sunset.yml for machine-readable values.

## Apps covered (initial)
- Alacritty
- Waybar
- Hyprland
- Mako
- btop
- Walker
- Neovim (palette module only)
- Chromium (flags)
- Icons (Papirus-Dark / Yaru-orange recommendation)

## Usage (manual copy)
This repository is standalone. Copy files from each top-level app folder into your config locations.
- Alacritty: copy alacritty/alacritty.toml and import it in your Alacritty config
- Waybar: copy waybar/style.css
- Hyprland: source hyprland/colors.conf from your hyprland.conf
- Mako: copy mako/config to ~/.config/mako/config
- btop: copy btop/nagai_sunset.theme to ~/.config/btop/themes/
- Walker: copy walker/style.css to your Walker theme path
- Neovim: add nvim/lua/nagai_sunset/palette.lua to your runtime and consume it in your colorscheme
- Chromium: see chromium/README.md
- Icons: see icons/README.md

No runtime integration or symlinks are included yet.

## Design philosophy
- Deep twilight blues as the base for calm, low-strain backgrounds
- Sunset orange as primary accent for warmth and energy
- Pool turquoise as a refreshing secondary accent
- Coral pink for alerts/emphasis, maintaining the warm aesthetic
- High but comfortable contrast for readability over long sessions
- Soft, slightly desaturated tones to avoid harshness

## Credits
Inspired by https://github.com/bjarneo/omarchy-reverie-theme for project layout ideas.
