local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      footColors[k] = v:gsub('^#', '')
    end
  end

  local foot = util.template(
    [[
[cursor]
color=${fg} ${base400}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${fg}
selection-background=${base400}
urls=${green100}

regular0=${black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${purple}
regular6=${sky}
regular7=${base50}

bright0=${base200}
bright1=${red}
bright2=${green}
bright3=${yellow}
bright4=${blue}
bright5=${purple}
bright6=${sky}
bright7=${fg}

16=${orange}
17=${red100}]],
    footColors
  )

  return foot
end

return M
