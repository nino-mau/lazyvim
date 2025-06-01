return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["stylelint_lsp"] = {
          filetypes = { "css", "vue", "scss", "less", "sass" },
          settings = {
            stylelintplus = {
              autoFixOnSave = true,
              autoFixOnFormat = true,
            },
          },
        },
        ["cssls"] = {
          settings = {
            css = {
              lint = {
                unknownAtRules = "ignore",
              },
            },
          },
        },
        ["tailwindcss"] = {
          filetypes = { "css", "vue", "html" },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = { "Styles\\s*(?::\\s*[^=]+)?\\s*=\\s*([^;]*);", "['\"`]([^'\"`]*)['\"`]" },
              },
            },
          },
        },
      },
    },
  },
}
