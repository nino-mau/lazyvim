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
      -- Load custom snippets
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/lazyvim/snippets/" })
    end,
    opts = function()
      local ls = require("luasnip")
      -- load VSCode-style snippets from friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      return ls
    end,
  },
}
