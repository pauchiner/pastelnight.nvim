local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = util.template(
    [[
! PastelNight colors for Xresources

*background: ${bg}
*foreground: ${fg}

*color0: ${black}
*color1: ${red}
*color2: ${green}
*color3: ${yellow}
*color4: ${blue}
*color5: ${purple}
*color6: ${sky}
*color7: ${base50}

*color8: ${base200}
*color9: ${red}
*color10: ${green}
*color11: ${yellow}
*color12: ${blue}
*color13: ${purple}
*color14: ${sky}
*color15: ${fg}
 
]],
    colors
  )
  return xr
end

return M
