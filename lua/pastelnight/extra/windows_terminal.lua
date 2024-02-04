local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${base900}",
    "brightBlue": "${blue}",
    "brightCyan": "${sky}",
    "brightGreen": "${green}",
    "brightPurple": "${purple}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan": "${sky}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "${_style_name}",
    "purple": "${purple}",
    "red": "${red}",
    "selectionBackground": "${base400}",
    "white": "${fg_dark}",
    "yellow": "${yellow}"
}
]],
    colors
  )

  return windows_terminal
end

return M
