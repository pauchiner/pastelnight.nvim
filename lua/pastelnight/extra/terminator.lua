local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${black}:${red}:${green}:${yellow}:${blue}:${purple}:${sky}:${base50}:${base900}:${red}:${green}:${yellow}:${blue}:${purple}:${sky}:${purple}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
