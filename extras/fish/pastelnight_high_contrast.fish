    # PastelNight Color Palette
    set -l foreground f9fbff
    set -l selection 3b3d4d
    set -l comment 636572
    set -l red fe4c4c
    set -l orange fe854c
    set -l yellow ffc965
    set -l green 65ff91
    set -l purple b58cd8
    set -l sky 7fe7ff
    set -l pink ff99e0

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $sky
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $comment

    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $sky
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    set -g fish_pager_color_selected_background --background=$selection
  