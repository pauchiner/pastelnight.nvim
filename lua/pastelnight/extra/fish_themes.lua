local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      fishColors[k] = v:gsub('^#', '')
    end
  end

  local fish = util.template(
    [[
    # PastelNight

    # Syntax Highlighting Colors
    fish_color_normal ${fg}
    fish_color_command ${sky}
    fish_color_keyword ${pink}
    fish_color_quote ${yellow}
    fish_color_redirection ${fg}
    fish_color_end ${orange}
    fish_color_error ${red}
    fish_color_param ${purple}
    fish_color_comment ${base300}
    fish_color_selection --background=${base400}
    fish_color_search_match --background=${base400}
    fish_color_operator ${green}
    fish_color_escape ${pink}
    fish_color_autosuggestion ${base300}

    # Completion Pager Colors
    fish_pager_color_progress ${base300}
    fish_pager_color_prefix ${sky}
    fish_pager_color_completion ${fg}
    fish_pager_color_description ${base300}
    fish_pager_color_selected_background --background=${base400}
  ]],
    fishColors
  )

  return fish
end

return M
