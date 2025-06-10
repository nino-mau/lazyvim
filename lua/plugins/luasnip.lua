-- add nvim-luasnip
return {
  {
    "L3MON4D3/LuaSnip",
    version = "*", -- or a specific tag/commit
    event = "InsertEnter", -- lazy-load on insert
    dependencies = {
      "rafamadriz/friendly-snippets", -- optional collection
    },
    config = function()
      local ls = require("luasnip")

      vim.keymap.set({ "i", "s" }, "<C-P>", function()
        if ls.expand_or_locally_jumpable() then
          ls.expand_or_jump()
        end
      end, { desc = "Expand or jump forward in lua-snippet", silent = true })

      vim.keymap.set({ "i", "s" }, "<C-J>", function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { desc = "Jump backward in lua-snippet", silent = true })

      -- Load custom snippets
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/lazyvim/snippets/" })
    end,
    opts = function()
      local ls = require("luasnip")
      -- load VSCode-style snippets from friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/lazyvim/snippets/vscode/" })
      return ls
    end,
  },
}
