return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      jsonc = { "prettier" },
      html = { "djlint" },
      htmldjango = { "djlint" },
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
