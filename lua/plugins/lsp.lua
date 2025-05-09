return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["stylelint_lsp"] = {
          filetypes = { "css", "scss", "vue", "less", "sass" },
          settings = {
            stylelintplus = {
              autoFixOnSave = true,
              autoFixOnFormat = true,
            },
          },
        },
      },
    },
  },
}
