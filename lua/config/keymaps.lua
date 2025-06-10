-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local ls = require("luasnip")

-- In normal mode, <C-c> will select all lines and yank into the system clipboard:
map("n", "<C-c>", ":%y<CR>", { noremap = true, silent = true, desc = "Copy entire buffer to system clipboard" })

-- Tab to go to next buffer
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Shift-Tab to go to previous buffer
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Remap luansip key to jump between snippets node
vim.keymap.set({ "i", "s" }, "<C-D>", function()
  ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-G>", function()
  ls.jump(-1)
end, { silent = true })
