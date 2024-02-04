#!/usr/bin/env bash

# PastelNight colors for Tmux

set -g mode-style "fg=#7fa7ff,bg=${fg_gutter}"

set -g message-style "fg=#7fa7ff,bg=${fg_gutter}"
set -g message-command-style "fg=#7fa7ff,bg=${fg_gutter}"

set -g pane-border-style "fg=${fg_gutter}"
set -g pane-active-border-style "fg=#7fa7ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7fa7ff,bg=#292b3c"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#212230,bg=#7fa7ff,bold] #S #[fg=#7fa7ff,bg=#292b3c,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#292b3c] #{prefix_highlight} #[fg=${fg_gutter},bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=#7fa7ff,bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=#212230,bg=#7fa7ff,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#292b3c] #{prefix_highlight} #[fg=${fg_gutter},bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=${fg_gutter}] %Y-%m-%d  %H:%M #[fg=#7fa7ff,bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=#212230,bg=#7fa7ff,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=${fg_sidebar},bg=#292b3c"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=${fg_sidebar},bg=#292b3c"
setw -g window-status-format "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#292b3c,bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=#292b3c,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ffc965]#[bg=#292b3c]#[fg=#292b3c]#[bg=#ffc965]"
set -g @prefix_highlight_output_suffix ""
