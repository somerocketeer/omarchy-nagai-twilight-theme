# Chromium Theme Notes

Chromium does not support full theme files via dotfiles by default. You can try flags to hint a dark theme and custom color:

```
--set-user-color="26,27,38"
--set-color-scheme="dark"
--set-color-variant="expressive"
```

How to apply (example desktop override):
- Copy flags.txt and append entries into your Chromium desktop entry Exec= line, or use a wrapper script that launches Chromium with these flags.
- Alternatively, use a dark theme extension from the Chrome Web Store and configure colors therein.
