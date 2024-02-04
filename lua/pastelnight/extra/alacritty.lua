local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      alacrittyColors[k] = v:gsub('^#', '0x')
    end
  end

  local alacritty = util.template(
    [[
# PastelNight Alacritty Colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'

  # Normal colors
  normal:
    black:   '${base900}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${purple}'
    cyan:    '${sky}'
    white:   '${base50}'

  # Bright colors
  bright:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${fg}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${red100}' }
    
  ]],
    alacrittyColors
  )

  return alacritty
end

return M
