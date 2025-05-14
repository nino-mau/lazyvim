return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Tab>"] = { "select_next", "accept", "fallback" },
      ["<S-Tab>"] = { "select_prev", "accept", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
