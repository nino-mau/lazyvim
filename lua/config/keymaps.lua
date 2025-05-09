-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- In normal mode, <C-c> will select all lines and yank into the system clipboard:
map("n", "<C-c>", 'ggVG"+y', { desc = "Copy entire buffer to system clipboard" })
