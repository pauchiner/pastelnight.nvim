local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local warp = util.template(
    [[
accent: '${purple}'
background: '${bg}'
details: darker
foreground: '${fg}'
terminal_colors:
  bright:
    black: '${base200}'
    blue: '${blue}'
    cyan: '${sky}'
    green: '${green}'
    magenta: '${purple}'
    red: '${red}'
    white: '${base50}'
    yellow: '${yellow}'
  normal:
    black: '${black}'
    blue: '${blue}'
    cyan: '${sky}'
    green: '${green}'
    magenta: '${purple}'
    red: '${red}'
    white: '${fg}'
    yellow: '${yellow}'
  ]],
    colors
  )

  return warp
end

return M
