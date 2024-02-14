    # PastelNight Color Palette
    set -l foreground f9fbff
    set -l selection 4b4c58
    set -l comment 6a6c7a
    set -l red ff3d3d
    set -l orange ff7a3d
    set -l yellow fec456
    set -l green 56fe86
    set -l purple ad80d4
    set -l sky 70e4ff
    set -l pink ff89db

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
  