-- lua/colors/oxocarbon.lua

local M = {}

function M.setup()
    local hl = vim.api.nvim_set_hl
    local palette = {
        -- Custom palette (based on your provided colors)
        bg = "#161616",
        fg = "#dde1e6",
        overlay = "#262626", -- similar to black
        surface = "#262626",
        base = "#161616",
        muted = "#908caa",  -- used for comments
        subtle = "#393939", -- slightly lighter gray
        text = "#dde1e6",
        love = "#ee5396",   -- red / error
        gold = "#ffab91",   -- yellow/orange
        rose = "#ff6f00",   -- accent (bright red)
        pine = "#0f62fe",   -- blue
        foam = "#42be65",   -- green
        iris = "#be95ff",   -- magenta/purple
        highlight_low = "#262626",
        highlight_med = "#393939",
        highlight_high = "#82cfff",
    }

    -- Base
    hl(0, "Normal", { fg = palette.fg, bg = palette.bg })
    hl(0, "NormalNC", { fg = palette.fg, bg = palette.bg })
    hl(0, "LineNr", { fg = palette.muted, bg = palette.bg })
    hl(0, "CursorLine", { bg = palette.highlight_low })
    hl(0, "CursorLineNr", { fg = palette.gold, bold = true, bg = palette.bg })
    hl(0, "Visual", { bg = palette.highlight_med })
    hl(0, "SignColumn", { bg = palette.bg })
    hl(0, "StatusLine", { fg = palette.text, bg = palette.bg })
    hl(0, "StatusLineNC", { fg = palette.muted, bg = palette.bg })
    hl(0, "VertSplit", { fg = palette.highlight_med, bg = palette.bg })

    -- Float/Popup windows
    hl(0, "NormalFloat", { fg = palette.text, bg = palette.overlay })
    hl(0, "FloatBorder", { fg = palette.subtle, bg = palette.overlay })

    -- Treesitter and Syntax
    hl(0, "Comment", { fg = palette.muted, italic = true })
    hl(0, "Keyword", { fg = palette.iris })
    hl(0, "Function", { fg = palette.rose })
    hl(0, "String", { fg = palette.foam })
    hl(0, "Constant", { fg = palette.gold })
    hl(0, "Type", { fg = palette.pine })
    hl(0, "Identifier", { fg = palette.rose })
    hl(0, "Number", { fg = palette.gold })

    -- Lualine (theme=auto)
    hl(0, "lualine_a_normal", { fg = palette.love, bg = palette.bg, bold = true })
    hl(0, "lualine_a_insert", { fg = palette.foam, bg = palette.bg, bold = true })
    hl(0, "lualine_a_visual", { fg = palette.iris, bg = palette.bg, bold = true })
    hl(0, "lualine_b_normal", { fg = palette.pine, bg = palette.bg }) -- Git branch
    hl(0, "lualine_c_normal", { fg = palette.text, bg = palette.bg }) -- Filename
    hl(0, "lualine_x_normal", { fg = palette.rose, bg = palette.bg }) -- Filetype
    hl(0, "lualine_z_normal", { fg = palette.gold, bg = palette.bg }) -- Location

    -- Inactive buffers
    hl(0, "lualine_c_inactive", { fg = palette.muted, bg = palette.bg })
    hl(0, "lualine_x_inactive", { fg = palette.muted, bg = palette.bg })

    -- Diagnostics
    hl(0, "lualine_diagnostics_error_normal", { fg = palette.love, bg = palette.bg })
    hl(0, "lualine_diagnostics_warn_normal", { fg = palette.gold, bg = palette.bg })

    -- Optional terminal background
    hl(0, "TermCursor", { reverse = true })
end

return M
