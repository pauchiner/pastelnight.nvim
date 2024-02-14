local colors = {
  _name = "pastelnight_highcontrast",
  base = "#f9fbff",
  base100 = "#b9bac0",
  base200 = "#a8a9b2",
  base300 = "#6a6c7a",
  base400 = "#4b4c58",
  base50 = "#e6e7e9",
  base500 = "#292b3c",
  base600 = "#1a1c27",
  base700 = "#14151e",
  base800 = "#0e0e15",
  base900 = "#07080c",
  bg = "#292b3c",
  bg_float = "#1a1c27",
  bg_popup = "#292b3c",
  bg_sidebar = "#292b3c",
  bg_statusline = "#292b3c",
  black = "#212230",
  blue = "#709dff",
  blue100 = "#a8c3ff",
  blue200 = "#709dff",
  blue300 = "#6d91dd",
  blue400 = "#5f7dbd",
  blue50 = "#ccdcfe",
  border = "#212230",
  error = "#ff3d3d",
  fg = "#f9fbff",
  fg_float = "#f9fbff",
  green = "#56fe86",
  green100 = "#9effb9",
  green200 = "#56fe86",
  green300 = "#58de7e",
  green400 = "#4bbe6b",
  green50 = "#ccfeda",
  hint = "#70e4ff",
  info = "#709dff",
  none = "NONE",
  orange = "#ff7a3d",
  orange100 = "#ffab84",
  orange200 = "#ff7a3d",
  orange300 = "#dd7240",
  orange400 = "#bd6137",
  orange50 = "#feceb7",
  pink = "#ff89db",
  pink100 = "#feb7e9",
  pink200 = "#ff89db",
  pink300 = "#dd82c2",
  pink400 = "#be6ea6",
  pink50 = "#fed6f2",
  purple = "#ad80d4",
  purple100 = "#cbaee4",
  purple200 = "#ad80d4",
  purple300 = "#9d7abc",
  purple400 = "#8667a1",
  purple50 = "#e1d0f0",
  red = "#ff3d3d",
  red100 = "#ff8484",
  red200 = "#ff3d3d",
  red300 = "#dd4040",
  red400 = "#bd3737",
  red50 = "#feb7b7",
  sky = "#70e4ff",
  sky100 = "#adf0fe",
  sky200 = "#70e4ff",
  sky300 = "#6dc9dd",
  sky400 = "#5aabbd",
  sky50 = "#d1f6ff",
  warning = "#fec456",
  yellow = "#fec456",
  yellow100 = "#ffdb99",
  yellow200 = "#fec456",
  yellow300 = "#deaf58",
  yellow400 = "#be954b",
  yellow50 = "#fee6b7"
}

