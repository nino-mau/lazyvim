-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_mini_snippets_in_completion = true

vim.g.lazyvim_eslint_auto_format = true

--
-- WORD WRAP
--
vim.opt.wrap = false -- Visually wrap long lines
vim.opt.linebreak = true -- Break at word boundaries
vim.opt.breakindent = true -- Keep wrapped lines visually indented
vim.opt.textwidth = 80 -- Hard-wrap lines at 80 chars
vim.opt.formatoptions:append("t") -- Enable auto-wrap when typing

-- in your LazyVim overrides (e.g. `lua/config/options.lua`)
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "javascript", "lua", "python", "rust" },
--   callback = function()
--     vim.opt.conceallevel = 0
--   end,
-- })
