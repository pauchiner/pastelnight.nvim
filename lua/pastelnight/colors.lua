local util = require('pastelnight.util')
local hslutil = require('pastelnight.hsl')
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = 'NONE',

  base = hsl(220, 100, 99),
  base50 = hsl(220, 007, 91),
  base100 = hsl(231, 005, 74),
  base200 = hsl(235, 006, 58),
  base300 = hsl(232, 007, 42),
  base400 = hsl(233, 013, 27),
  base500 = hsl(234, 018, 20),
  base600 = hsl(233, 020, 17),
  base700 = hsl(232, 021, 14),
  base800 = hsl(235, 021, 11),
  base900 = hsl(234, 024, 08),

  yellow50 = hsl(039, 100, 86),
  yellow100 = hsl(039, 100, 80),
  yellow200 = hsl(039, 100, 70),
  yellow300 = hsl(039, 067, 61),
  yellow400 = hsl(039, 047, 52),

  orange50 = hsl(019, 100, 86),
  orange100 = hsl(019, 100, 76),
  orange200 = hsl(019, 100, 65),
  orange300 = hsl(019, 070, 56),
  orange400 = hsl(019, 055, 48),

  red50 = hsl(000, 100, 86),
  red100 = hsl(000, 100, 76),
  red200 = hsl(000, 100, 65),
  red300 = hsl(000, 070, 56),
  red400 = hsl(000, 055, 48),

  pink50 = hsl(318, 100, 92),
  pink100 = hsl(318, 100, 86),
  pink200 = hsl(318, 100, 80),
  pink300 = hsl(318, 058, 69),
  pink400 = hsl(318, 038, 59),

  purple50 = hsl(272, 053, 88),
  purple100 = hsl(272, 051, 79),
  purple200 = hsl(272, 050, 70),
  purple300 = hsl(272, 033, 61),
  purple400 = hsl(272, 024, 52),

  blue50 = hsl(221, 100, 90),
  blue100 = hsl(221, 100, 83),
  blue200 = hsl(221, 100, 75),
  blue300 = hsl(221, 063, 65),
  blue400 = hsl(221, 042, 56),

  sky50 = hsl(191, 100, 91),
  sky100 = hsl(191, 100, 84),
  sky200 = hsl(191, 100, 75),
  sky300 = hsl(191, 063, 65),
  sky400 = hsl(191, 043, 55),

  green50 = hsl(137, 100, 90),
  green100 = hsl(137, 100, 81),
  green200 = hsl(137, 100, 70),
  green300 = hsl(137, 067, 61),
  green400 = hsl(137, 047, 52),
}

---@return ColorScheme
function M.setup(opts)
  local config = require('pastelnight.config')
  opts = opts or {}

  local palette = M['default'] or {}
  if type(palette) == 'function' then
    palette = palette()
  end

  --- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend('force', vim.deepcopy(M.default), palette)

  --- Base definition
  colors.yellow = colors.yellow200
  colors.orange = colors.orange200
  colors.purple = colors.purple200
  colors.green = colors.green200
  colors.blue = colors.blue200
  colors.pink = colors.pink200
  colors.red = colors.red200
  colors.sky = colors.sky200
  colors.bg = colors.base500
  colors.fg = colors.base

  util.bg = colors.bg

  colors.black = util.darken(colors.bg, 0.8, '#000000')
  colors.border = colors.black

  colors.bg_popup = colors.bg
  colors.bg_statusline = colors.bg

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == 'transparent' and colors.none
    or config.options.styles.sidebars == 'dark' and colors.base600
    or colors.bg

  colors.bg_float = config.options.styles.floats == 'transparent' and colors.none
    or config.options.styles.floats == 'dark' and colors.base600
    or colors.bg

  colors.fg_float = colors.fg

  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.sky

  return colors
end

return M
