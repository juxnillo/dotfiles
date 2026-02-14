-- ~/.config/nvim/colors/mytheme.lua
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "tokyonight_kde"

local set = vim.api.nvim_set_hl

-- Paleta basada en tu esquema KDE
local colors = {
  bg        = "#1a1b26",
  bg_alt    = "#1e1f2e",
  bg_focus  = "#3b3d57",
  fg        = "#c0caf5",
  fg_inactive = "#888fb5",
  accent    = "#bb9af7",
  link      = "#bb9af7",
  visited   = "#9d7cd8",
  selection = "#3b3d57",
}

-- Asignaciones principales
set(0, "Normal",        { fg = colors.fg, bg = colors.bg })
set(0, "NormalNC",      { fg = colors.fg_inactive, bg = colors.bg })
set(0, "Comment",       { fg = colors.fg_inactive, italic = true })
set(0, "String",        { fg = colors.visited })
set(0, "Keyword",       { fg = colors.accent, bold = true })
set(0, "Function",      { fg = colors.link })
set(0, "Type",          { fg = colors.visited })
set(0, "Number",        { fg = colors.accent })
set(0, "Boolean",       { fg = colors.accent })
set(0, "Identifier",    { fg = colors.fg })
set(0, "Statement",     { fg = colors.accent, bold = true })
set(0, "CursorLine",    { bg = colors.bg_focus })
set(0, "CursorLineNr",  { fg = colors.accent, bold = true })
set(0, "LineNr",        { fg = colors.fg_inactive })
set(0, "Visual",        { bg = colors.selection })
set(0, "Search",        { fg = colors.bg, bg = colors.accent, bold = true })
set(0, "IncSearch",     { fg = colors.bg, bg = colors.visited, bold = true })
set(0, "StatusLine",    { fg = colors.fg, bg = colors.bg_focus })
set(0, "StatusLineNC",  { fg = colors.fg_inactive, bg = colors.bg })
set(0, "VertSplit",     { fg = colors.bg_focus })
set(0, "Pmenu",         { fg = colors.fg, bg = colors.bg_alt })
set(0, "PmenuSel",      { fg = colors.bg, bg = colors.accent, bold = true })
set(0, "Error",         { fg = "#f7768e", bold = true })
set(0, "Todo",          { fg = colors.link, bold = true })
