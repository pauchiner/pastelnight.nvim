<div align="center" >
    <img src=".github/images/logo.png" alt="pastelnight logo" width="100", height="100">
</div>
<h1 align="center">PastelNight</h1>
    
<!-- panvimdoc-ignore-start -->
<h4 align="center">
  <a href="#%EF%B8%8F-installation">  ⚡️ Quick Start  </a>
  ·
  <a href="#%EF%B8%8F--configuration"> 🍬 Extras </a>
  ·
  <a href="#%EF%B8%8F--configuration"> ⚙️ Configuration </a>
</h4>

<p align="center">
A <a target="_blank" href="https://neovim.io/">Neovim</a> theme inspired on the original <a href="https://github.com/whizkydee/vscode-palenight-theme">Palenight</a> theme, fully written in <a href="https://www.lua.org/">Lua</a>.
</p>

<p align="center">
Includes themes for <a href="https://sw.kovidgoyal.net/kitty/conf.html">Kitty</a>,
<a target="_blank" href="https://github.com/alacritty/alacritty">Alacritty</a>, <a href="https://iterm2.com">iTerm2</a> and <a href="https://fishshell.com/docs/current/index.html">Fish</a>.
</p>
<!-- panvimdoc-ignore-end -->

<!-- panvimdoc-include-comment
A Neovim theme inspired on the original Palenight<https://github.com/whizkydee/vscode-palenight-theme> theme, fully written in Lua.

Includes themes for Kitty<https://sw.kovidgoyal.net/kitty/conf.html>, Alacritty<https://github.com/alacritty/alacritty>, iTerm2<https://iterm2.com> and Fish<https://fishshell.com/docs/current/index.html>.
-->

<img align="center" src="./.github/images/showcase.png" />

## 🎨 Colors
This palette is improved from the original 16 colors to a 40 shades of those, ensuring compability with more plugins and a smooth contrast experience.


<img align="center" alt="pastelnight palette" src="./.github/images/colors.png" />

