local colors = require('pastelnight.colors').setup({ transform = true })

local pastelnight = {}

pastelnight.normal = {
  left = {
    { colors.bg, colors.purple, 'bold' },
    { colors.purple300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg, colors.purple, 'bold' },
    { colors.purple300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  middle = { { colors.base300, colors.bg_statusline } },
  warning = { { colors.black, colors.warning } },
  error = { { colors.black, colors.error } },
}

pastelnight.insert = {
  left = {
    { colors.bg, colors.blue, 'bold' },
    { colors.blue300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg, colors.blue, 'bold' },
    { colors.blue300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
}

pastelnight.visual = {
  left = {
    { colors.bg, colors.yellow, 'bold' },
    { colors.yellow300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg, colors.yellow, 'bold' },
    { colors.yellow300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
}

pastelnight.replace = {
  left = {
    { colors.bg, colors.green, 'bold' },
    { colors.green300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg, colors.green, 'bold' },
    { colors.green300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
}

pastelnight.inactive = {
  left = {
    { colors.bg_statusline, colors.purple, 'bold' },
    { colors.base300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg_statusline, colors.purple, 'bold' },
    { colors.base300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  middle = { { colors.base300, colors.bg_statusline } },
}

pastelnight.tabline = {
  left = {
    { colors.bg_statusline, colors.purple, 'bold' },
    { colors.base300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  right = {
    { colors.bg_statusline, colors.purple, 'bold' },
    { colors.base300, colors.bg_statusline },
    { colors.base300, colors.bg_statusline },
  },
  tabsel = { { colors.purple, colors.bg }, { colors.base300, colors.bg } },
  middle = { { colors.base300, colors.bg_statusline } },
}

return pastelnight
