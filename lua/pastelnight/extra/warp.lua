local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local warpColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      warpColors[k] = v:gsub('^#', '0x')
    end
  end

  local warp = util.template(
    [[
accent: '${purple}'
background: '${bg}'
details: darker
foreground: '${fg}'
terminal_colors:
  bright:
    black: '${base900}'
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
    warpColors
  )

  return warp
end

return M
