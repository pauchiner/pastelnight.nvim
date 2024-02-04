local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${black}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${purple}",
        "${sky}",
        "${base50}",
        "${base900}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${purple}",
        "${sky}",
        "${fg}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
