local g = vim.g
local opt = vim.opt


g.mapleader = ' '

-- Netrw file explorer
g.netrw_banner = 0
g.netrw_keepdir = 0
g.netrw_localcopydircmd = 'cp -r'
g.netrw_preview = 1
g.netrw_winsize = 70


-- Indent
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.softtabstop = 2
opt.tabstop = 2

-- Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.ruler = false

-- UI
opt.cursorcolumn = true
opt.cursorline = true
opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true

