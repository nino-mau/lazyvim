-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local ls = require("luasnip")
local supermavenSuggestion = require("supermaven-nvim.completion_preview")

--
-- Various utilities keybindings
--

-- In normal mode, <C-c> will select all lines and yank into the system clipboard:
map("n", "<C-c>", ":%y<CR>", { noremap = true, silent = true, desc = "Copy entire buffer to system clipboard" })

-- Tab to go to next buffer
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Shift-Tab to go to previous buffer
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Delete word under cursor
map("n", "<C-BS>", "<C-\\><C-O>daw", { desc = "Delete word" })

-- Copy word under cursor
map("n", "yw", "yiw", { desc = "Copy word under cursor" })

-- Del word under cursor
map("n", "<C-x>", "diw", { desc = "Delete word under cursor" })

-- Edit word under cursor
map("n", "cw", "ciw", { desc = "Edit word under cursor" })

--
-- Various plugins related keybindings
--

-- Keybind to trigger inc rename
map("n", "<leader>rn", ":IncRename ")

-- Remap luansip key to jump between snippets node
map({ "i", "s" }, "<C-D>", function()
  ls.jump(1)
end, { silent = true })
map({ "i", "s" }, "<C-G>", function()
  ls.jump(-1)
end, { silent = true })

-- Keybind to activate/deactivate supermaven auto completion
map("n", "<leader>ac", function()
  if supermavenSuggestion.disable_inline_completion then
    supermavenSuggestion.disable_inline_completion = false
    print("Inline AI autocompletion ENABLED")
  else
    supermavenSuggestion.disable_inline_completion = true
    print("Inline AI autocompletion DISABLED")
  end
end, { desc = "Toggle inline completion" })

map("i", "<C-c>", function()
  if supermavenSuggestion.disable_inline_completion then
    supermavenSuggestion.disable_inline_completion = false
    print("Inline AI autocompletion ENABLED")
  else
    supermavenSuggestion.disable_inline_completion = true
    print("Inline AI autocompletion DISABLED")
  end
end, { desc = "Toggle inline completion" })

-- Bootstrap classes picker
-- Bootstrap classes picker
map("n", "<leader>fb", function()
  local function get_bootstrap_classes()
    local bootstrap_classes = {
      -- Layout
      { text = "container", category = "Layout", description = "Fixed-width container" },
      { text = "container-fluid", category = "Layout", description = "Full-width container" },
      { text = "row", category = "Layout", description = "Grid row" },
      { text = "col", category = "Layout", description = "Grid column" },
      { text = "col-12", category = "Layout", description = "Full width column" },
      { text = "col-md-6", category = "Layout", description = "Half width on medium screens" },

      -- Display
      { text = "d-none", category = "Display", description = "Hide element" },
      { text = "d-block", category = "Display", description = "Display as block" },
      { text = "d-flex", category = "Display", description = "Display as flexbox" },
      { text = "d-inline", category = "Display", description = "Display inline" },
      { text = "d-inline-block", category = "Display", description = "Display inline-block" },

      -- Flexbox
      { text = "justify-content-center", category = "Flexbox", description = "Center content horizontally" },
      { text = "justify-content-between", category = "Flexbox", description = "Space between items" },
      { text = "align-items-center", category = "Flexbox", description = "Center items vertically" },
      { text = "flex-column", category = "Flexbox", description = "Flex direction column" },
      { text = "flex-row", category = "Flexbox", description = "Flex direction row" },

      -- Spacing
      { text = "m-0", category = "Spacing", description = "Remove all margins" },
      { text = "p-0", category = "Spacing", description = "Remove all padding" },
      { text = "mt-3", category = "Spacing", description = "Margin top 3" },
      { text = "mb-3", category = "Spacing", description = "Margin bottom 3" },
      { text = "px-4", category = "Spacing", description = "Padding horizontal 4" },
      { text = "py-2", category = "Spacing", description = "Padding vertical 2" },

      -- Colors
      { text = "text-primary", category = "Colors", description = "Primary text color" },
      { text = "text-secondary", category = "Colors", description = "Secondary text color" },
      { text = "bg-primary", category = "Colors", description = "Primary background" },
      { text = "bg-light", category = "Colors", description = "Light background" },
      { text = "bg-dark", category = "Colors", description = "Dark background" },

      -- Components
      { text = "btn", category = "Components", description = "Button base class" },
      { text = "btn-primary", category = "Components", description = "Primary button" },
      { text = "btn-secondary", category = "Components", description = "Secondary button" },
      { text = "card", category = "Components", description = "Card component" },
      { text = "card-body", category = "Components", description = "Card body" },
      { text = "navbar", category = "Components", description = "Navigation bar" },
      { text = "nav-link", category = "Components", description = "Navigation link" },

      -- Typography
      { text = "h1", category = "Typography", description = "Heading 1 styling" },
      { text = "h2", category = "Typography", description = "Heading 2 styling" },
      { text = "lead", category = "Typography", description = "Lead paragraph" },
      { text = "text-muted", category = "Typography", description = "Muted text" },
      { text = "fw-bold", category = "Typography", description = "Bold font weight" },
      { text = "text-center", category = "Typography", description = "Center text" },

      -- Utilities
      { text = "w-100", category = "Utilities", description = "Width 100%" },
      { text = "h-100", category = "Utilities", description = "Height 100%" },
      { text = "position-relative", category = "Utilities", description = "Position relative" },
      { text = "position-absolute", category = "Utilities", description = "Position absolute" },
      { text = "rounded", category = "Utilities", description = "Rounded corners" },
      { text = "shadow", category = "Utilities", description = "Box shadow" },
    }

    return bootstrap_classes
  end

  local classes = get_bootstrap_classes()

  require("snacks").picker({
    source = "Bootstrap Classes",
    items = classes,
    format = "text",
    preview = classes[function(item)
      return item.description or "No description available"
    end],
    layout = {
      preset = "vertical",
    },
    confirm = function(picker, item)
      if not item or not item.text then
        return
      end
      picker:close()
      -- Insert the class name at cursor position
      local row, col = unpack(vim.api.nvim_win_get_cursor(0))
      vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { item.text })
      -- Move cursor to end of inserted text
      vim.api.nvim_win_set_cursor(0, { row, col + #item.text })
    end,
  })
end, { desc = "Find Bootstrap classes" })
