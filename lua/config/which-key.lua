local wk = require("which-key")

-- Configure which-key groups
wk.add({
  { "<leader>ac", icon = {
    color = "orange",
    icon = " ",
  } },

  --
  -- Multi cursor plugins keymaps
  --
  {
    "<leader>n",
    desc = "Add cursor below",
    icon = {
      color = "purple",
      icon = "",
    },
  },
  {
    "<leader>N",
    desc = "Add cursor above",
    icon = {
      color = "purple",
      icon = "",
    },
  },
  {
    "<leader>t",
    desc = "Skip cursor below",
    icon = {
      color = "purple",
      icon = "",
    },
  },
  {
    "<leader>S",
    desc = "Skip cursor above",
    icon = {
      color = "purple",
      icon = "",
    },
  },
})
