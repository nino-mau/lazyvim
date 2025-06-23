-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local ls = require("luasnip")
local supermavenSuggestion = require("supermaven-nvim.completion_preview")

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

-- Keybind to activate/deactivate supermaven auto completion
vim.keymap.set("n", "<leader>ac", function()
  if supermavenSuggestion.disable_inline_completion then
    supermavenSuggestion.disable_inline_completion = false
    print("Inline AI autocompletion ENABLED")
  else
    supermavenSuggestion.disable_inline_completion = true
    print("Inline AI autocompletion DISABLED")
  end
end, { desc = "[T]oggle [I]nline [A]I autocompletion" })

vim.keymap.set("i", "<C-c>", function()
  if supermavenSuggestion.disable_inline_completion then
    supermavenSuggestion.disable_inline_completion = false
    print("Inline AI autocompletion ENABLED")
  else
    supermavenSuggestion.disable_inline_completion = true
    print("Inline AI autocompletion DISABLED")
  end
end, { desc = "[T]oggle [I]nline [A]I autocompletion" })
