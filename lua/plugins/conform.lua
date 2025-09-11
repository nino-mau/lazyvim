return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      jsonc = { "prettier" },
      json = { "prettier" },
      svg = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = {
          "--trailing-comma",
          "none",
          "--tab-width",
          "2",
          "--single-quote",
          "true",
        },
      },
    },
  },
}
