local util = require("pastelnight.util")
local theme = require("pastelnight.theme")
local config = require("pastelnight.config")

local M = {}

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("pastelnight.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
