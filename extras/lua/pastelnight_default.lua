local colors = {
  base = "#f9fbff",
  base100 = "#b9bac0",
  base200 = "#8d8e9a",
  base300 = "#636572",
  base400 = "#3b3d4d",
  base50 = "#e6e7e9",
  base500 = "#292b3c",
  base600 = "#222434",
  base700 = "#1c1e2b",
  base800 = "#161721",
  base900 = "#0f1019",
  bg = "#292b3c",
  bg_float = "#222434",
  bg_popup = "#292b3c",
  bg_sidebar = "#292b3c",
  bg_statusline = "#292b3c",
  black = "#212230",
  blue = "#7fa7ff",
  blue100 = "#a8c3ff",
  blue200 = "#7fa7ff",
  blue300 = "#6d91dd",
  blue400 = "#5f7dbd",
  blue50 = "#ccdcfe",
  border = "#212230",
  error = "#fe4c4c",
  fg = "#f9fbff",
  fg_float = "#f9fbff",
  green = "#65ff91",
  green100 = "#9effb9",
  green200 = "#65ff91",
  green300 = "#58de7e",
  green400 = "#4bbe6b",
  green50 = "#ccfeda",
  hint = "#7fe7ff",
  info = "#7fa7ff",
  none = "NONE",
  orange = "#fe854c",
  orange100 = "#ffab84",
  orange200 = "#fe854c",
  orange300 = "#dd7240",
  orange400 = "#bd6137",
  orange50 = "#feceb7",
  pink = "#ff99e0",
  pink100 = "#feb7e9",
  pink200 = "#ff99e0",
  pink300 = "#dd82c2",
  pink400 = "#be6ea6",
  pink50 = "#fed6f2",
  purple = "#b58cd8",
  purple100 = "#cbaee4",
  purple200 = "#b58cd8",
  purple300 = "#9d7abc",
  purple400 = "#8667a1",
  purple50 = "#e1d0f0",
  red = "#fe4c4c",
  red100 = "#ff8484",
  red200 = "#fe4c4c",
  red300 = "#dd4040",
  red400 = "#bd3737",
  red50 = "#feb7b7",
  sky = "#7fe7ff",
  sky100 = "#adf0fe",
  sky200 = "#7fe7ff",
  sky300 = "#6dc9dd",
  sky400 = "#5aabbd",
  sky50 = "#d1f6ff",
  warning = "#ffc965",
  yellow = "#ffc965",
  yellow100 = "#ffdb99",
  yellow200 = "#ffc965",
  yellow300 = "#deaf58",
  yellow400 = "#be954b",
  yellow50 = "#fee6b7"
}

