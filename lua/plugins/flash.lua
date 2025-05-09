return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      -- turn off the Visual-mode 'S' mapping
      keymaps = {
        -- disable 'S' in visual and select modes
        { "S", mode = { "v", "x" }, false },
      },
    },
  },
}
