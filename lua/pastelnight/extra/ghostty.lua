local util = require("pastelnight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local theme = util.template(
    [[
palette = 0=${black}
palette = 1=${red}
palette = 2=${green}
palette = 3=${yellow}
palette = 4=${blue}
palette = 5=${purple}
palette = 6=${sky}
palette = 7=${base50}
palette = 8=${base200}
palette = 9=${red}
palette = 10=${green}
palette = 11=${yellow}
palette = 12=${blue}
palette = 13=${purple}
palette = 14=${sky}
palette = 15=${fg}

background = ${bg}
foreground = ${fg}
cursor-color = ${fg}
selection-background = ${bg_float}
selection-foreground = ${fg}
]],
    colors
  )
  return theme
end

return M
