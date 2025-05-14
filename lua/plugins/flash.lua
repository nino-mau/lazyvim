return {
  {
    "folke/flash.nvim",
    enabled = false,
    opts = {
      -- turn off the Visual-mode 'S' mapping
      keymaps = {
        -- disable 'S' in visual and select modes
        { "S", mode = { "v", "x", "n" }, false },
        { "s", mode = { "n", "x", "o" }, false, desc = "Flash" },
        { "S", mode = { "n", "x", "o" }, false, desc = "Flash Treesitter" },
      },
    },
  },
}
