local util = require('pastelnight.util')

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name=PastelNight Colors
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${base400}
ColorSelection=${fg}

ColorPalette=${black};${red};${green};${yellow};${blue};${purple};${sky};${base50};${base900};${red};${green};${yellow};${blue};${purple};${sky};${fg}
]],
    colors
  )
  return xfceterm
end

return M
