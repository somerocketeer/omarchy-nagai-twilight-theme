-- LazyVim plugin spec: inject Nagai Twilight palette into Tokyonight
-- Place this file under LazyVim's plugin specs (Omarchy will copy/link when applying the theme)
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
on_colors = function(c)
-- Core (Nagai Twilight, purple with blue injection, no orange)
        c.bg           = "#1F1A2E"
        c.bg_dark      = "#1A1625"
        c.bg_highlight = "#2D2640"
        c.fg           = "#E9E4F5"
        c.fg_dark      = "#C8BFD8"
c.comment      = "#726693" -- Text Dim / gutters (lifted)

        -- Accents / semantic
        c.magenta = "#BD93F9"
c.cyan    = "#406E82"
c.blue    = "#5B8FB9"
        c.red     = "#FF5555"
c.green   = "#6FB3A8"
c.yellow  = "#EADDA6"

        -- Optional terminal palette (helps some integrations)
        c.terminal_black   = "#1A1625"
        c.terminal_red     = "#FF5555"
c.terminal_green   = "#6FB3A8"
        c.terminal_yellow  = "#F1FA8C"
        c.terminal_blue    = "#8BE9FD"
        c.terminal_magenta = "#BD93F9"
c.terminal_cyan    = "#406E82"
        c.terminal_white   = "#E9E4F5"
      end,
      on_highlights = function(hl, c)
        -- Selection and cursor cues
        hl.Visual        = { bg = "#3A3457" }
        hl.CursorLine    = { bg = c.bg_highlight }
        hl.CursorLineNr  = { fg = c.magenta, bold = true }
        hl.LineNr        = { fg = "#6B5F89" }

        -- Floating windows and borders
        hl.NormalFloat   = { bg = c.bg_highlight, fg = c.fg }
        hl.FloatBorder   = { fg = c.blue, bg = c.bg_highlight }

        -- Popup menu
        hl.Pmenu         = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSel      = { bg = "#3A3457", fg = c.fg, bold = true }

        -- Telescope
        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_highlight }
        hl.TelescopeTitle  = { fg = c.magenta, bold = true }

        -- Punctuation (subtle tint for scanability)
        hl.Delimiter = { fg = "#726693" }
        hl["@punctuation.delimiter"] = { fg = "#726693" }
        hl["@punctuation.bracket"]   = { fg = "#726693" }
        hl["@punctuation.special"]   = { fg = "#726693" }

        -- Diagnostics
        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn  = { fg = c.yellow }
hl.DiagnosticInfo  = { fg = c.blue }
        hl.DiagnosticHint  = { fg = c.cyan }
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE" }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, bg = "NONE" }
hl.DiagnosticVirtualTextInfo  = { fg = c.blue, bg = "NONE" }
        hl.DiagnosticVirtualTextHint  = { fg = c.cyan, bg = "NONE" }

        -- Git signs (gitsigns.nvim)
        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.blue }
        hl.GitSignsDelete = { fg = c.red }

        -- Diffs
        hl.DiffAdd    = { fg = c.green, bg = "NONE" }
        hl.DiffChange = { fg = c.blue,  bg = "NONE" }
        hl.DiffDelete = { fg = c.red,   bg = "NONE" }
        hl.DiffText   = { fg = c.blue,  bg = "NONE" }

        -- Which-Key (LazyVim menu)
        hl.WhichKey         = { fg = c.magenta, bold = true }
        hl.WhichKeyGroup    = { fg = c.magenta }
        hl.WhichKeySeparator= { fg = "#726693" }
        hl.WhichKeyDesc     = { fg = c.fg }
hl.WhichKeyValue    = { fg = c.blue }

        -- Lazy.nvim UI
        hl.LazyButtonActive = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyH1           = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyProgressDone = { fg = c.magenta }

        -- Alpha (LazyVim dashboard)
        hl.AlphaHeader     = { fg = c.magenta, bold = true }
        hl.AlphaFooter     = { fg = "#726693" }
        hl.AlphaShortcut   = { fg = c.magenta, bold = true }
        hl.AlphaButton     = { fg = c.blue }
        hl.AlphaButtons    = { fg = c.blue }
        hl.AlphaButtonText = { fg = c.blue }

        -- dashboard-nvim (fallback)
        hl.DashboardCenter = { fg = c.blue }
        hl.DashboardDesc   = { fg = c.blue }

        -- mini.starter (fallback)
        hl.MiniStarterItem    = { fg = c.blue }
        hl.MiniStarterSection = { fg = c.blue }

        -- Generic fallbacks some dashboards link to
        hl.Title   = { fg = c.magenta, bold = true }
        hl.Special = { fg = c.blue }

        -- Statusline/tabline accents (optional examples)
        hl.StatusLine     = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineNC   = { bg = c.bg_dark,      fg = c.comment }
        hl.TabLineSel     = { bg = c.bg_highlight, fg = c.magenta, bold = true }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
