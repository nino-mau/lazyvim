local M = { "smartinellimarco/nvcheatsheet.nvim" }

M.opts = {
  -- Default header
  header = {
    "                                      ",
    "                                      ",
    "                                      ",
    "█▀▀ █░█ █▀▀ ▄▀█ ▀█▀ █▀ █░█ █▀▀ █▀▀ ▀█▀",
    "█▄▄ █▀█ ██▄ █▀█ ░█░ ▄█ █▀█ ██▄ ██▄ ░█░",
    "                                      ",
    "                                      ",
    "                                      ",
  },
  -- Example keymaps (this doesn't create any)
  keymaps = {
    ["Display"] = {
      { "d-none", "Hide element (display: none)" },
      { "d-inline", "Inline element" },
      { "d-inline-block", "Inline-block element" },
      { "d-block", "Block element" },
      { "d-grid", "CSS Grid container" },
      { "d-inline-grid", "Inline grid container" },
      { "d-flex", "Flex container" },
      { "d-inline-flex", "Inline flex container" },
      { "d-table", "Table display" },
      { "d-table-row", "Table row display" },
      { "d-table-cell", "Table cell display" },
    },
    ["Flexbox"] = {
      { "flex-row", "Flex direction row" },
      { "flex-column", "Flex direction column" },
      { "flex-row-reverse", "Reverse row" },
      { "flex-column-reverse", "Reverse column" },
      { "justify-content-start", "Align items at start on main axis" },
      { "justify-content-center", "Center items on main axis" },
      { "justify-content-between", "Space between on main axis" },
      { "justify-content-around", "Space around on main axis" },
      { "justify-content-evenly", "Space evenly on main axis" },
      { "align-items-start", "Align items at start on cross axis" },
      { "align-items-center", "Center items on cross axis" },
      { "align-items-end", "Align items at end on cross axis" },
      { "align-self-start", "Self align start" },
      { "align-self-center", "Self align center" },
      { "align-self-end", "Self align end" },
      { "flex-wrap", "Allow wrap" },
      { "flex-nowrap", "No wrap" },
      { "flex-wrap-reverse", "Reverse wrap" },
      { "order-0", "Flex order 0" },
      { "order-1", "Flex order 1" },
      { "order-2", "Flex order 2" },
      { "order-3", "Flex order 3" },
      { "order-first", "Flex first (-1)" },
      { "order-last", "Flex last (6)" },
      { "flex-fill", "Make items fill equally" },
      { "flex-grow-1", "Allow to grow" },
      { "flex-shrink-1", "Allow to shrink" },
      { "flex-grow-0", "Prevent growing" },
      { "flex-shrink-0", "Prevent shrinking" },
    },
    ["Spacing"] = {
      { "m-0", "Margin 0" },
      { "m-1", "Margin spacer * .25" },
      { "m-2", "Margin spacer * .5" },
      { "m-3", "Margin spacer" },
      { "m-4", "Margin spacer * 1.5" },
      { "m-5", "Margin spacer * 3" },
      { "mt-3", "Margin top spacer" },
      { "mb-3", "Margin bottom spacer" },
      { "ms-3", "Margin start spacer" },
      { "me-3", "Margin end spacer" },
      { "mx-auto", "Horizontal auto margins (center block)" },
      { "p-0", "Padding 0" },
      { "p-1", "Padding spacer * .25" },
      { "p-2", "Padding spacer * .5" },
      { "p-3", "Padding spacer" },
      { "px-4", "Horizontal padding * 1.5" },
      { "py-2", "Vertical padding * .5" },
      { "gap-2", "Gap 2 (grid/flex)" },
      { "row-gap-3", "Row gap 3" },
      { "column-gap-3", "Column gap 3" },
    },
    ["Text"] = {
      { "text-start", "Left/start text alignment" },
      { "text-center", "Center text" },
      { "text-end", "Right/end text alignment" },
      { "text-wrap", "Wrap long words" },
      { "text-nowrap", "Prevent wrapping" },
      { "text-break", "Break long words" },
      { "fw-bold", "Bold font weight" },
      { "fw-semibold", "Semibold font weight" },
      { "fst-italic", "Italic font style" },
      { "lh-1", "Line-height 1" },
      { "lh-sm", "Small line-height" },
      { "lh-base", "Base line-height" },
      { "lh-lg", "Large line-height" },
    },
    ["Colors"] = {
      { "text-primary", "Primary text color" },
      { "text-secondary", "Secondary text color" },
      { "text-success", "Success text color" },
      { "text-danger", "Danger text color" },
      { "text-warning", "Warning text color" },
      { "text-info", "Info text color" },
      { "text-light", "Light text color" },
      { "text-dark", "Dark text color" },
      { "text-body", "Body text color" },
      { "text-muted", "Muted text color" },
    },
    ["Background"] = {
      { "bg-primary", "Primary background" },
      { "bg-secondary", "Secondary background" },
      { "bg-success", "Success background" },
      { "bg-danger", "Danger background" },
      { "bg-warning", "Warning background" },
      { "bg-info", "Info background" },
      { "bg-light", "Light background" },
      { "bg-dark", "Dark background" },
      { "bg-transparent", "Transparent background" },
    },
    ["Borders"] = {
      { "border", "Add border" },
      { "border-0", "Remove all borders" },
      { "border-top", "Add top border" },
      { "border-bottom", "Add bottom border" },
      { "border-start", "Add start/left border" },
      { "border-end", "Add end/right border" },
      { "border-primary", "Primary border color" },
      { "border-1", "Border width 1" },
      { "border-2", "Border width 2" },
    },
    ["Radius"] = {
      { "rounded", "Rounded corners" },
      { "rounded-0", "No rounding" },
      { "rounded-1", "Small radius" },
      { "rounded-2", "Medium radius" },
      { "rounded-3", "Large radius" },
      { "rounded-circle", "Full circle radius" },
      { "rounded-pill", "Pill radius" },
    },
    ["Sizing"] = {
      { "w-25", "Width 25%" },
      { "w-50", "Width 50%" },
      { "w-75", "Width 75%" },
      { "w-100", "Width 100%" },
      { "w-auto", "Auto width" },
      { "h-25", "Height 25%" },
      { "h-50", "Height 50%" },
      { "h-75", "Height 75%" },
      { "h-100", "Height 100%" },
      { "h-auto", "Auto height" },
      { "min-vw-100", "Min viewport width 100%" },
      { "min-vh-100", "Min viewport height 100%" },
    },
    ["Position"] = {
      { "position-static", "Static positioning" },
      { "position-relative", "Relative positioning" },
      { "position-absolute", "Absolute positioning" },
      { "position-fixed", "Fixed positioning" },
      { "position-sticky", "Sticky positioning" },
      { "top-0", "Top 0" },
      { "bottom-0", "Bottom 0" },
      { "start-0", "Start/left 0" },
      { "end-0", "End/right 0" },
      { "translate-middle", "Translate -50%/-50%" },
    },
    ["Shadows & Effects"] = {
      { "shadow", "Regular box shadow" },
      { "shadow-sm", "Small shadow" },
      { "shadow-lg", "Large shadow" },
      { "shadow-none", "No shadow" },
      { "opacity-50", "50% opacity" },
      { "opacity-100", "100% opacity" },
      { "overflow-auto", "Add scrollbars as needed" },
      { "overflow-hidden", "Hide overflowing content" },
      { "overflow-visible", "Show overflowing content" },
      { "overflow-scroll", "Always show scrollbars" },
      { "visible", "Visibility: visible" },
      { "invisible", "Visibility: hidden" },
      { "z-3", "z-index 3" },
      { "z-2", "z-index 2" },
      { "z-1", "z-index 1" },
      { "z-0", "z-index 0" },
      { "z-n1", "z-index -1" },
    },
    ["Object Fit"] = {
      { "object-fit-contain", "Contain within content box" },
      { "object-fit-cover", "Cover content box" },
      { "object-fit-fill", "Stretch to fill" },
      { "object-fit-scale", "Scale down" },
      { "object-fit-none", "No resizing" },
    },
    ["Float"] = {
      { "float-start", "Float to start/left" },
      { "float-end", "Float to end/right" },
      { "float-none", "No float" },
      { "clearfix", "Clear floated content (helper)" },
    },
    ["Vertical Align"] = {
      { "align-baseline", "Vertical-align: baseline" },
      { "align-top", "Vertical-align: top" },
      { "align-middle", "Vertical-align: middle" },
      { "align-bottom", "Vertical-align: bottom" },
      { "align-text-bottom", "Vertical-align: text-bottom" },
      { "align-text-top", "Vertical-align: text-top" },
    },
  },
}

function M.config(_, opts)
  local nvcheatsheet = require("nvcheatsheet")

  nvcheatsheet.setup(opts)

  -- You can also close it with <Esc>
  vim.keymap.set("n", "<F1>", nvcheatsheet.toggle)
end

-- Apply the highlight groups required by nvcheatsheet
-- This uses a dark theme-friendly palette by default and re-applies on ColorScheme
local function apply_highlights()
  local hl = vim.api.nvim_set_hl

  -- Base palette (inspired by Catppuccin Macchiato); adjust to your liking
  local palette = {
    bg = "#24273a", -- background
    fg = "#24273a", -- foreground/text
    alt_bg = "#1e2030", -- card/bg blocks

    white = "#ffffff",
    gray = "#6e738d",
    blue = "#8aadf4",
    cyan = "#7dc4e4",
    red = "#ed8796",
    green = "#a6da95",
    yellow = "#eed49f",
    orange = "#f5a97f",
    purple = "#c6a0f6",
    magenta = "#f5bde6",
  }

  -- Header ascii and section background
  hl(0, "NvChAsciiHeader", { bg = palette.bg, fg = palette.blue })
  hl(0, "NvChSection", { bg = palette.alt_bg })

  -- Colored headers used by the plugin (bg/fg are required keys)
  hl(0, "NvCheatsheetWhite", { bg = palette.white, fg = palette.bg })
  hl(0, "NvCheatsheetGray", { bg = palette.gray, fg = palette.fg })
  hl(0, "NvCheatsheetBlue", { bg = palette.blue, fg = palette.bg })
  hl(0, "NvCheatsheetCyan", { bg = palette.cyan, fg = palette.bg })
  hl(0, "NvCheatsheetRed", { bg = palette.red, fg = palette.fg })
  hl(0, "NvCheatsheetGreen", { bg = palette.green, fg = palette.bg })
  hl(0, "NvCheatsheetYellow", { bg = palette.yellow, fg = palette.bg })
  hl(0, "NvCheatsheetOrange", { bg = palette.orange, fg = palette.bg })
  hl(0, "NvCheatsheetPurple", { bg = palette.purple, fg = palette.fg })
  hl(0, "NvCheatsheetMagenta", { bg = palette.magenta, fg = palette.bg })
end

-- Apply once on startup and whenever colorscheme changes
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = vim.api.nvim_create_augroup("nvcheatsheet_hl", { clear = true }),
  callback = apply_highlights,
})

return M

-- vim: ts=2 sts=2 sw=2 et
