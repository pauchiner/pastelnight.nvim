local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
#!/usr/bin/env bash

# PastelNight colors for Tmux

set -g mode-style "fg=${blue},bg=${base50}"

set -g message-style "fg=${blue},bg=${base50}"
set -g message-command-style "fg=${blue},bg=${base50}"

set -g pane-border-style "fg=${base50}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${blue},bg=${bg_statusline}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${black},bg=${blue},bold] #S #[fg=${blue},bg=${bg_statusline},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg_statusline}] #{prefix_highlight} #[fg=${base50},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base100}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${base100},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg_statusline}] #{prefix_highlight} #[fg=${base50},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base100}] %Y-%m-%d  %H:%M #[fg=${blue},bg=${base100},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=${fg},bg=${bg_statusline}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${fg},bg=${bg_statusline}"
setw -g window-status-format "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg_statusline},bg=${base50},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base100},bold] #I  #W #F #[fg=${base100},bg=${bg_statusline},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=${yellow}]#[bg=${bg_statusline}]#[fg=${bg_statusline}]#[bg=${yellow}]"
set -g @prefix_highlight_output_suffix ""
]],
    colors
  )
  return tmux
end

return M
