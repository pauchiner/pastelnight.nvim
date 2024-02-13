local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${base400}"
selection_fg = "${fg}"

ansi = ["${black}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${sky}", "${base50}"]
brights = ["${base200}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${sky}", "${fg}"]

[colors.tab_bar]
inactive_tab_edge = "${base600}"
background = "#191b28"

[colors.tab_bar.active_tab]
fg_color = "${blue}"
bg_color = "${bg}"

[colors.tab_bar.inactive_tab]
bg_color = "${base600}"
fg_color = "${base100}"

[colors.tab_bar.inactive_tab_hover]
bg_color = "${base600}"
fg_color = "${blue}"

[colors.tab_bar.new_tab_hover]
bg_color = "${base600}"
bg_color = "${blue}"

[colors.tab_bar.new_tab]
fg_color = "${blue}"
bg_color = "#191b28"

[metadata]
aliases = []
author = "pauchiner"
name = "${_style_name}"]],
    colors
  )
  return wezterm
end

return M
