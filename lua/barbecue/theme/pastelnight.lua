local c = require('pastelnight.colors').setup({ transform = true })

local M = {
  normal = { bg = c.none, fg = c.base600 },

  ellipsis = { fg = c.base100 },
  separator = { fg = c.base100 },
  modified = { fg = c.warning },

  dirname = { fg = c.base100 },
  basename = { fg = c.base50, bold = true },
  context = { fg = c.base50 },

  context_file = { fg = c.base50 },
  context_module = { fg = c.yellow },
  context_namespace = { fg = c.yellow },
  context_package = { fg = c.blue },
  context_class = { fg = c.orange },
  context_method = { fg = c.blue },
  context_property = { fg = c.green },
  context_field = { fg = c.green },
  context_constructor = { fg = c.blue },
  context_enum = { fg = c.orange },
  context_interface = { fg = c.orange },
  context_function = { fg = c.blue },
  context_variable = { fg = c.purple },
  context_constant = { fg = c.purple },
  context_string = { fg = c.green },
  context_number = { fg = c.orange },
  context_boolean = { fg = c.orange },
  context_array = { fg = c.orange },
  context_object = { fg = c.orange },
  context_key = { fg = c.purple },
  context_null = { fg = c.blue },
  context_enum_member = { fg = c.green },
  context_struct = { fg = c.orange },
  context_event = { fg = c.orange },
  context_operator = { fg = c.green },
  context_type_parameter = { fg = c.green },
}

return M
