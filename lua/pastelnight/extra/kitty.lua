local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
# vim:ft=kitty

## name: ${_style_name}
## license: MIT
## author: Pau García Chiner
## upstream: ${_upstream_url}


background ${bg}
foreground ${fg}
selection_background ${base400}
selection_foreground ${fg}
url_color ${green100}
cursor ${purple100}
cursor_text_color ${bg}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${base600}
inactive_tab_background ${base400}
inactive_tab_foreground ${base50}
#tab_bar_background ${bg}

# Windows
active_border_color ${blue}
inactive_border_color ${base400}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${purple}
color6 ${sky}
color7 ${base50}

# bright
color8 ${base200}
color9 ${red}
color10 ${green}
color11 ${yellow}
color12 ${blue}
color13 ${purple}
color14 ${sky}
color15 ${fg}

# extended colors
color16 ${orange}
color17 ${red100}
]],
    colors
  )
  return kitty
end

return M
