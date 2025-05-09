return {
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,
  },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
}
