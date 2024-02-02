local colors = require("pastelnight.colors").setup({ transform = true })
local config = require("pastelnight.config").options

local pastelnight = {}

pastelnight.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.bg_statusline, fg = colors.fg },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

pastelnight.insert = {
  a = { bg = colors.green, fg = colors.black },
}

pastelnight.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

pastelnight.visual = {
  a = { bg = colors.pink, fg = colors.black },
}

pastelnight.replace = {
  a = { bg = colors.red, fg = colors.black },
}

pastelnight.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

pastelnight.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(pastelnight) do
    mode.a.gui = "bold"
  end
end

return pastelnight
