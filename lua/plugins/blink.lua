return {
  "saghen/blink.cmp",
  opts = {
    signature = { enabled = true },
    keymap = {
      ["<Tab>"] = { "select_next", "accept", "fallback" },
      ["<S-Tab>"] = { "select_prev", "accept", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        treesitter_highlighting = true,
        window = {
          border = "rounded",
          scrollbar = true,
        },
      },
      ghost_text = {
        enabled = false,
      },
      menu = {
        scrollbar = false,
        winhighlight = "Normal:CmpPmenu,Search:None,FloatBorder:CmpBorder",
        border = "single",
        draw = {
          components = {
            kind_icon = {
              ellipsis = false,
              text = function(ctx)
                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                return kind_icon
              end,
            },
          },
        },
      },
    },
  },
}
