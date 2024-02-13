local colors = require('pastelnight.colors').setup({ transform = true })
local config = require('pastelnight.config').options

local pastelnight = {}

pastelnight.normal = {
  a = { bg = colors.purple, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.purple300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.insert = {
  a = { bg = colors.blue, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.blue300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.command = {
  a = { bg = colors.purple, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.purple300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.visual = {
  a = { bg = colors.yellow, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.yellow300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.replace = {
  a = { bg = colors.green, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.green300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.terminal = {
  a = { bg = colors.pink, fg = colors.bg, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.pink300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

pastelnight.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.purple, gui = 'bold' },
  b = { bg = colors.bg_statusline, fg = colors.base300 },
  c = { bg = colors.bg_statusline, fg = colors.base300 },
}

if config.lualine_bold then
  for _, mode in pairs(pastelnight) do
    mode.a.gui = 'bold'
  end
end

return pastelnight
