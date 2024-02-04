local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local dunst = util.template(
    [[
# PastelNight colors for dunst
# For more configuraion options see https://github.com/dunst-project/dunst/blob/master/dunstrc

[urgency_low]
    background = "${base600}"
    foreground = "${fg}"
    frame_color = "${green100}"

[urgency_normal]
    background = "${bg}"
    foreground = "${fg}"
    frame_color = "${yellow100}"

[urgency_critical]
    background = "${base500}"
    foreground = "${error}"
    frame_color = "${red100}"
]],
    colors
  )
  return dunst
end

return M
