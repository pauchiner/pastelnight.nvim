local colors = require("pastelnight.colors").setup({ transform = true })

local pastelnight = {}

pastelnight.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.base100 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.base100 } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

pastelnight.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

pastelnight.visual = {
  left = { { colors.black, colors.pink }, { colors.blue, colors.bg } },
}

pastelnight.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

pastelnight.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.base700, colors.bg } },
  middle = { { colors.base100, colors.bg_statusline } },
  right = { { colors.base100, colors.bg_statusline }, { colors.base700, colors.bg } },
}

pastelnight.tabline = {
  left = { { colors.base700, colors.base400 }, { colors.base700, colors.bg } },
  middle = { { colors.base100, colors.bg_statusline } },
  right = { { colors.base100, colors.bg_statusline }, { colors.base700, colors.bg } },
  tabsel = { { colors.blue, colors.base100 }, { colors.base700, colors.bg } },
}

return pastelnight
