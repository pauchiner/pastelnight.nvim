local util = require('pastelnight.util')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${red100}"
  minus-non-emph-style          = syntax "${red100}"
  minus-emph-style              = syntax "${red}"
  minus-empty-line-marker-style = syntax "${red100}"
  line-numbers-minus-style      = "${red300}"
  plus-style                    = syntax "${green100}"
  plus-non-emph-style           = syntax "${green100}"
  plus-emph-style               = syntax "${green}"
  plus-empty-line-marker-style  = syntax "${green100}"
  line-numbers-plus-style       = "${green300}"
  line-numbers-zero-style       = "${base100}"
]],
    colors
  )
  return delta
end

return M
