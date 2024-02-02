local util = require("pastelnight.util")
local hslutil = require("pastelnight.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(234, 24, 8),
  base03 = hsl(235, 21, 11),
  base02 = hsl(232, 21, 14),
  base01 = hsl(233, 20, 17),
  base00 = hsl(234, 18, 20),
  base0 = hsl(233, 13, 27),
  base1 = hsl(232, 7, 42),
  base2 = hsl(235, 6, 58),
  base3 = hsl(231, 5, 74),
  base4 = hsl(220, 7, 91),

  yellow = hsl(39, 100, 70),

  yellow100 = hsl(39, 100, 86),
  yellow300 = hsl(39, 100, 80),
  yellow500 = hsl(39, 100, 70),
  yellow700 = hsl(39, 67, 61),
  yellow900 = hsl(39, 47, 52),

  orange = hsl(19, 100, 65),

  orange100 = hsl(19, 100, 86),
  orange300 = hsl(19, 100, 76),
  orange500 = hsl(19, 100, 65),
  orange700 = hsl(19, 70, 56),
  orange900 = hsl(19, 55, 48),

  red = hsl(0, 100, 65),

  red100 = hsl(0, 100, 86),
  red300 = hsl(0, 100, 76),
  red500 = hsl(0, 100, 65),
  red700 = hsl(0, 70, 56),
  red900 = hsl(0, 55, 48),

  magenta = hsl(318, 100, 80),

  magenta100 = hsl(318, 100, 92),
  magenta300 = hsl(318, 100, 86),
  magenta500 = hsl(318, 100, 80),
  magenta700 = hsl(318, 58, 69),
  magenta900 = hsl(318, 38, 59),

  violet = hsl(272, 50, 70),

  violet100 = hsl(272, 53, 88),
  violet300 = hsl(272, 51, 79),
  violet500 = hsl(272, 50, 70),
  violet700 = hsl(272, 33, 61),
  violet900 = hsl(272, 24, 52),

  blue = hsl(221, 100, 75),

  blue100 = hsl(221, 100, 90),
  blue300 = hsl(221, 100, 83),
  blue500 = hsl(221, 100, 75),
  blue700 = hsl(221, 63, 65),
  blue900 = hsl(221, 42, 56),

  cyan = hsl(191, 100, 75),

  cyan100 = hsl(191, 100, 91),
  cyan300 = hsl(191, 100, 84),
  cyan500 = hsl(191, 100, 75),
  cyan700 = hsl(191, 63, 65),
  cyan900 = hsl(191, 43, 55),

  green = hsl(137, 100, 70),

  green100 = hsl(137, 100, 90),
  green300 = hsl(137, 100, 81),
  green500 = hsl(137, 100, 70),
  green700 = hsl(137, 67, 61),
  green900 = hsl(137, 47, 52),

  bg = hsl(233, 13, 27),
  bg_highlight = hsl(232, 7, 42),
  fg = hsl(220, 7, 91),
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("pastelnight.config")

  -- local style = config.is_day() and config.options.light_style or config.options.style
  local style = "default"
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.base04
  colors.bg_statusline = colors.bg

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.base04
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.base04
    or colors.bg

  -- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red500
  colors.warning = colors.yellow500
  colors.info = colors.blue500
  colors.hint = colors.cyan500

  return colors
end

return M