local highlights = {
  ["@annotation"] = {
    fg = "#f9fbff"
  },
  ["@attribute"] = {
    fg = "#70e4ff"
  },
  ["@attribute.typescript"] = {
    fg = "#709dff"
  },
  ["@boolean"] = {
    fg = "#ff7a3d"
  },
  ["@character"] = {
    fg = "#ff7a3d"
  },
  ["@comment"] = {
    fg = "#a8a9b2",
    style = {
      italic = true
    }
  },
  ["@comment.todo"] = {
    fg = "#ff3d3d",
    style = {
      italic = true
    }
  },
  ["@comment.todo.checked"] = {
    fg = "#56fe86",
    style = {
      italic = true
    }
  },
  ["@comment.todo.unchecked"] = {
    fg = "#ff3d3d",
    style = {
      italic = true
    }
  },
  ["@conditional"] = {
    fg = "#ad80d4"
  },
  ["@constant"] = {
    fg = "#ff7a3d"
  },
  ["@constant.builtin"] = {
    fg = "#ff7a3d"
  },
  ["@constant.macro"] = {
    fg = "#ff7a3d"
  },
  ["@constructor"] = {
    bold = true,
    fg = "#fec456"
  },
  ["@constructor.tsx"] = {
    fg = "#fec456"
  },
  ["@danger"] = {
    fg = "#f9fbff"
  },
  ["@diff.add"] = {
    fg = "#56fe86"
  },
  ["@diff.delete"] = {
    fg = "#ff3d3d"
  },
  ["@error"] = {
    fg = "#f9fbff"
  },
  ["@exception"] = {
    fg = "#ad80d4"
  },
  ["@field"] = {
    fg = "#70e4ff"
  },
  ["@float"] = {
    fg = "#ff7a3d"
  },
  ["@function"] = {
    fg = "#709dff"
  },
  ["@function.builtin"] = {
    fg = "#70e4ff"
  },
  ["@function.macro"] = {
    fg = "#70e4ff"
  },
  ["@function.method"] = {
    fg = "#709dff"
  },
  ["@include"] = {
    fg = "#ad80d4"
  },
  ["@keyword"] = {
    fg = "#ad80d4"
  },
  ["@keyword.conditional"] = {
    fg = "#ad80d4"
  },
  ["@keyword.directive"] = {
    fg = "#ad80d4"
  },
  ["@keyword.exception"] = {
    fg = "#ad80d4"
  },
  ["@keyword.function"] = {
    fg = "#ad80d4"
  },
  ["@keyword.import"] = {
    fg = "#ad80d4"
  },
  ["@keyword.operator"] = {
    fg = "#ad80d4"
  },
  ["@keyword.repeat"] = {
    fg = "#ad80d4"
  },
  ["@label"] = {
    fg = "#ff3d3d"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.comment"] = {
    link = "@comment"
  },
  ["@lsp.type.enum"] = {
    link = "@type"
  },
  ["@lsp.type.enumMember"] = {
    link = "@constant.builtin"
  },
  ["@lsp.type.generic"] = {
    link = "@text"
  },
  ["@lsp.type.interface"] = {
    link = "@type"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.macro"] = {
    link = "@function.macro"
  },
  ["@lsp.type.method"] = {
    link = "@function.method"
  },
  ["@lsp.type.namespace"] = {
    link = "@module"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.parameter"] = {
    link = "@parameter"
  },
  ["@lsp.type.property"] = {
    link = "@property"
  },
  ["@lsp.type.typeParameter"] = {
    link = "@type"
  },
  ["@lsp.type.unresolvedReference"] = {
    sp = "#ff3d3d",
    undercurl = true
  },
  ["@lsp.type.variable"] = {
    link = "@variable"
  },
  ["@lsp.typemod.function.defaultLibrary"] = {
    link = "@function"
  },
  ["@lsp.typemod.method.defaultLibrary"] = {
    link = "@function"
  },
  ["@lsp.typemod.operator.injected"] = {
    link = "@operator"
  },
  ["@lsp.typemod.string.injected"] = {
    link = "@string"
  },
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@markup.emphasis"] = {
    fg = "#f9fbff",
    italic = true
  },
  ["@markup.environment"] = {
    fg = "#f9fbff"
  },
  ["@markup.environment.name"] = {
    fg = "#f9fbff"
  },
  ["@markup.heading"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#ff3d3d"
  },
  ["@markup.heading.1.marker.markdown"] = {
    bold = true,
    fg = "#ff3d3d"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#ad80d4"
  },
  ["@markup.heading.2.marker.markdown"] = {
    bold = true,
    fg = "#ad80d4"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@markup.heading.3.marker.markdown"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#ff3d3d"
  },
  ["@markup.heading.4.marker.markdown"] = {
    bold = true,
    fg = "#ff3d3d"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#ad80d4"
  },
  ["@markup.heading.5.marker.markdown"] = {
    bold = true,
    fg = "#ad80d4"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@markup.heading.6.marker.markdown"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@markup.link"] = {
    fg = "#709dff"
  },
  ["@markup.link.url"] = {
    fg = "#70e4ff",
    underline = true
  },
  ["@markup.list"] = {
    fg = "#ff3d3d"
  },
  ["@markup.math"] = {
    fg = "#f9fbff"
  },
  ["@markup.raw"] = {
    fg = "#56fe86"
  },
  ["@markup.strike"] = {
    fg = "#f9fbff",
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#f9fbff"
  },
  ["@markup.underline"] = {
    fg = "#f9fbff",
    underline = true
  },
  ["@method"] = {
    fg = "#709dff"
  },
  ["@module"] = {
    fg = "#fec456"
  },
  ["@namespace"] = {
    fg = "#fec456"
  },
  ["@none"] = {
    fg = "#f9fbff"
  },
  ["@note"] = {
    fg = "#f9fbff"
  },
  ["@number"] = {
    fg = "#ff7a3d"
  },
  ["@number.float"] = {
    fg = "#ff7a3d"
  },
  ["@operator"] = {
    fg = "#f9fbff"
  },
  ["@parameter"] = {
    fg = "#ff3d3d"
  },
  ["@parameter.reference"] = {
    fg = "#f9fbff"
  },
  ["@preproc"] = {
    fg = "#ad80d4"
  },
  ["@property"] = {
    fg = "#70e4ff"
  },
  ["@punctuation.special"] = {
    fg = "#ff3d3d"
  },
  ["@repeat"] = {
    fg = "#ad80d4"
  },
  ["@string"] = {
    fg = "#56fe86"
  },
  ["@string.escape"] = {
    fg = "#ff3d3d"
  },
  ["@string.regex"] = {
    fg = "#ff7a3d"
  },
  ["@string.regexp"] = {
    fg = "#ff7a3d"
  },
  ["@string.special.symbol"] = {
    fg = "#70e4ff"
  },
  ["@tag"] = {
    fg = "#fec456"
  },
  ["@tag.attribute"] = {
    fg = "#ff7a3d"
  },
  ["@tag.delimiter"] = {
    fg = "#fec456"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#ff7a3d"
  },
  ["@tag.tsx"] = {
    fg = "#56fe86"
  },
  ["@text"] = {
    fg = "#f9fbff"
  },
  ["@text.danger"] = {
    bg = "#ff3d3d",
    fg = "#bd3737"
  },
  ["@text.diff.add"] = {
    fg = "#56fe86"
  },
  ["@text.diff.delete"] = {
    fg = "#ff3d3d"
  },
  ["@text.emphasis"] = {
    fg = "#f9fbff",
    italic = true
  },
  ["@text.environment"] = {
    fg = "#f9fbff"
  },
  ["@text.environment.name"] = {
    fg = "#f9fbff"
  },
  ["@text.literal"] = {
    fg = "#56fe86"
  },
  ["@text.literal.markdown"] = {
    fg = "#ff3d3d"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#4bbe6b",
    fg = "#fec456"
  },
  ["@text.math"] = {
    fg = "#f9fbff"
  },
  ["@text.reference"] = {
    fg = "#709dff"
  },
  ["@text.strike"] = {
    fg = "#f9fbff",
    strikethrough = true
  },
  ["@text.strong"] = {
    bold = true,
    fg = "#f9fbff"
  },
  ["@text.title"] = {
    bold = true,
    fg = "#ff7a3d"
  },
  ["@text.todo"] = {
    fg = "#ff3d3d",
    style = {
      italic = true
    }
  },
  ["@text.todo.checked"] = {
    fg = "#56fe86",
    style = {
      italic = true
    }
  },
  ["@text.todo.unchecked"] = {
    fg = "#ff3d3d",
    style = {
      italic = true
    }
  },
  ["@text.underline"] = {
    fg = "#f9fbff",
    underline = true
  },
  ["@text.uri"] = {
    fg = "#70e4ff",
    underline = true
  },
  ["@text.warning"] = {
    bg = "#fec456",
    fg = "#be954b"
  },
  ["@type"] = {
    fg = "#fec456"
  },
  ["@type.builtin"] = {
    fg = "#ff7a3d"
  },
  ["@variable"] = {
    fg = "#f9fbff"
  },
  ["@variable.builtin"] = {
    fg = "#ff3d3d"
  },
  ["@variable.member"] = {
    fg = "#70e4ff"
  },
  ["@variable.parameter"] = {
    fg = "#ff3d3d"
  },
  ["@warning"] = {
    fg = "#f9fbff"
  },
  AlphaButtons = {
    fg = "#70e4ff"
  },
  AlphaFooter = {
    fg = "#70e4ff"
  },
  AlphaHeader = {
    fg = "#709dff"
  },
  AlphaHeaderLabel = {
    fg = "#ff7a3d"
  },
  AlphaShortcut = {
    fg = "#ff7a3d"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#dd7240"
  },
  BufferAlternate = {
    bg = "#1a1c27",
    fg = "#f9fbff"
  },
  BufferAlternateERROR = {
    bg = "#1a1c27",
    fg = "#ff3d3d"
  },
  BufferAlternateHINT = {
    bg = "#1a1c27",
    fg = "#70e4ff"
  },
  BufferAlternateINFO = {
    bg = "#1a1c27",
    fg = "#709dff"
  },
  BufferAlternateIndex = {
    bg = "#1a1c27",
    fg = "#709dff"
  },
  BufferAlternateMod = {
    bg = "#1a1c27",
    fg = "#fec456"
  },
  BufferAlternateSign = {
    bg = "#1a1c27",
    fg = "#709dff"
  },
  BufferAlternateTarget = {
    bg = "#1a1c27",
    fg = "#ff3d3d"
  },
  BufferAlternateWARN = {
    bg = "#1a1c27",
    fg = "#fec456"
  },
  BufferCurrent = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  BufferCurrentERROR = {
    bg = "#292b3c",
    fg = "#ff3d3d"
  },
  BufferCurrentHINT = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  BufferCurrentINFO = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferCurrentIndex = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferCurrentMod = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  BufferCurrentSign = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  BufferCurrentTarget = {
    bg = "#292b3c",
    fg = "#ff3d3d"
  },
  BufferCurrentWARN = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  BufferInactive = {
    bg = "#373847",
    fg = "#936fb6"
  },
  BufferInactiveERROR = {
    bg = "#373847",
    fg = "#d4393d"
  },
  BufferInactiveHINT = {
    bg = "#373847",
    fg = "#62bfd8"
  },
  BufferInactiveINFO = {
    bg = "#373847",
    fg = "#6286d8"
  },
  BufferInactiveIndex = {
    bg = "#373847",
    fg = "#ad80d4"
  },
  BufferInactiveMod = {
    bg = "#373847",
    fg = "#d3a551"
  },
  BufferInactiveSign = {
    bg = "#373847",
    fg = "#292b3c"
  },
  BufferInactiveTarget = {
    bg = "#373847",
    fg = "#ff3d3d"
  },
  BufferInactiveWARN = {
    bg = "#373847",
    fg = "#d3a551"
  },
  BufferOffset = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  BufferTabpageFill = {
    bg = "#444552",
    fg = "#ad80d4"
  },
  BufferTabpages = {
    bg = "#292b3c",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  BufferVisibleERROR = {
    bg = "#292b3c",
    fg = "#ff3d3d"
  },
  BufferVisibleHINT = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  BufferVisibleINFO = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferVisibleIndex = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferVisibleMod = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  BufferVisibleSign = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferVisibleTarget = {
    bg = "#292b3c",
    fg = "#ff3d3d"
  },
  BufferVisibleWARN = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  BufferlineBackground = {
    bg = "#292b3c"
  },
  BufferlineDuplicate = {
    bg = "#292b3c"
  },
  BufferlineError = {
    bg = "#292b3c"
  },
  BufferlineErrorDiagnostic = {
    bg = "#292b3c",
    fg = "#ff3d3d"
  },
  BufferlineFill = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  BufferlineHint = {
    bg = "#292b3c"
  },
  BufferlineHintDiagnostic = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  BufferlineIndicatorSelected = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  BufferlineInfo = {
    bg = "#292b3c"
  },
  BufferlineInfoDiagnostic = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  BufferlineModified = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  BufferlineModifiedSelected = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  BufferlineModifiedVisible = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  BufferlineSelected = {
    bg = "#292b3c",
    bold = false,
    fg = "#ad80d4",
    italic = false
  },
  BufferlineSeparator = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  BufferlineVisible = {
    bg = "#ad80d4"
  },
  BufferlineWarning = {
    bg = "#292b3c"
  },
  BufferlineWarningDiagnostic = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  Character = {
    fg = "#ff7a3d"
  },
  CmpDocumentation = {
    bg = "#1a1c27",
    fg = "#f9fbff"
  },
  CmpDocumentationBorder = {
    bg = "#1a1c27",
    fg = "#14151e"
  },
  CmpGhostText = {
    fg = "#1a1c27"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#f9fbff"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#1a1c27",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#ad80d4"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#ad80d4"
  },
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#ff89db"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#709dff"
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#1a1c27"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#709dff"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#709dff"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#fec456"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#ff89db"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#ad80d4"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#ff89db"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#ff89db"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#1a1c27"
  },
  ColorColumn = {
    bg = "#4b4c58"
  },
  Comment = {
    fg = "#a8a9b2",
    style = {
      italic = true
    }
  },
  Conceal = {
    bg = "#4b4c58",
    fg = "#a8a9b2"
  },
  Conditional = {
    fg = "#ad80d4"
  },
  Constant = {
    fg = "#70e4ff"
  },
  Cursor = {
    reverse = true
  },
  CursorColumn = {
    bg = "#4b4c58"
  },
  CursorIM = {
    reverse = true
  },
  CursorLine = {
    bg = "#4b4c58"
  },
  CursorLineNr = {
    fg = "#fee6b7"
  },
  DapStoppedLine = {
    bg = "#deaf58"
  },
  DashboardCenter = {
    fg = "#ff89db"
  },
  DashboardFooter = {
    fg = "#fec456",
    italic = true
  },
  DashboardHeader = {
    fg = "#709dff"
  },
  DashboardShortCut = {
    fg = "#70e4ff"
  },
  Debug = {
    fg = "#ff7a3d"
  },
  Define = {
    fg = "#9d7abc"
  },
  Delimiter = {
    fg = "#b9bac0"
  },
  DiagnosticBorder = {
    bg = "#292b3c",
    fg = "#9d7abc"
  },
  DiagnosticError = {
    fg = "#ff3d3d"
  },
  DiagnosticHint = {
    fg = "#70e4ff"
  },
  DiagnosticInfo = {
    fg = "#709dff"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
  DiagnosticNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  DiagnosticUnderlineError = {
    sp = "#ff3d3d",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#70e4ff",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#709dff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#fec456",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#6a6c7a"
  },
  DiagnosticVirtualTextError = {
    fg = "#ff3d3d"
  },
  DiagnosticVirtualTextHint = {
    fg = "#70e4ff"
  },
  DiagnosticVirtualTextInfo = {
    fg = "#a8c3ff"
  },
  DiagnosticVirtualTextWarn = {
    fg = "#ffdb99"
  },
  DiagnosticWarn = {
    fg = "#fec456"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#56fe86",
    fg = "NONE"
  },
  DiffChange = {
    bg = "#fec456",
    fg = "NONE"
  },
  DiffDelete = {
    bg = "#ff3d3d",
    fg = "NONE"
  },
  DiffText = {
    bg = "#709dff",
    fg = "NONE"
  },
  Directory = {
    fg = "#709dff"
  },
  EndOfBuffer = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  Error = {
    fg = "#ff8484"
  },
  ErrorMsg = {
    bold = true,
    fg = "#ff3d3d"
  },
  Exception = {
    fg = "#cbaee4"
  },
  FernBranchText = {
    fg = "#ad80d4"
  },
  FlashBackdrop = {
    fg = "#1a1c27"
  },
  FlashLabel = {
    bg = "#ff89db",
    bold = true,
    fg = "#f9fbff"
  },
  Float = {
    fg = "#ffab84"
  },
  FloatBorder = {
    bg = "#1a1c27",
    fg = "#ad80d4"
  },
  FloatTitle = {
    bg = "#1a1c27",
    fg = "#a8a9b2"
  },
  FoldColumn = {
    bg = "#292b3c",
    fg = "#6a6c7a"
  },
  Folded = {
    bg = "#1a1c27",
    fg = "#4b4c58"
  },
  Function = {
    fg = "#709dff"
  },
  GitGutterAdd = {
    fg = "#56fe86"
  },
  GitGutterAddLineNr = {
    fg = "#56fe86"
  },
  GitGutterChange = {
    fg = "#fec456"
  },
  GitGutterChangeLineNr = {
    fg = "#fec456"
  },
  GitGutterDelete = {
    fg = "#ff3d3d"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff3d3d"
  },
  GitSignsAdd = {
    fg = "#56fe86"
  },
  GitSignsChange = {
    fg = "#fec456"
  },
  GitSignsDelete = {
    fg = "#ff3d3d"
  },
  GlyphPalette1 = {
    fg = "#ff3d3d"
  },
  GlyphPalette2 = {
    fg = "#56fe86"
  },
  GlyphPalette3 = {
    fg = "#fec456"
  },
  GlyphPalette4 = {
    fg = "#709dff"
  },
  GlyphPalette6 = {
    fg = "#70e4ff"
  },
  GlyphPalette7 = {
    fg = "#f9fbff"
  },
  GlyphPalette9 = {
    fg = "#ff3d3d"
  },
  Hlargs = {
    fg = "#fec456"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff89db"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#ad80d4"
  },
  HopNextKey2 = {
    fg = "#9d7abc"
  },
  HopUnmatched = {
    fg = "#1a1c27"
  },
  HoverBorder = {
    link = "DiagnosticBorder"
  },
  HoverNormal = {
    link = "DiagnosticNormal"
  },
  IblIndent = {
    fg = "#4b4c58",
    nocombine = true
  },
  Identifier = {
    fg = "#ff8484"
  },
  IlluminatedWordRead = {
    bg = "#be6ea6"
  },
  IlluminatedWordText = {
    bg = "#8667a1"
  },
  IlluminatedWordWrite = {
    bg = "#be6ea6"
  },
  Include = {
    fg = "#9d7abc"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#9d7abc"
  },
  Label = {
    fg = "#be6ea6"
  },
  LazyH1 = {
    bold = true,
    fg = "#ad80d4"
  },
  LazyNoCond = {
    fg = "#a8a9b2"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#e1d0f0"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#8667a1"
  },
  LazySpecial = {
    fg = "#b9bac0"
  },
  LeapBackdrop = {
    fg = "#1a1c27"
  },
  LeapLabelPrimary = {
    bold = true,
    fg = "#ff89db"
  },
  LeapLabelSecondary = {
    bold = true,
    fg = "#70e4ff"
  },
  LeapMatch = {
    bg = "#ff89db",
    bold = true,
    fg = "#f9fbff"
  },
  LightspeedGreyWash = {
    fg = "#1a1c27"
  },
  LightspeedLabel = {
    bold = true,
    fg = "#ff89db",
    underline = true
  },
  LightspeedLabelDistant = {
    bold = true,
    fg = "#70e4ff",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#70e4ff",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#ff89db",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#ff7a3d"
  },
  LightspeedOneCharMatch = {
    bg = "#ff89db",
    bold = true,
    fg = "#f9fbff"
  },
  LightspeedPendingOpArea = {
    bg = "#ff89db",
    fg = "#f9fbff"
  },
  LightspeedShortcut = {
    bg = "#ff89db",
    bold = true,
    fg = "#f9fbff",
    underline = true
  },
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#ad80d4"
  },
  LineNr = {
    fg = "#6a6c7a"
  },
  LspFloatWinBorder = {
    link = "DiagnosticBorder"
  },
  LspFloatWinNormal = {
    link = "DiagnosticNormal"
  },
  LspReferenceRead = {
    underline = true
  },
  LspReferenceText = {
    underline = true
  },
  LspReferenceWrite = {
    underline = true
  },
  LspSagaCodeActionBorder = {
    fg = "#709dff"
  },
  LspSagaCodeActionContent = {
    fg = "#ff3d3d"
  },
  LspSagaCodeActionTitle = {
    fg = "#70e4ff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#56fe86"
  },
  LspSagaDefPreviewTitle = {
    fg = "#ccfeda"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff3d3d"
  },
  Macro = {
    fg = "#ff3d3d"
  },
  MasonHeader = {
    bg = "NONE",
    bold = true,
    fg = "#cbaee4"
  },
  MasonHighlight = {
    bg = "NONE",
    fg = "#9effb9"
  },
  MasonHighlightBlock = {
    bg = "#ff89db",
    fg = "#ff89db"
  },
  MasonHighlightBlockBold = {
    bg = "#ad80d4",
    bold = true,
    fg = "#292b3c"
  },
  MasonMuted = {
    bold = true,
    fg = "#ff8484"
  },
  MasonMutedBlock = {
    bg = "#292b3c",
    default = true,
    fg = "#6a6c7a"
  },
  MasonNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  MatchParen = {
    bg = "#a8a9b2",
    fg = "NONE"
  },
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#1a1c27"
  },
  MiniCursorwordCurrent = {
    bg = "#1a1c27"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#9d7abc",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff89db",
    fg = "#e6e7e9"
  },
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff89db",
    nocombine = true
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#fec456",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#709dff"
  },
  MiniStarterInactive = {
    fg = "#1a1c27",
    style = {
      italic = true
    }
  },
  MiniStarterItem = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  MiniStarterItemBullet = {
    fg = "#1a1c27"
  },
  MiniStarterItemPrefix = {
    fg = "#fec456"
  },
  MiniStarterQuery = {
    fg = "#709dff"
  },
  MiniStarterSection = {
    fg = "#ad80d4"
  },
  MiniStatuslineDevinfo = {
    bg = "#4b4c58",
    fg = "#1a1c27"
  },
  MiniStatuslineFileinfo = {
    bg = "#4b4c58",
    fg = "#1a1c27"
  },
  MiniStatuslineFilename = {
    bg = "#4b4c58",
    fg = "#1a1c27"
  },
  MiniStatuslineInactive = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  MiniStatuslineModeCommand = {
    bg = "#fec456",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeInsert = {
    bg = "#56fe86",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeNormal = {
    bg = "#709dff",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeOther = {
    bg = "#70e4ff",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff3d3d",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeVisual = {
    bg = "#ff89db",
    bold = true,
    fg = "#212230"
  },
  MiniSurround = {
    bg = "#ff7a3d",
    fg = "#212230"
  },
  MiniTablineCurrent = {
    bg = "#1a1c27",
    fg = "#f9fbff"
  },
  MiniTablineFill = {
    bg = "#212230"
  },
  MiniTablineHidden = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  MiniTablineModifiedCurrent = {
    bg = "#1a1c27",
    fg = "#fec456"
  },
  MiniTablineModifiedHidden = {
    bg = "#292b3c",
    fg = "#be964e"
  },
  MiniTablineModifiedVisible = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  MiniTablineTabpagesection = {
    bg = "#292b3c",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff3d3d"
  },
  MiniTestPass = {
    bold = true,
    fg = "#56fe86"
  },
  MiniTrailspace = {
    bg = "#ff3d3d"
  },
  ModeMsg = {
    fg = "#709dff"
  },
  MoreMsg = {
    bold = true,
    fg = "#709dff"
  },
  MsgArea = {
    fg = "#a8a9b2"
  },
  NavicIconsArray = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsBoolean = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsClass = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsConstant = {
    bg = "#292b3c",
    fg = "#ff89db"
  },
  NavicIconsConstructor = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsEnum = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsEnumMember = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  NavicIconsEvent = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsField = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  NavicIconsFile = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsFunction = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  NavicIconsInterface = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsKey = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  NavicIconsKeyword = {
    bg = "#292b3c",
    fg = "#ad80d4"
  },
  NavicIconsMethod = {
    bg = "#292b3c",
    fg = "#709dff"
  },
  NavicIconsModule = {
    bg = "#292b3c",
    fg = "#fec456"
  },
  NavicIconsNamespace = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsNull = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsNumber = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsObject = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsOperator = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsPackage = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsProperty = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  NavicIconsString = {
    bg = "#292b3c",
    fg = "#56fe86"
  },
  NavicIconsStruct = {
    bg = "#292b3c",
    fg = "#ff7a3d"
  },
  NavicIconsTypeParameter = {
    bg = "#292b3c",
    fg = "#70e4ff"
  },
  NavicIconsVariable = {
    bg = "#292b3c",
    fg = "#ff89db"
  },
  NavicSeparator = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicText = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NeoTreeDimText = {
    fg = "#4b4c58"
  },
  NeoTreeNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NeoTreeNormalNC = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NeogitBranch = {
    fg = "#ff89db"
  },
  NeogitDiffAddHighlight = {
    bg = "#4bbe6b",
    fg = "#56fe86"
  },
  NeogitDiffContextHighlight = {
    bg = "#14151e",
    fg = "#292b3c"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#bd3737",
    fg = "#ff3d3d"
  },
  NeogitHunkHeader = {
    bg = "#14151e",
    fg = "#4b4c58"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#14151e",
    fg = "#709dff"
  },
  NeogitRemote = {
    fg = "#ad80d4"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#ad80d4"
  },
  NeotestBorder = {
    fg = "#709dff"
  },
  NeotestDir = {
    fg = "#709dff"
  },
  NeotestExpandMarker = {
    fg = "#4b4c58"
  },
  NeotestFailed = {
    fg = "#ff3d3d"
  },
  NeotestFile = {
    fg = "#70e4ff"
  },
  NeotestFocused = {
    fg = "#fec456"
  },
  NeotestIndent = {
    fg = "#292b3c"
  },
  NeotestMarked = {
    fg = "#709dff"
  },
  NeotestNamespace = {
    fg = "#70e4ff"
  },
  NeotestPassed = {
    fg = "#56fe86"
  },
  NeotestRunning = {
    fg = "#fec456"
  },
  NeotestSkipped = {
    fg = "#709dff"
  },
  NeotestTarget = {
    fg = "#709dff"
  },
  NeotestTest = {
    fg = "#292b3c"
  },
  NeotestWinSelect = {
    fg = "#709dff"
  },
  NoiceCompletionItemKindClass = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindConstant = {
    bg = "NONE",
    fg = "#ff89db"
  },
  NoiceCompletionItemKindConstructor = {
    bg = "NONE",
    fg = "#709dff"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#1a1c27"
  },
  NoiceCompletionItemKindEnum = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindEnumMember = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindEvent = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindField = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindFunction = {
    bg = "NONE",
    fg = "#709dff"
  },
  NoiceCompletionItemKindInterface = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindKeyword = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindMethod = {
    bg = "NONE",
    fg = "#709dff"
  },
  NoiceCompletionItemKindModule = {
    bg = "NONE",
    fg = "#fec456"
  },
  NoiceCompletionItemKindOperator = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindProperty = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindReference = {
    bg = "NONE",
    fg = "#ff89db"
  },
  NoiceCompletionItemKindSnippet = {
    bg = "NONE",
    fg = "#ad80d4"
  },
  NoiceCompletionItemKindStruct = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindTypeParameter = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  NoiceCompletionItemKindUnit = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  NoiceCompletionItemKindValue = {
    bg = "NONE",
    fg = "#ff89db"
  },
  NoiceCompletionItemKindVariable = {
    bg = "NONE",
    fg = "#ff89db"
  },
  NonText = {
    fg = "#4b4c58"
  },
  Normal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NormalFloat = {
    bg = "#1a1c27",
    fg = "#f9fbff"
  },
  NormalNC = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NormalSB = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyBackground = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyDEBUGBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyDEBUGBorder = {
    bg = "#292b3c",
    fg = "#252736"
  },
  NotifyDEBUGIcon = {
    fg = "#1a1c27"
  },
  NotifyDEBUGTitle = {
    fg = "#1a1c27"
  },
  NotifyERRORBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyERRORBorder = {
    bg = "#292b3c",
    fg = "#69303c"
  },
  NotifyERRORIcon = {
    fg = "#ff3d3d"
  },
  NotifyERRORTitle = {
    fg = "#ff3d3d"
  },
  NotifyINFOBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyINFOBorder = {
    bg = "#292b3c",
    fg = "#3e4d77"
  },
  NotifyINFOIcon = {
    fg = "#709dff"
  },
  NotifyINFOTitle = {
    fg = "#709dff"
  },
  NotifyTRACEBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyTRACEBorder = {
    bg = "#292b3c",
    fg = "#51456a"
  },
  NotifyTRACEIcon = {
    fg = "#ad80d4"
  },
  NotifyTRACETitle = {
    fg = "#ad80d4"
  },
  NotifyWARNBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyWARNBorder = {
    bg = "#292b3c",
    fg = "#695944"
  },
  NotifyWARNIcon = {
    fg = "#fec456"
  },
  NotifyWARNTitle = {
    fg = "#fec456"
  },
  Number = {
    fg = "#ffab84"
  },
  NvimTreeEmptyFolderName = {
    fg = "#ccdcfe"
  },
  NvimTreeEndOfBuffer = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  NvimTreeFolderArrowClose = {
    fg = "#a8a9b2"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#709dff"
  },
  NvimTreeFolderName = {
    fg = "#6dc9dd"
  },
  NvimTreeGitDeleted = {
    fg = "#ff3d3d"
  },
  NvimTreeGitDirty = {
    fg = "#fec456"
  },
  NvimTreeGitNew = {
    fg = "#56fe86"
  },
  NvimTreeImageFile = {
    fg = "#8667a1"
  },
  NvimTreeIndentMarker = {
    fg = "#4b4c58"
  },
  NvimTreeNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NvimTreeNormalNC = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NvimTreeOpenedFile = {
    bg = "#4b4c58"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#ad80d4"
  },
  NvimTreeSpecialFile = {
    fg = "#e1d0f0",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#cbaee4"
  },
  NvimTreeVertSplit = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  NvimTreeWinSeparator = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  Operator = {
    fg = "#feceb7"
  },
  Pmenu = {
    bg = "#4b4c58",
    fg = "#f9fbff"
  },
  PmenuSbar = {
    fg = "#1a1c27"
  },
  PmenuSel = {
    bg = "#cbaee4",
    fg = "#292b3c"
  },
  PmenuThumb = {
    fg = "#6a6c7a"
  },
  PreCondit = {
    fg = "#9d7abc"
  },
  PreProc = {
    fg = "#9d7abc"
  },
  Question = {
    bold = true,
    fg = "#fec456"
  },
  QuickFixLine = {
    fg = "#6d91dd",
    underline = true
  },
  RainbowDelimiterBlue = {
    fg = "#709dff"
  },
  RainbowDelimiterCyan = {
    fg = "#70e4ff"
  },
  RainbowDelimiterGreen = {
    fg = "#56fe86"
  },
  RainbowDelimiterOrange = {
    fg = "#ff7a3d"
  },
  RainbowDelimiterRed = {
    fg = "#ff3d3d"
  },
  RainbowDelimiterViolet = {
    fg = "#ad80d4"
  },
  RainbowDelimiterYellow = {
    fg = "#fec456"
  },
  RenameBorder = {
    link = "DiagnosticBorder"
  },
  RenameNormal = {
    link = "DiagnosticNormal"
  },
  Repeat = {
    fg = "#dd82c2"
  },
  SagaBorder = {
    link = "DiagnosticBorder"
  },
  SagaCount = {
    bg = "NONE",
    bold = true,
    fg = "#ff89db"
  },
  SagaFinderFname = {
    fg = "#70e4ff"
  },
  SagaInCurrent = {
    fg = "#292b3c"
  },
  SagaNormal = {
    link = "DiagnosticNormal"
  },
  SagaSelect = {
    fg = "#ff3d3d"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#ff3d3d"
  },
  ScrollbarErrorHandle = {
    bg = "#4b4c58",
    fg = "#ff3d3d"
  },
  ScrollbarHandle = {
    bg = "#4b4c58",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#70e4ff"
  },
  ScrollbarHintHandle = {
    bg = "#4b4c58",
    fg = "#70e4ff"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#709dff"
  },
  ScrollbarInfoHandle = {
    bg = "#4b4c58",
    fg = "#709dff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#ad80d4"
  },
  ScrollbarMiscHandle = {
    bg = "#4b4c58",
    fg = "#ad80d4"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff7a3d"
  },
  ScrollbarSearchHandle = {
    bg = "#4b4c58",
    fg = "#ff7a3d"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#fec456"
  },
  ScrollbarWarnHandle = {
    bg = "#4b4c58",
    fg = "#fec456"
  },
  Search = {
    bg = "#deaf58",
    fg = "#292b3c"
  },
  SignColumn = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  SignColumnSB = {
    fg = "#4b4c58"
  },
  Sneak = {
    bg = "#ff89db",
    fg = "#4b4c58"
  },
  SneakScope = {
    bg = "#0e0e15"
  },
  Special = {
    fg = "#ffab84"
  },
  SpecialChar = {
    fg = "#58de7e"
  },
  SpecialComment = {
    fg = "#a8a9b2",
    style = {
      italic = true
    }
  },
  SpecialKey = {
    fg = "#6a6c7a"
  },
  SpellBad = {
    sp = "#ff8484",
    undercurl = true
  },
  SpellCap = {
    sp = "#cbaee4",
    undercurl = true
  },
  SpellLocal = {
    sp = "#adf0fe",
    undercurl = true
  },
  SpellRare = {
    sp = "#ffdb99",
    undercurl = true
  },
  Statement = {
    fg = "#ad80d4"
  },
  StatusLine = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  StatusLineTerm = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  StorageClass = {
    fg = "#fec456"
  },
  String = {
    fg = "#9effb9"
  },
  Structure = {
    fg = "#fec456"
  },
  Substitute = {
    bg = "#feb7e9",
    fg = "#292b3c"
  },
  TSAnnotation = {
    fg = "#f9fbff"
  },
  TSAttribute = {
    fg = "#70e4ff"
  },
  TSBoolean = {
    fg = "#ff7a3d"
  },
  TSCharacter = {
    fg = "#ff7a3d"
  },
  TSComment = {
    fg = "#a8a9b2",
    style = {
      italic = true
    }
  },
  TSConditional = {
    fg = "#ad80d4"
  },
  TSConstBuiltin = {
    fg = "#ff7a3d"
  },
  TSConstMacro = {
    fg = "#ff7a3d"
  },
  TSConstant = {
    fg = "#ff7a3d"
  },
  TSConstructor = {
    bold = true,
    fg = "#fec456"
  },
  TSDanger = {
    fg = "#f9fbff"
  },
  TSEmphasis = {
    fg = "#f9fbff",
    italic = true
  },
  TSEnvironment = {
    fg = "#f9fbff"
  },
  TSEnvironmentName = {
    fg = "#f9fbff"
  },
  TSError = {
    fg = "#f9fbff"
  },
  TSException = {
    fg = "#ad80d4"
  },
  TSField = {
    fg = "#70e4ff"
  },
  TSFloat = {
    fg = "#ff7a3d"
  },
  TSFuncBuiltin = {
    fg = "#70e4ff"
  },
  TSFuncMacro = {
    fg = "#70e4ff"
  },
  TSFunction = {
    fg = "#709dff"
  },
  TSInclude = {
    fg = "#ad80d4"
  },
  TSKeyword = {
    fg = "#ad80d4"
  },
  TSKeywordFunction = {
    fg = "#ad80d4"
  },
  TSKeywordOperator = {
    fg = "#ad80d4"
  },
  TSLabel = {
    fg = "#ff3d3d"
  },
  TSLiteral = {
    fg = "#56fe86"
  },
  TSMath = {
    fg = "#f9fbff"
  },
  TSMethod = {
    fg = "#709dff"
  },
  TSNamespace = {
    fg = "#fec456"
  },
  TSNodeKey = {
    bold = true,
    fg = "#ff89db"
  },
  TSNodeUnmatched = {
    fg = "#1a1c27"
  },
  TSNone = {
    fg = "#f9fbff"
  },
  TSNote = {
    fg = "#f9fbff"
  },
  TSNumber = {
    fg = "#ff7a3d"
  },
  TSOperator = {
    fg = "#f9fbff"
  },
  TSParameter = {
    fg = "#ff3d3d"
  },
  TSParameterReference = {
    fg = "#f9fbff"
  },
  TSProperty = {
    fg = "#70e4ff"
  },
  TSPunctBracket = {
    fg = "#b9bac0"
  },
  TSPunctDelimiter = {
    fg = "#b9bac0"
  },
  TSPunctSpecial = {
    fg = "#ff3d3d"
  },
  TSRainbowBlue = {
    fg = "#709dff"
  },
  TSRainbowCyan = {
    fg = "#70e4ff"
  },
  TSRainbowGreen = {
    fg = "#56fe86"
  },
  TSRainbowOrange = {
    fg = "#ff7a3d"
  },
  TSRainbowRed = {
    fg = "#ff3d3d"
  },
  TSRainbowViolet = {
    fg = "#ad80d4"
  },
  TSRainbowYellow = {
    fg = "#fec456"
  },
  TSRepeat = {
    fg = "#ad80d4"
  },
  TSStrike = {
    fg = "#f9fbff",
    strikethrough = true
  },
  TSString = {
    fg = "#56fe86"
  },
  TSStringEscape = {
    fg = "#ff3d3d"
  },
  TSStringRegex = {
    fg = "#ff7a3d"
  },
  TSStrong = {
    bold = true,
    fg = "#f9fbff"
  },
  TSSymbol = {
    fg = "#70e4ff"
  },
  TSTag = {
    fg = "#ad80d4"
  },
  TSTagDelimiter = {
    fg = "#ad80d4"
  },
  TSText = {
    fg = "#f9fbff"
  },
  TSTextReference = {
    fg = "#709dff"
  },
  TSTitle = {
    bold = true,
    fg = "#ff7a3d"
  },
  TSType = {
    fg = "#fec456"
  },
  TSTypeBuiltin = {
    fg = "#ff7a3d"
  },
  TSURI = {
    fg = "#70e4ff",
    underline = true
  },
  TSUnderline = {
    fg = "#f9fbff",
    underline = true
  },
  TSVariable = {
    fg = "#f9fbff"
  },
  TSVariableBuiltin = {
    fg = "#ff3d3d"
  },
  TSWarning = {
    fg = "#f9fbff"
  },
  TabLine = {
    bg = "#4b4c58",
    fg = "#f9fbff"
  },
  TabLineFill = {
    bg = "#4b4c58",
    fg = "#a8a9b2"
  },
  TabLineSel = {
    bg = "#f9fbff",
    fg = "#292b3c"
  },
  Tag = {
    fg = "#56fe86"
  },
  TelescopeBorder = {
    bg = "#1a1c27",
    fg = "#ad80d4"
  },
  TelescopeNormal = {
    bg = "#1a1c27",
    fg = "#f9fbff"
  },
  Terminal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  Title = {
    fg = "#ad80d4"
  },
  Todo = {
    bg = "#292b3c",
    bold = true,
    fg = "#ff8484"
  },
  ToolbarLine = {
    fg = "#f9fbff"
  },
  TreesitterContext = {
    bg = "#8667a1"
  },
  TroubleCount = {
    fg = "#ff89db"
  },
  TroubleNormal = {
    fg = "#4b4c58"
  },
  TroubleText = {
    fg = "#4b4c58"
  },
  Type = {
    fg = "#ffdb99"
  },
  Typedef = {
    fg = "#fec456"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#292b3c"
  },
  Visual = {
    bg = "#4b4c58"
  },
  VisualNOS = {
    bg = "#4b4c58",
    underline = true
  },
  WarningMsg = {
    bold = true,
    fg = "#ffab84"
  },
  WhichKey = {
    fg = "#70e4ff"
  },
  WhichKeyDesc = {
    fg = "#ff89db"
  },
  WhichKeyFloat = {
    bg = "#292b3c"
  },
  WhichKeyGroup = {
    fg = "#709dff"
  },
  WhichKeySeparator = {
    fg = "#1a1c27"
  },
  WhichKeySeperator = {
    fg = "#1a1c27"
  },
  WhichKeyValue = {
    fg = "#ad80d4"
  },
  Whitespace = {
    fg = "#6a6c7a"
  },
  WildMenu = {
    bg = "#8667a1",
    fg = "#292b3c"
  },
  WinSeparator = {
    bold = true,
    fg = "#14151e"
  },
  debugBreakpoint = {
    bg = "#1a1c27",
    fg = "#dd4040"
  },
  debugPC = {
    bg = "#292b3c",
    fg = "#fed6f2"
  },
  diffAdded = {
    fg = "#56fe86"
  },
  diffChanged = {
    fg = "#fec456"
  },
  diffFile = {
    fg = "#709dff"
  },
  diffIndexLine = {
    fg = "#ff89db"
  },
  diffLine = {
    fg = "#1a1c27"
  },
  diffNewFile = {
    fg = "#ff7a3d"
  },
  diffOldFile = {
    fg = "#ad80d4"
  },
  diffRemoved = {
    fg = "#ff3d3d"
  },
  healthError = {
    fg = "#ff3d3d"
  },
  healthSuccess = {
    fg = "#56fe86"
  },
  healthWarning = {
    fg = "#fec456"
  },
  iCursor = {
    reverse = true
  },
  illuminatedCurWord = {
    bg = "#8667a1"
  },
  illuminatedWord = {
    bg = "#8667a1"
  },
  lCursor = {
    reverse = true
  },
  rainbowcol1 = {
    fg = "#ff3d3d"
  },
  rainbowcol2 = {
    fg = "#ff7a3d"
  },
  rainbowcol3 = {
    fg = "#fec456"
  },
  rainbowcol4 = {
    fg = "#56fe86"
  },
  rainbowcol5 = {
    fg = "#70e4ff"
  },
  rainbowcol6 = {
    fg = "#709dff"
  },
  rainbowcol7 = {
    fg = "#ff89db"
  },
  vCursor = {
    reverse = true
  }
}