local highlights = {
  ["@annotation"] = {
    fg = "#f9fbff"
  },
  ["@attribute"] = {
    fg = "#7fe7ff"
  },
  ["@attribute.typescript"] = {
    fg = "#7fa7ff"
  },
  ["@boolean"] = {
    fg = "#fe854c"
  },
  ["@character"] = {
    fg = "#fe854c"
  },
  ["@comment"] = {
    fg = "#8d8e9a",
    style = {
      italic = true
    }
  },
  ["@comment.todo"] = {
    fg = "#fe4c4c",
    style = {
      italic = true
    }
  },
  ["@comment.todo.checked"] = {
    fg = "#65ff91",
    style = {
      italic = true
    }
  },
  ["@comment.todo.unchecked"] = {
    fg = "#fe4c4c",
    style = {
      italic = true
    }
  },
  ["@conditional"] = {
    fg = "#b58cd8"
  },
  ["@constant"] = {
    fg = "#fe854c"
  },
  ["@constant.builtin"] = {
    fg = "#fe854c"
  },
  ["@constant.macro"] = {
    fg = "#fe854c"
  },
  ["@constructor"] = {
    bold = true,
    fg = "#ffc965"
  },
  ["@constructor.tsx"] = {
    fg = "#ffc965"
  },
  ["@danger"] = {
    fg = "#f9fbff"
  },
  ["@diff.add"] = {
    fg = "#65ff91"
  },
  ["@diff.delete"] = {
    fg = "#fe4c4c"
  },
  ["@error"] = {
    fg = "#f9fbff"
  },
  ["@exception"] = {
    fg = "#b58cd8"
  },
  ["@field"] = {
    fg = "#7fe7ff"
  },
  ["@float"] = {
    fg = "#fe854c"
  },
  ["@function"] = {
    fg = "#7fa7ff"
  },
  ["@function.builtin"] = {
    fg = "#7fe7ff"
  },
  ["@function.macro"] = {
    fg = "#7fe7ff"
  },
  ["@function.method"] = {
    fg = "#7fa7ff"
  },
  ["@include"] = {
    fg = "#b58cd8"
  },
  ["@keyword"] = {
    fg = "#b58cd8"
  },
  ["@keyword.conditional"] = {
    fg = "#b58cd8"
  },
  ["@keyword.directive"] = {
    fg = "#b58cd8"
  },
  ["@keyword.exception"] = {
    fg = "#b58cd8"
  },
  ["@keyword.function"] = {
    fg = "#b58cd8"
  },
  ["@keyword.import"] = {
    fg = "#b58cd8"
  },
  ["@keyword.operator"] = {
    fg = "#b58cd8"
  },
  ["@keyword.repeat"] = {
    fg = "#b58cd8"
  },
  ["@label"] = {
    fg = "#fe4c4c"
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
    sp = "#fe4c4c",
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
    fg = "#fe854c"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#fe4c4c"
  },
  ["@markup.heading.1.marker.markdown"] = {
    bold = true,
    fg = "#fe4c4c"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#b58cd8"
  },
  ["@markup.heading.2.marker.markdown"] = {
    bold = true,
    fg = "#b58cd8"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#fe854c"
  },
  ["@markup.heading.3.marker.markdown"] = {
    bold = true,
    fg = "#fe854c"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#fe4c4c"
  },
  ["@markup.heading.4.marker.markdown"] = {
    bold = true,
    fg = "#fe4c4c"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#b58cd8"
  },
  ["@markup.heading.5.marker.markdown"] = {
    bold = true,
    fg = "#b58cd8"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#fe854c"
  },
  ["@markup.heading.6.marker.markdown"] = {
    bold = true,
    fg = "#fe854c"
  },
  ["@markup.link"] = {
    fg = "#7fa7ff"
  },
  ["@markup.link.url"] = {
    fg = "#7fe7ff",
    underline = true
  },
  ["@markup.list"] = {
    fg = "#fe4c4c"
  },
  ["@markup.math"] = {
    fg = "#f9fbff"
  },
  ["@markup.raw"] = {
    fg = "#65ff91"
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
    fg = "#7fa7ff"
  },
  ["@module"] = {
    fg = "#ffc965"
  },
  ["@namespace"] = {
    fg = "#ffc965"
  },
  ["@none"] = {
    fg = "#f9fbff"
  },
  ["@note"] = {
    fg = "#f9fbff"
  },
  ["@number"] = {
    fg = "#fe854c"
  },
  ["@number.float"] = {
    fg = "#fe854c"
  },
  ["@operator"] = {
    fg = "#f9fbff"
  },
  ["@parameter"] = {
    fg = "#fe4c4c"
  },
  ["@parameter.reference"] = {
    fg = "#f9fbff"
  },
  ["@preproc"] = {
    fg = "#b58cd8"
  },
  ["@property"] = {
    fg = "#7fe7ff"
  },
  ["@punctuation.special"] = {
    fg = "#fe4c4c"
  },
  ["@repeat"] = {
    fg = "#b58cd8"
  },
  ["@string"] = {
    fg = "#65ff91"
  },
  ["@string.escape"] = {
    fg = "#fe4c4c"
  },
  ["@string.regex"] = {
    fg = "#fe854c"
  },
  ["@string.regexp"] = {
    fg = "#fe854c"
  },
  ["@string.special.symbol"] = {
    fg = "#7fe7ff"
  },
  ["@tag"] = {
    fg = "#b58cd8"
  },
  ["@tag.attribute"] = {
    fg = "#fe854c"
  },
  ["@tag.delimiter"] = {
    fg = "#b58cd8"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#fe854c"
  },
  ["@tag.tsx"] = {
    fg = "#65ff91"
  },
  ["@text"] = {
    fg = "#f9fbff"
  },
  ["@text.danger"] = {
    bg = "#fe4c4c",
    fg = "#bd3737"
  },
  ["@text.diff.add"] = {
    fg = "#65ff91"
  },
  ["@text.diff.delete"] = {
    fg = "#fe4c4c"
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
    fg = "#65ff91"
  },
  ["@text.literal.markdown"] = {
    fg = "#fe4c4c"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#4bbe6b",
    fg = "#ffc965"
  },
  ["@text.math"] = {
    fg = "#f9fbff"
  },
  ["@text.reference"] = {
    fg = "#7fa7ff"
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
    fg = "#fe854c"
  },
  ["@text.todo"] = {
    fg = "#fe4c4c",
    style = {
      italic = true
    }
  },
  ["@text.todo.checked"] = {
    fg = "#65ff91",
    style = {
      italic = true
    }
  },
  ["@text.todo.unchecked"] = {
    fg = "#fe4c4c",
    style = {
      italic = true
    }
  },
  ["@text.underline"] = {
    fg = "#f9fbff",
    underline = true
  },
  ["@text.uri"] = {
    fg = "#7fe7ff",
    underline = true
  },
  ["@text.warning"] = {
    bg = "#ffc965",
    fg = "#be954b"
  },
  ["@type"] = {
    fg = "#ffc965"
  },
  ["@type.builtin"] = {
    fg = "#fe854c"
  },
  ["@variable"] = {
    fg = "#f9fbff"
  },
  ["@variable.builtin"] = {
    fg = "#fe4c4c"
  },
  ["@variable.member"] = {
    fg = "#7fe7ff"
  },
  ["@variable.parameter"] = {
    fg = "#fe4c4c"
  },
  ["@warning"] = {
    fg = "#f9fbff"
  },
  AlphaButtons = {
    fg = "#7fe7ff"
  },
  AlphaFooter = {
    fg = "#7fe7ff"
  },
  AlphaHeader = {
    fg = "#7fa7ff"
  },
  AlphaHeaderLabel = {
    fg = "#fe854c"
  },
  AlphaShortcut = {
    fg = "#fe854c"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#dd7240"
  },
  BufferAlternate = {
    bg = "#222434",
    fg = "#f9fbff"
  },
  BufferAlternateERROR = {
    bg = "#222434",
    fg = "#fe4c4c"
  },
  BufferAlternateHINT = {
    bg = "#222434",
    fg = "#7fe7ff"
  },
  BufferAlternateINFO = {
    bg = "#222434",
    fg = "#7fa7ff"
  },
  BufferAlternateIndex = {
    bg = "#222434",
    fg = "#7fa7ff"
  },
  BufferAlternateMod = {
    bg = "#222434",
    fg = "#ffc965"
  },
  BufferAlternateSign = {
    bg = "#222434",
    fg = "#7fa7ff"
  },
  BufferAlternateTarget = {
    bg = "#222434",
    fg = "#fe4c4c"
  },
  BufferAlternateWARN = {
    bg = "#222434",
    fg = "#ffc965"
  },
  BufferCurrent = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  BufferCurrentERROR = {
    bg = "#292b3c",
    fg = "#fe4c4c"
  },
  BufferCurrentHINT = {
    bg = "#292b3c",
    fg = "#7fe7ff"
  },
  BufferCurrentINFO = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferCurrentIndex = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferCurrentMod = {
    bg = "#292b3c",
    fg = "#ffc965"
  },
  BufferCurrentSign = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  BufferCurrentTarget = {
    bg = "#292b3c",
    fg = "#fe4c4c"
  },
  BufferCurrentWARN = {
    bg = "#292b3c",
    fg = "#ffc965"
  },
  BufferInactive = {
    bg = "#303243",
    fg = "#9979b9"
  },
  BufferInactiveERROR = {
    bg = "#303243",
    fg = "#d34549"
  },
  BufferInactiveHINT = {
    bg = "#303243",
    fg = "#6ec1d8"
  },
  BufferInactiveINFO = {
    bg = "#303243",
    fg = "#6e8ed8"
  },
  BufferInactiveIndex = {
    bg = "#303243",
    fg = "#b58cd8"
  },
  BufferInactiveMod = {
    bg = "#303243",
    fg = "#d4a95d"
  },
  BufferInactiveSign = {
    bg = "#303243",
    fg = "#292b3c"
  },
  BufferInactiveTarget = {
    bg = "#303243",
    fg = "#fe4c4c"
  },
  BufferInactiveWARN = {
    bg = "#303243",
    fg = "#d4a95d"
  },
  BufferOffset = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  BufferTabpageFill = {
    bg = "#37394a",
    fg = "#b58cd8"
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
    fg = "#fe4c4c"
  },
  BufferVisibleHINT = {
    bg = "#292b3c",
    fg = "#7fe7ff"
  },
  BufferVisibleINFO = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferVisibleIndex = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferVisibleMod = {
    bg = "#292b3c",
    fg = "#ffc965"
  },
  BufferVisibleSign = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferVisibleTarget = {
    bg = "#292b3c",
    fg = "#fe4c4c"
  },
  BufferVisibleWARN = {
    bg = "#292b3c",
    fg = "#ffc965"
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
    fg = "#fe4c4c"
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
    fg = "#7fe7ff"
  },
  BufferlineIndicatorSelected = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  BufferlineInfo = {
    bg = "#292b3c"
  },
  BufferlineInfoDiagnostic = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  BufferlineModified = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  BufferlineModifiedSelected = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  BufferlineModifiedVisible = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  BufferlineSelected = {
    bg = "#292b3c",
    bold = false,
    fg = "#b58cd8",
    italic = false
  },
  BufferlineSeparator = {
    bg = "#292b3c",
    fg = "#292b3c"
  },
  BufferlineVisible = {
    bg = "#b58cd8"
  },
  BufferlineWarning = {
    bg = "#292b3c"
  },
  BufferlineWarningDiagnostic = {
    bg = "#292b3c",
    fg = "#ffc965"
  },
  Character = {
    fg = "#fe854c"
  },
  CmpDocumentation = {
    bg = "#222434",
    fg = "#f9fbff"
  },
  CmpDocumentationBorder = {
    bg = "#222434",
    fg = "#1c1e2b"
  },
  CmpGhostText = {
    fg = "#222434"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#f9fbff"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#222434",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#b58cd8"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#b58cd8"
  },
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#222434"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#ffc965"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#b58cd8"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#fe854c"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#222434"
  },
  ColorColumn = {
    bg = "#3b3d4d"
  },
  Comment = {
    fg = "#8d8e9a",
    style = {
      italic = true
    }
  },
  Conceal = {
    bg = "#3b3d4d",
    fg = "#8d8e9a"
  },
  Conditional = {
    fg = "#b58cd8"
  },
  Constant = {
    fg = "#7fe7ff"
  },
  Cursor = {
    reverse = true
  },
  CursorColumn = {
    bg = "#3b3d4d"
  },
  CursorIM = {
    reverse = true
  },
  CursorLine = {
    bg = "#3b3d4d"
  },
  CursorLineNr = {
    fg = "#fee6b7"
  },
  DapStoppedLine = {
    bg = "#deaf58"
  },
  DashboardCenter = {
    fg = "#ff99e0"
  },
  DashboardFooter = {
    fg = "#ffc965",
    italic = true
  },
  DashboardHeader = {
    fg = "#7fa7ff"
  },
  DashboardShortCut = {
    fg = "#7fe7ff"
  },
  Debug = {
    fg = "#fe854c"
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
    fg = "#fe4c4c"
  },
  DiagnosticHint = {
    fg = "#7fe7ff"
  },
  DiagnosticInfo = {
    fg = "#7fa7ff"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
  DiagnosticNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  DiagnosticUnderlineError = {
    sp = "#fe4c4c",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#7fe7ff",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#7fa7ff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ffc965",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#636572"
  },
  DiagnosticVirtualTextError = {
    fg = "#fe4c4c"
  },
  DiagnosticVirtualTextHint = {
    fg = "#7fe7ff"
  },
  DiagnosticVirtualTextInfo = {
    fg = "#a8c3ff"
  },
  DiagnosticVirtualTextWarn = {
    fg = "#ffdb99"
  },
  DiagnosticWarn = {
    fg = "#ffc965"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#65ff91",
    fg = "NONE"
  },
  DiffChange = {
    bg = "#ffc965",
    fg = "NONE"
  },
  DiffDelete = {
    bg = "#fe4c4c",
    fg = "NONE"
  },
  DiffText = {
    bg = "#7fa7ff",
    fg = "NONE"
  },
  Directory = {
    fg = "#7fa7ff"
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
    fg = "#fe4c4c"
  },
  Exception = {
    fg = "#cbaee4"
  },
  FernBranchText = {
    fg = "#b58cd8"
  },
  FlashBackdrop = {
    fg = "#222434"
  },
  FlashLabel = {
    bg = "#ff99e0",
    bold = true,
    fg = "#f9fbff"
  },
  Float = {
    fg = "#ffab84"
  },
  FloatBorder = {
    bg = "#222434",
    fg = "#b58cd8"
  },
  FloatTitle = {
    bg = "#222434",
    fg = "#8d8e9a"
  },
  FoldColumn = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  Folded = {
    bg = "#3b3d4d",
    fg = "#8d8e9a"
  },
  Function = {
    fg = "#7fa7ff"
  },
  GitGutterAdd = {
    fg = "#65ff91"
  },
  GitGutterAddLineNr = {
    fg = "#65ff91"
  },
  GitGutterChange = {
    fg = "#ffc965"
  },
  GitGutterChangeLineNr = {
    fg = "#ffc965"
  },
  GitGutterDelete = {
    fg = "#fe4c4c"
  },
  GitGutterDeleteLineNr = {
    fg = "#fe4c4c"
  },
  GitSignsAdd = {
    fg = "#65ff91"
  },
  GitSignsChange = {
    fg = "#ffc965"
  },
  GitSignsDelete = {
    fg = "#fe4c4c"
  },
  GlyphPalette1 = {
    fg = "#fe4c4c"
  },
  GlyphPalette2 = {
    fg = "#65ff91"
  },
  GlyphPalette3 = {
    fg = "#ffc965"
  },
  GlyphPalette4 = {
    fg = "#7fa7ff"
  },
  GlyphPalette6 = {
    fg = "#7fe7ff"
  },
  GlyphPalette7 = {
    fg = "#f9fbff"
  },
  GlyphPalette9 = {
    fg = "#fe4c4c"
  },
  Hlargs = {
    fg = "#ffc965"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff99e0"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#b58cd8"
  },
  HopNextKey2 = {
    fg = "#9d7abc"
  },
  HopUnmatched = {
    fg = "#222434"
  },
  HoverBorder = {
    link = "DiagnosticBorder"
  },
  HoverNormal = {
    link = "DiagnosticNormal"
  },
  IblIndent = {
    fg = "#3b3d4d",
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
    fg = "#b58cd8"
  },
  LazyNoCond = {
    fg = "#8d8e9a"
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
    fg = "#222434"
  },
  LeapLabelPrimary = {
    bold = true,
    fg = "#ff99e0"
  },
  LeapLabelSecondary = {
    bold = true,
    fg = "#7fe7ff"
  },
  LeapMatch = {
    bg = "#ff99e0",
    bold = true,
    fg = "#f9fbff"
  },
  LightspeedGreyWash = {
    fg = "#222434"
  },
  LightspeedLabel = {
    bold = true,
    fg = "#ff99e0",
    underline = true
  },
  LightspeedLabelDistant = {
    bold = true,
    fg = "#7fe7ff",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#7fe7ff",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#ff99e0",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#fe854c"
  },
  LightspeedOneCharMatch = {
    bg = "#ff99e0",
    bold = true,
    fg = "#f9fbff"
  },
  LightspeedPendingOpArea = {
    bg = "#ff99e0",
    fg = "#f9fbff"
  },
  LightspeedShortcut = {
    bg = "#ff99e0",
    bold = true,
    fg = "#f9fbff",
    underline = true
  },
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#b58cd8"
  },
  LineNr = {
    fg = "#636572"
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
    fg = "#7fa7ff"
  },
  LspSagaCodeActionContent = {
    fg = "#fe4c4c"
  },
  LspSagaCodeActionTitle = {
    fg = "#7fe7ff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#65ff91"
  },
  LspSagaDefPreviewTitle = {
    fg = "#ccfeda"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#fe4c4c"
  },
  Macro = {
    fg = "#fe4c4c"
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
    bg = "#ff99e0",
    fg = "#ff99e0"
  },
  MasonHighlightBlockBold = {
    bg = "#b58cd8",
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
    fg = "#636572"
  },
  MasonNormal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  MatchParen = {
    bg = "#8d8e9a",
    fg = "NONE"
  },
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#222434"
  },
  MiniCursorwordCurrent = {
    bg = "#222434"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#9d7abc",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff99e0",
    fg = "#e6e7e9"
  },
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff99e0",
    nocombine = true
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ffc965",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#7fa7ff"
  },
  MiniStarterInactive = {
    fg = "#222434",
    style = {
      italic = true
    }
  },
  MiniStarterItem = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  MiniStarterItemBullet = {
    fg = "#222434"
  },
  MiniStarterItemPrefix = {
    fg = "#ffc965"
  },
  MiniStarterQuery = {
    fg = "#7fa7ff"
  },
  MiniStarterSection = {
    fg = "#b58cd8"
  },
  MiniStatuslineDevinfo = {
    bg = "#3b3d4d",
    fg = "#222434"
  },
  MiniStatuslineFileinfo = {
    bg = "#3b3d4d",
    fg = "#222434"
  },
  MiniStatuslineFilename = {
    bg = "#3b3d4d",
    fg = "#222434"
  },
  MiniStatuslineInactive = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  MiniStatuslineModeCommand = {
    bg = "#ffc965",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeInsert = {
    bg = "#65ff91",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeNormal = {
    bg = "#7fa7ff",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeOther = {
    bg = "#7fe7ff",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeReplace = {
    bg = "#fe4c4c",
    bold = true,
    fg = "#212230"
  },
  MiniStatuslineModeVisual = {
    bg = "#ff99e0",
    bold = true,
    fg = "#212230"
  },
  MiniSurround = {
    bg = "#fe854c",
    fg = "#212230"
  },
  MiniTablineCurrent = {
    bg = "#222434",
    fg = "#f9fbff"
  },
  MiniTablineFill = {
    bg = "#212230"
  },
  MiniTablineHidden = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  MiniTablineModifiedCurrent = {
    bg = "#222434",
    fg = "#ffc965"
  },
  MiniTablineModifiedHidden = {
    bg = "#292b3c",
    fg = "#bf9a59"
  },
  MiniTablineModifiedVisible = {
    bg = "#292b3c",
    fg = "#ffc965"
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
    fg = "#fe4c4c"
  },
  MiniTestPass = {
    bold = true,
    fg = "#65ff91"
  },
  MiniTrailspace = {
    bg = "#fe4c4c"
  },
  ModeMsg = {
    fg = "#7fa7ff"
  },
  MoreMsg = {
    bold = true,
    fg = "#7fa7ff"
  },
  MsgArea = {
    fg = "#8d8e9a"
  },
  NavicIconsArray = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsBoolean = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsClass = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsConstant = {
    bg = "#292b3c",
    fg = "#ff99e0"
  },
  NavicIconsConstructor = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsEnum = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsEnumMember = {
    bg = "#292b3c",
    fg = "#7fe7ff"
  },
  NavicIconsEvent = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsField = {
    bg = "#292b3c",
    fg = "#7fe7ff"
  },
  NavicIconsFile = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsFunction = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  NavicIconsInterface = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsKey = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  NavicIconsKeyword = {
    bg = "#292b3c",
    fg = "#b58cd8"
  },
  NavicIconsMethod = {
    bg = "#292b3c",
    fg = "#7fa7ff"
  },
  NavicIconsModule = {
    bg = "#292b3c",
    fg = "#ffc965"
  },
  NavicIconsNamespace = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NavicIconsNull = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsNumber = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsObject = {
    bg = "#292b3c",
    fg = "#fe854c"
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
    fg = "#7fe7ff"
  },
  NavicIconsString = {
    bg = "#292b3c",
    fg = "#65ff91"
  },
  NavicIconsStruct = {
    bg = "#292b3c",
    fg = "#fe854c"
  },
  NavicIconsTypeParameter = {
    bg = "#292b3c",
    fg = "#7fe7ff"
  },
  NavicIconsVariable = {
    bg = "#292b3c",
    fg = "#ff99e0"
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
    fg = "#3b3d4d"
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
    fg = "#ff99e0"
  },
  NeogitDiffAddHighlight = {
    bg = "#4bbe6b",
    fg = "#65ff91"
  },
  NeogitDiffContextHighlight = {
    bg = "#1c1e2b",
    fg = "#292b3c"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#bd3737",
    fg = "#fe4c4c"
  },
  NeogitHunkHeader = {
    bg = "#1c1e2b",
    fg = "#3b3d4d"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#1c1e2b",
    fg = "#7fa7ff"
  },
  NeogitRemote = {
    fg = "#b58cd8"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#b58cd8"
  },
  NeotestBorder = {
    fg = "#7fa7ff"
  },
  NeotestDir = {
    fg = "#7fa7ff"
  },
  NeotestExpandMarker = {
    fg = "#3b3d4d"
  },
  NeotestFailed = {
    fg = "#fe4c4c"
  },
  NeotestFile = {
    fg = "#7fe7ff"
  },
  NeotestFocused = {
    fg = "#ffc965"
  },
  NeotestIndent = {
    fg = "#292b3c"
  },
  NeotestMarked = {
    fg = "#7fa7ff"
  },
  NeotestNamespace = {
    fg = "#7fe7ff"
  },
  NeotestPassed = {
    fg = "#65ff91"
  },
  NeotestRunning = {
    fg = "#ffc965"
  },
  NeotestSkipped = {
    fg = "#7fa7ff"
  },
  NeotestTarget = {
    fg = "#7fa7ff"
  },
  NeotestTest = {
    fg = "#292b3c"
  },
  NeotestWinSelect = {
    fg = "#7fa7ff"
  },
  NoiceCompletionItemKindClass = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindConstant = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  NoiceCompletionItemKindConstructor = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#222434"
  },
  NoiceCompletionItemKindEnum = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindEnumMember = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindEvent = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindField = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindFunction = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  NoiceCompletionItemKindInterface = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindKeyword = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindMethod = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  NoiceCompletionItemKindModule = {
    bg = "NONE",
    fg = "#ffc965"
  },
  NoiceCompletionItemKindOperator = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindProperty = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindReference = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  NoiceCompletionItemKindSnippet = {
    bg = "NONE",
    fg = "#b58cd8"
  },
  NoiceCompletionItemKindStruct = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindTypeParameter = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  NoiceCompletionItemKindUnit = {
    bg = "NONE",
    fg = "#fe854c"
  },
  NoiceCompletionItemKindValue = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  NoiceCompletionItemKindVariable = {
    bg = "NONE",
    fg = "#ff99e0"
  },
  NonText = {
    fg = "#3b3d4d"
  },
  Normal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NormalFloat = {
    bg = "#222434",
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
    fg = "#27293a"
  },
  NotifyDEBUGIcon = {
    fg = "#222434"
  },
  NotifyDEBUGTitle = {
    fg = "#222434"
  },
  NotifyERRORBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyERRORBorder = {
    bg = "#292b3c",
    fg = "#693541"
  },
  NotifyERRORIcon = {
    fg = "#fe4c4c"
  },
  NotifyERRORTitle = {
    fg = "#fe4c4c"
  },
  NotifyINFOBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyINFOBorder = {
    bg = "#292b3c",
    fg = "#435077"
  },
  NotifyINFOIcon = {
    fg = "#7fa7ff"
  },
  NotifyINFOTitle = {
    fg = "#7fa7ff"
  },
  NotifyTRACEBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyTRACEBorder = {
    bg = "#292b3c",
    fg = "#53486b"
  },
  NotifyTRACEIcon = {
    fg = "#b58cd8"
  },
  NotifyTRACETitle = {
    fg = "#b58cd8"
  },
  NotifyWARNBody = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  NotifyWARNBorder = {
    bg = "#292b3c",
    fg = "#695a48"
  },
  NotifyWARNIcon = {
    fg = "#ffc965"
  },
  NotifyWARNTitle = {
    fg = "#ffc965"
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
    fg = "#8d8e9a"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  NvimTreeFolderName = {
    fg = "#6dc9dd"
  },
  NvimTreeGitDeleted = {
    fg = "#fe4c4c"
  },
  NvimTreeGitDirty = {
    fg = "#ffc965"
  },
  NvimTreeGitNew = {
    fg = "#65ff91"
  },
  NvimTreeImageFile = {
    fg = "#8667a1"
  },
  NvimTreeIndentMarker = {
    fg = "#3b3d4d"
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
    bg = "#3b3d4d"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#b58cd8"
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
    bg = "#3b3d4d",
    fg = "#f9fbff"
  },
  PmenuSbar = {
    fg = "#222434"
  },
  PmenuSel = {
    bg = "#cbaee4",
    fg = "#292b3c"
  },
  PmenuThumb = {
    fg = "#636572"
  },
  PreCondit = {
    fg = "#9d7abc"
  },
  PreProc = {
    fg = "#9d7abc"
  },
  Question = {
    bold = true,
    fg = "#ffc965"
  },
  QuickFixLine = {
    fg = "#6d91dd",
    underline = true
  },
  RainbowDelimiterBlue = {
    fg = "#7fa7ff"
  },
  RainbowDelimiterCyan = {
    fg = "#7fe7ff"
  },
  RainbowDelimiterGreen = {
    fg = "#65ff91"
  },
  RainbowDelimiterOrange = {
    fg = "#fe854c"
  },
  RainbowDelimiterRed = {
    fg = "#fe4c4c"
  },
  RainbowDelimiterViolet = {
    fg = "#b58cd8"
  },
  RainbowDelimiterYellow = {
    fg = "#ffc965"
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
    fg = "#ff99e0"
  },
  SagaFinderFname = {
    fg = "#7fe7ff"
  },
  SagaInCurrent = {
    fg = "#292b3c"
  },
  SagaNormal = {
    link = "DiagnosticNormal"
  },
  SagaSelect = {
    fg = "#fe4c4c"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#fe4c4c"
  },
  ScrollbarErrorHandle = {
    bg = "#3b3d4d",
    fg = "#fe4c4c"
  },
  ScrollbarHandle = {
    bg = "#3b3d4d",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#7fe7ff"
  },
  ScrollbarHintHandle = {
    bg = "#3b3d4d",
    fg = "#7fe7ff"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#7fa7ff"
  },
  ScrollbarInfoHandle = {
    bg = "#3b3d4d",
    fg = "#7fa7ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#b58cd8"
  },
  ScrollbarMiscHandle = {
    bg = "#3b3d4d",
    fg = "#b58cd8"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#fe854c"
  },
  ScrollbarSearchHandle = {
    bg = "#3b3d4d",
    fg = "#fe854c"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ffc965"
  },
  ScrollbarWarnHandle = {
    bg = "#3b3d4d",
    fg = "#ffc965"
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
    fg = "#3b3d4d"
  },
  Sneak = {
    bg = "#ff99e0",
    fg = "#3b3d4d"
  },
  SneakScope = {
    bg = "#161721"
  },
  Special = {
    fg = "#ffab84"
  },
  SpecialChar = {
    fg = "#58de7e"
  },
  SpecialComment = {
    fg = "#8d8e9a",
    style = {
      italic = true
    }
  },
  SpecialKey = {
    fg = "#636572"
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
    fg = "#b58cd8"
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
    fg = "#ffc965"
  },
  String = {
    fg = "#9effb9"
  },
  Structure = {
    fg = "#ffc965"
  },
  Substitute = {
    bg = "#feb7e9",
    fg = "#292b3c"
  },
  TSAnnotation = {
    fg = "#f9fbff"
  },
  TSAttribute = {
    fg = "#7fe7ff"
  },
  TSBoolean = {
    fg = "#fe854c"
  },
  TSCharacter = {
    fg = "#fe854c"
  },
  TSComment = {
    fg = "#8d8e9a",
    style = {
      italic = true
    }
  },
  TSConditional = {
    fg = "#b58cd8"
  },
  TSConstBuiltin = {
    fg = "#fe854c"
  },
  TSConstMacro = {
    fg = "#fe854c"
  },
  TSConstant = {
    fg = "#fe854c"
  },
  TSConstructor = {
    bold = true,
    fg = "#ffc965"
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
    fg = "#b58cd8"
  },
  TSField = {
    fg = "#7fe7ff"
  },
  TSFloat = {
    fg = "#fe854c"
  },
  TSFuncBuiltin = {
    fg = "#7fe7ff"
  },
  TSFuncMacro = {
    fg = "#7fe7ff"
  },
  TSFunction = {
    fg = "#7fa7ff"
  },
  TSInclude = {
    fg = "#b58cd8"
  },
  TSKeyword = {
    fg = "#b58cd8"
  },
  TSKeywordFunction = {
    fg = "#b58cd8"
  },
  TSKeywordOperator = {
    fg = "#b58cd8"
  },
  TSLabel = {
    fg = "#fe4c4c"
  },
  TSLiteral = {
    fg = "#65ff91"
  },
  TSMath = {
    fg = "#f9fbff"
  },
  TSMethod = {
    fg = "#7fa7ff"
  },
  TSNamespace = {
    fg = "#ffc965"
  },
  TSNodeKey = {
    bold = true,
    fg = "#ff99e0"
  },
  TSNodeUnmatched = {
    fg = "#222434"
  },
  TSNone = {
    fg = "#f9fbff"
  },
  TSNote = {
    fg = "#f9fbff"
  },
  TSNumber = {
    fg = "#fe854c"
  },
  TSOperator = {
    fg = "#f9fbff"
  },
  TSParameter = {
    fg = "#fe4c4c"
  },
  TSParameterReference = {
    fg = "#f9fbff"
  },
  TSProperty = {
    fg = "#7fe7ff"
  },
  TSPunctBracket = {
    fg = "#b9bac0"
  },
  TSPunctDelimiter = {
    fg = "#b9bac0"
  },
  TSPunctSpecial = {
    fg = "#fe4c4c"
  },
  TSRainbowBlue = {
    fg = "#7fa7ff"
  },
  TSRainbowCyan = {
    fg = "#7fe7ff"
  },
  TSRainbowGreen = {
    fg = "#65ff91"
  },
  TSRainbowOrange = {
    fg = "#fe854c"
  },
  TSRainbowRed = {
    fg = "#fe4c4c"
  },
  TSRainbowViolet = {
    fg = "#b58cd8"
  },
  TSRainbowYellow = {
    fg = "#ffc965"
  },
  TSRepeat = {
    fg = "#b58cd8"
  },
  TSStrike = {
    fg = "#f9fbff",
    strikethrough = true
  },
  TSString = {
    fg = "#65ff91"
  },
  TSStringEscape = {
    fg = "#fe4c4c"
  },
  TSStringRegex = {
    fg = "#fe854c"
  },
  TSStrong = {
    bold = true,
    fg = "#f9fbff"
  },
  TSSymbol = {
    fg = "#7fe7ff"
  },
  TSTag = {
    fg = "#b58cd8"
  },
  TSTagDelimiter = {
    fg = "#b58cd8"
  },
  TSText = {
    fg = "#f9fbff"
  },
  TSTextReference = {
    fg = "#7fa7ff"
  },
  TSTitle = {
    bold = true,
    fg = "#fe854c"
  },
  TSType = {
    fg = "#ffc965"
  },
  TSTypeBuiltin = {
    fg = "#fe854c"
  },
  TSURI = {
    fg = "#7fe7ff",
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
    fg = "#fe4c4c"
  },
  TSWarning = {
    fg = "#f9fbff"
  },
  TabLine = {
    bg = "#3b3d4d",
    fg = "#f9fbff"
  },
  TabLineFill = {
    bg = "#3b3d4d",
    fg = "#8d8e9a"
  },
  TabLineSel = {
    bg = "#f9fbff",
    fg = "#292b3c"
  },
  Tag = {
    fg = "#65ff91"
  },
  TelescopeBorder = {
    bg = "#222434",
    fg = "#b58cd8"
  },
  TelescopeNormal = {
    bg = "#222434",
    fg = "#f9fbff"
  },
  Terminal = {
    bg = "#292b3c",
    fg = "#f9fbff"
  },
  Title = {
    fg = "#b58cd8"
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
    fg = "#ff99e0"
  },
  TroubleNormal = {
    fg = "#3b3d4d"
  },
  TroubleText = {
    fg = "#3b3d4d"
  },
  Type = {
    fg = "#ffdb99"
  },
  Typedef = {
    fg = "#ffc965"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#292b3c"
  },
  Visual = {
    bg = "#3b3d4d"
  },
  VisualNOS = {
    bg = "#3b3d4d",
    underline = true
  },
  WarningMsg = {
    bold = true,
    fg = "#ffab84"
  },
  WhichKey = {
    fg = "#7fe7ff"
  },
  WhichKeyDesc = {
    fg = "#ff99e0"
  },
  WhichKeyFloat = {
    bg = "#292b3c"
  },
  WhichKeyGroup = {
    fg = "#7fa7ff"
  },
  WhichKeySeparator = {
    fg = "#222434"
  },
  WhichKeySeperator = {
    fg = "#222434"
  },
  WhichKeyValue = {
    fg = "#b58cd8"
  },
  Whitespace = {
    fg = "#636572"
  },
  WildMenu = {
    bg = "#8667a1",
    fg = "#292b3c"
  },
  WinSeparator = {
    bold = true,
    fg = "#1c1e2b"
  },
  debugBreakpoint = {
    bg = "#222434",
    fg = "#dd4040"
  },
  debugPC = {
    bg = "#292b3c",
    fg = "#fed6f2"
  },
  diffAdded = {
    fg = "#65ff91"
  },
  diffChanged = {
    fg = "#ffc965"
  },
  diffFile = {
    fg = "#7fa7ff"
  },
  diffIndexLine = {
    fg = "#ff99e0"
  },
  diffLine = {
    fg = "#222434"
  },
  diffNewFile = {
    fg = "#fe854c"
  },
  diffOldFile = {
    fg = "#b58cd8"
  },
  diffRemoved = {
    fg = "#fe4c4c"
  },
  healthError = {
    fg = "#fe4c4c"
  },
  healthSuccess = {
    fg = "#65ff91"
  },
  healthWarning = {
    fg = "#ffc965"
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
    fg = "#fe4c4c"
  },
  rainbowcol2 = {
    fg = "#fe854c"
  },
  rainbowcol3 = {
    fg = "#ffc965"
  },
  rainbowcol4 = {
    fg = "#65ff91"
  },
  rainbowcol5 = {
    fg = "#7fe7ff"
  },
  rainbowcol6 = {
    fg = "#7fa7ff"
  },
  rainbowcol7 = {
    fg = "#ff99e0"
  },
  vCursor = {
    reverse = true
  }
}