[See the figma document](https://www.figma.com/file/o8nP8nbYI0uvoMmAnyPaCl/Pastelnight-Color-Palette?type=design&node-id=0%3A1&mode=design&t=jXRF6JoGGayRIPxh-1)

## ✨ Features
- Enhances terminal colors.
- Supports all major plugins.
- Supports the latest Neovim 0.9.0 features.
- Provides extra themes for numerous other applications.

### 🍬 Extras

<!-- extras:start -->
- [Alacritty](https://github.com/alacritty/alacritty) ([alacritty](extras/alacritty))
- [Delta](https://github.com/dandavison/delta) ([delta](extras/delta))
- [Dunst](https://dunst-project.org/) ([dunst](extras/dunst))
- [Fish](https://fishshell.com/docs/current/index.html) ([fish](extras/fish))
- [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) ([fish_themes](extras/fish_themes))
- [Foot](https://codeberg.org/dnkl/foot) ([foot](extras/foot))
- [GitUI](https://github.com/extrawurst/gitui) ([gitui](extras/gitui))
- [iTerm](https://iterm2.com/) ([iterm](extras/iterm))
- [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) ([kitty](extras/kitty))
- [Lua Table for testing](https://www.lua.org) ([lua](extras/lua))
- [Prism](https://prismjs.com) ([prism](extras/prism))
- [Sublime Text](https://www.sublimetext.com/docs/themes) ([sublime](extras/sublime))
- [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) ([terminator](extras/terminator))
- [Tilix](https://github.com/gnunn1/tilix) ([tilix](extras/tilix))
- [Tmux](https://github.com/tmux/tmux/wiki) ([tmux](extras/tmux))
- [WezTerm](https://wezfurlong.org/wezterm/config/files.html) ([wezterm](extras/wezterm))
- [Windows Terminal](https://aka.ms/terminal-documentation) ([windows_terminal](extras/windows_terminal))
- [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) ([xfceterm](extras/xfceterm))
- [Xresources](https://wiki.archlinux.org/title/X_resources) ([xresources](extras/xresources))
- [Zathura](https://pwmt.org/projects/zathura/) ([zathura](extras/zathura))
<!-- extras:end -->

## ⚡️ Quick Start

### ✋ Requirements
- [Neovim](https://neovim.io/) [7.2](https://github.com/neovim/neovim/releases/tag/v0.7.2) or higher

### 🛠️ Installation

First install the theme with your preferred package manager:

#### 💤 lazy.nvim
```lua
{
  "pauchiner/pastelnight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### 🚀 Usage

##### VimScript

```vim
colorscheme pastelnight
```
##### Lua 

```lua
vim.api.nvim_command [[colorscheme pastelnight]]
```

#### 🔌 Other supported plugins

##### [Barbecue](https://github.com/utilyre/barbecue.nvim)

```lua
require('barbecue').setup {
  theme = 'pastelnight',
}
```

##### [Lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
require('lualine').setup {
  options = {
    theme = 'pastelnight'
  }
}
```

##### [Lightline](https://github.com/itchyny/lightline.vim)

```vim
let g:lightline = {'colorscheme': 'pastelnight'}
```


## ⚙️  Configuration

> [!WARNING]  
> Set the configuration **before** loading the color scheme with `colorscheme pastelnight`.

[PastelNight](https://github.com/pauchiner/pastelnight.nvim) uses the default options, unless setup is explicitly called.

#### Default options

```lua
require("pastelnight").setup({

  --- Enable this to disable setting the background color.
  transparent = false,

  --- Configure the colors used when opening a `:terminal`.
  terminal_colors = true,

  styles = {

    --- Style to be applied to different syntax groups.
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},

    --- Background styles. Can be 'dark', 'transparent' or 'normal'.
    sidebars = "dark",
    floats = "dark",
  },

  --- Set a darker background on sidebar-like windows. ['terminal', 'packer'...].
  sidebars = { "qf", "help" },

  --- Enabling this option, will hide inactive statuslines and replace them
  ---with a thin border instead.
  hide_inactive_statusline = false,

  --- dims inactive windows.
  dim_inactive = false,

  --- When true, section headers in the lualine theme will be bold.
  lualine_bold = false,

  --- You can override specific color groups to use other groups or a hex color,
  --- function will be called with a ColorScheme table.
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color,
  --- function will be called with a Highlights and ColorScheme table.
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
```

## 🪓 Overriding Colors & Highlights

How the highlight groups are calculated:

1. `colors` are determined based on your configuration, with the ability to
   override them using `config.on_colors(colors)`.
1. These `colors` are utilized to generate the highlight groups.
1. `config.on_highlights(highlights, colors)` can be used to override highlight
   groups.

For default values of `colors` and `highlights`, please consult the
[colors](lua/pastelnight/colors.lua) and [highlights](lua/highlights/colors.lua) files.

### Settings and color alteration demonstration

```lua
require("pastelnight").setup({
  --- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
```

### Borderless Telescope example

```lua
require("pastelnight").setup({
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
```
## ⚠️ Common Issues

### Fix undercurls in tmux

To have undercurls show up and in color, add the following to your
[Tmux](https://github.com/tmux/tmux) configuration file:

```sh
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
```

Also you can enable <u>undescore colors</u> but this needs **tmux 3.0**
```sh 
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'
```

## 🤝 Contributing

All contributions are welcome:

[CONTRIBUTING.md](https://github.com/pauchiner/pastelnight.nvim/blob/main/.github/CONTRIBUTING.md)

[CODE_OF_CONDUCT.md](https://github.com/pauchiner/pastelnight.nvim/blob/main/.github/CODE_OF_CONDUCT.md)

### 🍬 Creating new extras
For the extras, we use a simple template system that can be used to generate themes for the different styles.

How to add a new extra template:

Create a file like `lua/pastelnight/extra/cool-app.lua`.

Add the name and output file extension to the extras table in `lua/pastelnight/extra/init.lua`.

Run the following command to generate new extra themes from the pastelnight plugin directory:

```bash
nvim --headless "+lua require('pastelnight.extra').setup()" +qa
```

Check the newly created themes in the extra/ directory. 

> [!CAUTION]
> Please DO NOT commit them, as they are already automatically built by the CI.

## 📃 Credits

#### 🎨 Original Design
<a target="_blank" alt="Olaolu's profile" href="https://github.com/whizkydee">
  <img style="border-radius: 13%; margin-bottom: 10px" width='90px' src="https://avatars.githubusercontent.com/u/8625066?v=4">
</a>

This theme is highly inspired by the original theme [Palenight](https://github.com/whizkydee/vscode-palenight-theme) from [Olaolu Olawuyi](https://github.com/whizkydee).

#### 🏗️ Code Structure
<a target="_blank" alt="folke's profile" href="https://github.com/folke">
  <img style="border-radius: 13%; margin-bottom: 10px" width='90px' src="https://avatars.githubusercontent.com/u/292349?v=4">
</a>

The structure of this plugin is based on the [Tokyo Night Theme](https://github.com/folke/tokyonight.nvim) from [Folke Lemaitre](https://github.com/folke), take a look of his work please.

#### 🐾 Hsl support
<a target="_blank" alt="Takuya's profile" href="https://github.com/craftzdog">
  <img style="border-radius: 13%; margin-bottom: 10px" width='90px' src="https://avatars.githubusercontent.com/u/1332805?v=4">
</a>

The way of implement and create the color palette is inspired on the new  [Solarized Osaka Theme](https://github.com/craftzdog/solarized-osaka.nvim)
from [Takuya Matsuyama](https://github.com/Craftzdog), see he's profile to know more.

---

<div align="center">
    <sup>With 💜 by Pau García Chiner</sup>
</div>
