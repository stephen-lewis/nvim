-- Because I'm lazy...
local wo = vim.wo
local o = vim.o
local opt = vim.opt
local g = vim.g

-- Providers
g.loaded_perl_provider = 0 -- I don't use perl

-- Leaders
g.mapleader = " "
g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<nop>", { silent = true })
-- only keymap here to avoid any issues with mapleader

-- Global options
g.have_nerd_font = true -- I have a nerd font
--g.editorconfig = true         -- ALWAYS use a .editorconfig file
-- (this is on by default)

-- Appearance
o.termguicolors = true -- true colour please
wo.nu = true -- line numbers
-- o.rnu = true            -- relative line numbers
o.colorcolumn = "80" -- long lines guide (without wrapping)
o.cursorline = true -- highlight cursor line

-- Default Formatting
o.fenc = "utf-8" -- It's after 2010...
o.fileformat = "unix" -- unix, baby
o.fixeol = true -- Final newline please
o.eol = true -- as above
o.tabstop = 4 -- tabs are 4 spaces
o.softtabstop = 4 -- as above
o.shiftwidth = 4 -- indents are 4 spaces
o.expandtab = true -- I don't like tabs
o.wrap = false -- I can wrap lines myself
o.linebreak = true
o.smartindent = true -- lazy indenting

-- Find/Replace
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true

-- Clipboard
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Misc
o.swapfile = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.backup = false
