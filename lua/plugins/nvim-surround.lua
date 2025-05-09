return {
  "kylechui/nvim-surround",
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  opts = {
    keymaps = {
      visual = "S", -- surround selection in Visual mode
      visual_line = "gS", -- surround selection in Visual-Line mode
      add = "ys", -- as usual in Normal mode
      delete = "ds",
      change = "cs",
    },
  },
  config = function()
    require("nvim-surround").setup({})
  end,
}
