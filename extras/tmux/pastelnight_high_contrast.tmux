#!/usr/bin/env bash

# PastelNight colors for Tmux

set -g mode-style "fg=#7fa7ff,bg=#e6e7e9"

set -g message-style "fg=#7fa7ff,bg=#e6e7e9"
set -g message-command-style "fg=#7fa7ff,bg=#e6e7e9"

set -g pane-border-style "fg=#e6e7e9"
set -g pane-active-border-style "fg=#7fa7ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7fa7ff,bg=#292b3c"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#212230,bg=#7fa7ff,bold] #S #[fg=#7fa7ff,bg=#292b3c,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#292b3c] #{prefix_highlight} #[fg=#e6e7e9,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#b9bac0] %Y-%m-%d  %I:%M %p #[fg=#7fa7ff,bg=#b9bac0,nobold,nounderscore,noitalics]#[fg=#212230,bg=#7fa7ff,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#292b3c] #{prefix_highlight} #[fg=#e6e7e9,bg=#292b3c,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#b9bac0] %Y-%m-%d  %H:%M #[fg=#7fa7ff,bg=#b9bac0,nobold,nounderscore,noitalics]#[fg=#212230,bg=#7fa7ff,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#f9fbff,bg=#292b3c"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#f9fbff,bg=#292b3c"
setw -g window-status-format "#[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#292b3c,bg=#292b3c,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#292b3c,bg=#e6e7e9,nobold,nounderscore,noitalics]#[fg=#7fa7ff,bg=#b9bac0,bold] #I  #W #F #[fg=#b9bac0,bg=#292b3c,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ffc965]#[bg=#292b3c]#[fg=#292b3c]#[bg=#ffc965]"
set -g @prefix_highlight_output_suffix ""
