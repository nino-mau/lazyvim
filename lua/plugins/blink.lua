return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      ghost_text = {
        enabled = false,
      },
    },
    signature = { enabled = true },
    keymap = {
      ["<Tab>"] = { "select_next", "accept", "fallback" },
      ["<S-Tab>"] = { "select_prev", "accept", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
