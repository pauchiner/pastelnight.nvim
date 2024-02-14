local M = {}

---@class Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: Highlights, colors: ColorScheme)
local defaults = {
  --- The theme comes in two styles, `default` and `highContrast`.
  style = 'default',

  --- Enable this to disable setting the background color
  transparent = false,

  --- Configure the colors used when opening a `:terminal` in Neovim
  terminal_colors = true,

  --- Style to be applied to different syntax groups
  --- Value is any valid attr-list value for `:help nvim_set_hl`
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},

    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = 'normal',
    floats = 'dark',
  },

  --- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  sidebars = { 'qf', 'help' },

  --- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  hide_inactive_statusline = false,

  --- Dims inactive windows.
  dim_inactive = false,

  --- When `true`, section headers in the lualine theme will be bold.
  lualine_bold = false,

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  ---@diagnostic disable-next-line: unused-local
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  ---@diagnostic disable-next-line: unused-local
  on_highlights = function(highlights, colors) end,

  use_background = true,
}

---@type Config
---@diagnostic disable-next-line: missing-fields
M.options = {}

---@param options Config|nil
function M.setup(options)
  M.options = vim.tbl_deep_extend('force', {}, defaults, options or {})
end

---@param options Config|nil
function M.extend(options)
  M.options = vim.tbl_deep_extend('force', {}, M.options or defaults, options or {})
end

M.setup()

return M
