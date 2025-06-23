return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      -- Disable inline completion by default, can be enabled with key combination
      disable_inline_completion = true,
      disable_keymaps = true,
      disable_cmp_source = true,
    })
  end,
}
