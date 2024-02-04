local util = require("pastelnight.util")
local colors = require("pastelnight.colors")

local M = {}
--
---@class Highlight
---@field fg string|nil
---@field bg string|nil
---@field sp string|nil
---@field style string|nil|Highlight

---@alias Highlights table<string,Highlight>

---@return Theme
function M.setup()
  local config = require("pastelnight.config")
  local options = config.options
  ---@class Theme
  ---@field highlights Highlights
  local theme = {
    config = options,
    colors = colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {

    --- Base Vim highlights ---

    Normal                                   = { fg = c.fg, bg = options.transparent and c.none or c.bg },                                       --- Normal text.
    Terminal                                 = { fg = c.fg, bg = options.transparent and c.none or c.bg },                                       --- Terminal text.
    EndOfBuffer                              = { fg = c.bg, bg = config.transparent and c.none or c.bg },                                        --- Filler lines (~) after the end of the buffer.

    Folded                                   = { fg = c.base200, bg = config.transparent and c.none or c.base400 },                              --- line used for closed folds.
    FoldColumn                               = { fg = c.fg, bg = config.transparent and c.none or c.bg },                                        --- 'foldcolumn'.
    SignColumn                               = { fg = c.fg, bg = config.transparent and c.none or c.bg },                                        --- column where |signs| are displayed.
    Conceal                                  = { fg = c.base200, bg = c.base400 },                                                               --- placeholder characters substituted for concealed text (see 'conceallevel').
    ColorColumn                              = { bg = c.base400 },                                                                               --- used for the columns set with 'colorcolumn'.
    LineNr                                   = { fg = c.base300 },                                                                               --- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    ToolbarLine                              = { fg = c.fg },                                                                                    ---

    Cursor                                   = { reverse = true },                                                                               --- character under the cursor.
    vCursor                                  = { reverse = true },                                                                               ---
    iCursor                                  = { reverse = true },                                                                               ---
    lCursor                                  = { reverse = true },                                                                               --- the character under the cursor when |language-mapping| is used (see 'guicursor').
    CursorIM                                 = { reverse = true },                                                                               --- like Cursor, but used when in IME mode |CursorIM|.
    CursorColumn                             = { bg = c.base400 },                                                                               --- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                               = { bg = c.base400 },                                                                               --- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr                             = { fg = c.yellow50},                                                                                --- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    DiffAdd                                  = { fg = c.none, bg = c.green },                                                                    --- diff mode: Added line |diff.txt|.
    DiffChange                               = { fg = c.none, bg = c.yellow },                                                                   --- diff mode: Changed line |diff.txt|.
    DiffDelete                               = { fg = c.none, bg = c.red },                                                                      --- diff mode: Deleted line |diff.txt|.
    DiffText                                 = { fg = c.none, bg = c.blue },                                                                     --- diff mode: Changed text within a changed line |diff.txt|.
    DiffAdded                                = colors.green,                                                                                     ---
    DiffRemoved                              = colors.red,                                                                                       ---
    DiffFile                                 = colors.sky,                                                                                       ---
    DiffIndexLine                            = colors.base200,                                                                                   ---

    ErrorMsg                                 = { fg = c.red, bold = true },                                                                      --- error messages on the command line.
    MoreMsg                                  = { fg = c.blue, bold = true },                                                                     --- |more-prompt|.
    WarningMsg                               = { fg = c.orange100, bold = true },                                                                --- warning messages.

    Pmenu                                    = { fg = c.fg, bg = c.base400 },                                                                    --- Popup menu: normal item.
    PmenuSel                                 = { fg = c.base500, bg = c.purple100 },                                                             --- Popup menu: selected item.
    PmenuSbar                                = { fg = c.base600 },                                                                               --- Popup menu: scrollbar.
    PmenuThumb                               = { fg = c.base300 },                                                                               --- Popup menu: Thumb of the scrollbar.
    WildMenu                                 = { fg = c.base500, bg = c.purple400 },                                                             --- current match in 'wildmenu' completion.

    Question                                 = { fg = c.yellow, bold = true },                                                                   --- |hit-enter| prompt and yes/no questions.
    SpellBad                                 = { sp = c.red100, undercurl = true },                                                              --- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                                 = { sp = c.purple100, undercurl = true },                                                           --- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                               = { sp = c.sky100, undercurl = true },                                                              --- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                                = { sp = c.yellow100, undercurl = true },                                                           --- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    StatusLine                               = { fg = c.fg, bg = c.base500 },                                                                    --- status line of current window.
    StatusLineTerm                           = { fg = c.fg, bg = c.base500 },                                                                    --- status line of current terminal .
    TabLine                                  = { fg = c.fg, bg = c.base400 },                                                                    --- tab pages line, not active tab page label.
    TabLineFill                              = { fg = c.base200, bg = c.base400 },                                                               --- tab pages line, where there are no labels.
    TabLineSel                               = { fg = c.bg, bg = c.fg },                                                                         --- tab pages line, active tab page label.

    Search                                   = { fg = c.bg, bg = c.yellow300 },                                                                  ---
    Substitute                               = { fg = c.bg, bg = c.pink100 },                                                                    --- |:substitute| replacement text highlighting.
    MatchParen                               = { fg = c.none, bg = c.base200 },                                                                  --- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|.
    NonText                                  = { fg = c.base400 },                                                                               --- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Whitespace                               = { fg = c.base300 },                                                                               --- "nbsp", "space", "tab" and "trail" in 'listchars'.
    SpecialKey                               = { fg = c.base300 },                                                                               --- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|.
    Directory                                = { fg = c.blue },                                                                                  --- directory names (and other special names in listings).
    WinSeparator                             = { fg = c.base700, bold = true },                                                                  --- the column separating vertically split windows.
    Visual                                   = { bg = c.base400 },                                                                               --- Visual mode selection.
    VisualNOS                                = { bg = c.base400, underline = true },                                                             --- Visual mode selection when vim is "Not Owning the Selection".
    QuickFixLine                             = { fg = c.blue300, underline = true },                                                             --- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    NormalFloat                              = { fg = c.fg, bg = c.base600 },                                                                    --- Normal text in floating windows.
    FloatBorder                              = { fg = c.purple, bg = c.base600 },                                                                ---
    VertSplit                                = { fg = c.bg },                                                                                    --- the column separating vertically split windows
    SignColumnSB                             = { fg = c.base400 },                                                                               --- column where |signs| are displayed
    ModeMsg                                  = { fg = c.blue },                                                                                  --- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                                  = { fg = c.base200 },                                                                               --- Area for messages and cmdline
    NormalNC                                 = { fg = c.fg, bg = options.transparent and c.none or options.dim_inactive and c.base700 or c.bg }, --- normal text in non-current windows
    NormalSB                                 = { fg = c.fg, bg = c.bg_sidebar },                                                                 --- normal text in sidebar
    FloatTitle                               = { fg = c.base200, bg = c.bg_float },                                                              ---

    --- Syntax Highlights ---

    String                                   = { fg = c.green100 },                                 --- a string constant: "this is a string".
    Character                                = { fg = c.orange },                                   --- a character constant: 'c', '\n'.
    Number                                   = { fg = c.orange100 },                                --- a number constant: 234, 0xff.
    Float                                    = { fg = c.orange100 },                                --- a floating point constant: 2.3e10.
    Boolean                                  = { fg = c.orange300 },                                --- a boolean constant: TRUE, false.
    Type                                     = { fg = c.yellow100 },                                --- (preferred) int, long, char, etc.
    Structure                                = { fg = c.yellow },                                   --- struct, union, enum, etc.
    StorageClass                             = { fg = c.yellow },                                   --- static, register, volatile, etc.
    Identifier                               = { fg = c.red100 },                                   --- (preferred) any variable name.
    Constant                                 = { fg = c.sky },                                      --- (preferred) any constant.
    PreProc                                  = { fg = c.purple300 },                                --- (preferred) generic Preprocessor.
    PreCondit                                = { fg = c.purple300 },                                --- preprocessor #if, #else, #endif, etc.
    Include                                  = { fg = c.purple300 },                                --- preprocessor #include.
    Keyword                                  = { fg = c.purple300 },                                --- any other keyword.
    Define                                   = { fg = c.purple300 },                                --- preprocessor #define.
    Typedef                                  = { fg = c.yellow },                                   --- A typedef.
    Exception                                = { fg = c.purple100 },                                --- try, catch, throw.
    Conditional                              = { fg = c.purple },                                   --- if, then, else, endif, switch, etc.
    Repeat                                   = { fg = c.pink300 },                                  --- for, do, while, etc.
    Statement                                = { fg = c.purple },                                   --- (preferred) any statement.
    Macro                                    = { fg = c.red },                                      --- same as Define.
    Error                                    = { fg = c.red100 },                                   --- (preferred) any erroneous construct.
    Label                                    = { fg = c.pink400 },                                  --- case, default, etc.
    Special                                  = { fg = c.orange100 },                                --- (preferred) any special symbol.
    SpecialChar                              = { fg = c.green300 },                                 --- special character in a constant.
    Function                                 = { fg = c.blue },                                     --- function name (also: methods for classes).
    Operator                                 = { fg = c.orange50 },                                 --- "sizeof", "+", "*", etc.
    Debug                                    = { fg = c.orange },                                   --- debugging statements.
    Tag                                      = { fg = c.green },                                    --- you can use CTRL-] on this.
    Delimiter                                = { fg = c.base100 },                                  --- character that needs attention.

    Todo                                     = { fg = c.red100, bg = c.base500, bold = true },      --- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX.
    Comment                                  = { fg = c.base200, style = options.styles.comments }, --- any comments.
    SpecialComment                           = { fg = c.base200, style = options.styles.comments }, --- special things inside a comment.

    Bold                                     = { bold = true },                                     ---
    Italic                                   = { italic = true },                                   ---
    Underlined                               = { underline = true },                                --- (preferred) text that stands out, HTML links

    debugPC                                  = { bg = c.bg, fg = c.pink50 },                        --- used for highlighting the current line in terminal-debug
    debugBreakpoint                          = { fg = c.red300, bg = c.base600 },                   --- used for breakpoint colors in terminal-debug

    --- Lsp Highlights ---

    LspReferenceText                         = { underline = true },                 --- used for highlighting "text" references
    LspReferenceRead                         = { underline = true },                 --- used for highlighting "read" references
    LspReferenceWrite                        = { underline = true },                 --- used for highlighting "write" references

    DiagnosticError                          = { fg = c.error },                     --- Used as the base highlight group.
    DiagnosticWarn                           = { fg = c.warning },                   --- Used as the base highlight group.
    DiagnosticInfo                           = { fg = c.info },                      --- Used as the base highlight group.
    DiagnosticHint                           = { fg = c.hint },                      --- Used as the base highlight group.
    DiagnosticUnnecessary                    = { fg = c.base300 },                        --- Used as the base highlight group.

    DiagnosticVirtualTextError               = { fg = c.red200 },                    --- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn                = { fg = c.yellow100 },                 --- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo                = { fg = c.blue100 },                   --- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint                = { fg = c.sky200 },                    --- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError                 = { undercurl = true, sp = c.error },   --- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn                  = { undercurl = true, sp = c.warning }, --- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo                  = { undercurl = true, sp = c.info },    --- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint                  = { undercurl = true, sp = c.hint },    --- Used to underline "Hint" diagnostics

    DapStoppedLine                           = { bg = c.yellow300 },                 --- Used for "Warning" diagnostic virtual text

    --- Treesitter Hightlights ---

    ["@annotation"]                          = { fg = c.fg },
    ["@attribute"]                           = { fg = c.sky },
    ["@attribute.typescript"]                = { fg = c.blue },
    ["@boolean"]                             = { fg = c.orange },
    ["@character"]                           = { fg = c.orange },
    ["@comment"]                             = { fg = c.base200, style = options.styles.comments },
    ["@comment.todo"]                        = { fg = c.red, style = options.styles.comments },
    ["@comment.todo.unchecked"]              = { fg = c.red, style = options.styles.comments },
    ["@comment.todo.checked"]                = { fg = c.green, style = options.styles.comments },
    ["@constant"]                            = { fg = c.orange },
    ["@constant.builtin"]                    = { fg = c.orange },
    ["@constant.macro"]                      = { fg = c.orange },
    ["@constructor"]                         = { fg = c.yellow, bold = true },
    ["@diff.add"]                            = { fg = c.green },
    ["@diff.delete"]                         = { fg = c.red },
    ["@error"]                               = { fg = c.fg },
    ["@function"]                            = { fg = c.blue },
    ["@function.builtin"]                    = { fg = c.sky },
    ["@function.macro"]                      = { fg = c.sky },
    ["@function.method"]                     = { fg = c.blue },
    ["@keyword"]                             = { fg = c.purple },
    ["@keyword.conditional"]                 = { fg = c.purple },
    ["@keyword.directive"]                   = { fg = c.purple },
    ["@keyword.exception"]                   = { fg = c.purple },
    ["@keyword.function"]                    = { fg = c.purple },
    ["@keyword.import"]                      = { fg = c.purple },
    ["@keyword.operator"]                    = { fg = c.purple },
    ["@keyword.repeat"]                      = { fg = c.purple },
    ["@label"]                               = { fg = c.red },
    ["@markup.emphasis"]                     = { fg = c.fg, italic = true },
    ["@markup.environment"]                  = { fg = c.fg },
    ["@markup.environment.name"]             = { fg = c.fg },
    ["@markup.heading"]                      = { fg = c.orange, bold = true },
    ["@markup.link"]                         = { fg = c.blue },
    ["@markup.link.url"]                     = { fg = c.sky, underline = true },
    ["@markup.list"]                         = { fg = c.red },
    ["@markup.math"]                         = { fg = c.fg },
    ["@markup.raw"]                          = { fg = c.green },
    ["@markup.strike"]                       = { fg = c.fg, strikethrough = true },
    ["@markup.strong"]                       = { fg = c.fg, bold = true },
    ["@markup.underline"]                    = { fg = c.fg, underline = true },
    ["@module"]                              = { fg = c.yellow },
    ["@none"]                                = { fg = c.fg },
    ["@number"]                              = { fg = c.orange },
    ["@number.float"]                        = { fg = c.orange },
    ["@operator"]                            = { fg = c.fg },
    ["@parameter.reference"]                 = { fg = c.fg },
    ["@property"]                            = { fg = c.sky },
    ["@punctuation.delimiter"]               = colors.LightGrey,
    ["@punctuation.bracket"]                 = colors.LightGrey,
    ["@string"]                              = { fg = c.green },
    ["@string.regexp"]                       = { fg = c.orange },
    ["@string.escape"]                       = { fg = c.red },
    ["@string.special.symbol"]               = { fg = c.sky },
    ["@tag"]                                 = { fg = c.purple },
    ["@tag.attribute"]                       = { fg = c.orange },
    ["@tag.delimiter"]                       = { fg = c.purple },
    ["@text"]                                = { fg = c.fg },
    ["@note"]                                = { fg = c.fg },
    ["@warning"]                             = { fg = c.fg },
    ["@danger"]                              = { fg = c.fg },
    ["@type"]                                = { fg = c.yellow },
    ["@type.builtin"]                        = { fg = c.orange },
    ["@variable"]                            = { fg = c.fg },
    ["@variable.builtin"]                    = { fg = c.red },
    ["@variable.member"]                     = { fg = c.sky },
    ["@variable.parameter"]                  = { fg = c.red },
    ["@markup.heading.1.markdown"]           = { fg = c.red, bold = true },
    ["@markup.heading.2.markdown"]           = { fg = c.purple, bold = true },
    ["@markup.heading.3.markdown"]           = { fg = c.orange, bold = true },
    ["@markup.heading.4.markdown"]           = { fg = c.red, bold = true },
    ["@markup.heading.5.markdown"]           = { fg = c.purple, bold = true },
    ["@markup.heading.6.markdown"]           = { fg = c.orange, bold = true },
    ["@markup.heading.1.marker.markdown"]    = { fg = c.red, bold = true },
    ["@markup.heading.2.marker.markdown"]    = { fg = c.purple, bold = true },
    ["@markup.heading.3.marker.markdown"]    = { fg = c.orange, bold = true },
    ["@markup.heading.4.marker.markdown"]    = { fg = c.red, bold = true },
    ["@markup.heading.5.marker.markdown"]    = { fg = c.purple, bold = true },
    ["@markup.heading.6.marker.markdown"]    = { fg = c.orange, bold = true },

    ["@conditional"]                         = { fg = c.purple },
    ["@exception"]                           = { fg = c.purple },
    ["@field"]                               = { fg = c.sky },
    ["@float"]                               = { fg = c.orange },
    ["@include"]                             = { fg = c.purple },
    ["@method"]                              = { fg = c.blue },
    ["@namespace"]                           = { fg = c.yellow },
    ["@parameter"]                           = { fg = c.red },
    ["@preproc"]                             = { fg = c.purple },
    ["@punctuation.special"]                 = { fg = c.red },
    ["@repeat"]                              = { fg = c.purple },
    ["@string.regex"]                        = { fg = c.orange },
    ["@text.strong"]                         = { fg = c.fg, bold = true },
    ["@text.emphasis"]                       = { fg = c.fg, italic = true },
    ["@text.underline"]                      = { fg = c.fg, underline = true },
    ["@text.strike"]                         = { fg = c.fg, strikethrough = true },
    ["@text.title"]                          = { fg = c.orange, bold = true },
    ["@text.literal"]                        = { fg = c.green },
    ["@text.uri"]                            = { fg = c.sky, underline = true },
    ["@text.todo"]                           = { fg = c.red, style = options.styles.comments },
    ["@text.todo.unchecked"]                 = { fg = c.red, style = options.styles.comments },
    ["@text.todo.checked"]                   = { fg = c.green, style = options.styles.comments },
    ["@text.math"]                           = { fg = c.fg },
    ["@text.reference"]                      = { fg = c.blue },
    ["@text.environment"]                    = { fg = c.fg },
    ["@text.environment.name"]               = { fg = c.fg },
    ["@text.diff.add"]                       = { fg = c.green },
    ["@text.diff.delete"]                    = { fg = c.red },

    --- Text
    ["@text.literal.markdown"]               = { fg = c.red },
    ["@text.literal.markdown_inline"]        = { fg = c.yellow, bg = c.green400 },
    ["@text.warning"]                        = { fg = c.yellow400, bg = c.yellow },
    ["@text.danger"]                         = { fg = c.red400, bg = c.red },

    --- tsx
    ["@tag.tsx"]                             = { fg = c.green },
    ["@constructor.tsx"]                     = { fg = c.yellow },
    ["@tag.delimiter.tsx"]                   = { fg = c.orange },

    --- LSP Semantic Token Groups
    ["@lsp.type.comment"]                    = { link = "@comment" },
    ["@lsp.type.enum"]                       = { link = "@type" },
    ["@lsp.type.enumMember"]                 = { link = "@constant.builtin" },
    ["@lsp.type.interface"]                  = { link = "@type" },
    ["@lsp.type.typeParameter"]              = { link = "@type" },
    ["@lsp.type.keyword"]                    = { link = "@keyword" },
    ["@lsp.type.namespace"]                  = { link = "@module" },
    ["@lsp.type.parameter"]                  = { link = "@parameter" },
    ["@lsp.type.property"]                   = { link = "@property" },
    ["@lsp.type.variable"]                   = { link = "@variable" },
    ["@lsp.type.macro"]                      = { link = "@function.macro" },
    ["@lsp.type.method"]                     = { link = "@function.method" },
    ["@lsp.type.number"]                     = { link = "@number" },
    ["@lsp.type.generic"]                    = { link = "@text" },
    ["@lsp.type.builtinType"]                = { link = "@type.builtin" },
    ["@lsp.type.unresolvedReference"]        = { undercurl = true, sp = c.error },
    ["@lsp.typemod.method.defaultLibrary"]   = { link = "@function" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function" },
    ["@lsp.typemod.operator.injected"]       = { link = "@operator" },
    ["@lsp.typemod.string.injected"]         = { link = "@string" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"]       = { link = "@variable" },
    ["@lsp.typemod.variable.static"]         = { link = "@constant" },

    TSAnnotation                             = { fg = c.fg },
    TSAttribute                              = { fg = c.sky },
    TSBoolean                                = { fg = c.orange },
    TSCharacter                              = { fg = c.orange },
    TSComment                                = { fg = c.base200, style = options.styles.comments },
    TSConditional                            = { fg = c.purple },
    TSConstant                               = { fg = c.orange },
    TSConstBuiltin                           = { fg = c.orange },
    TSConstMacro                             = { fg = c.orange },
    TSConstructor                            = { fg = c.yellow, bold = true },
    TSError                                  = { fg = c.fg },
    TSException                              = { fg = c.purple },
    TSField                                  = { fg = c.sky },
    TSFloat                                  = { fg = c.orange },
    TSFunction                               = { fg = c.blue },
    TSFuncBuiltin                            = { fg = c.sky },
    TSFuncMacro                              = { fg = c.sky },
    TSInclude                                = { fg = c.purple },
    TSKeyword                                = { fg = c.purple },
    TSKeywordFunction                        = { fg = c.purple },
    TSKeywordOperator                        = { fg = c.purple },
    TSLabel                                  = { fg = c.red },
    TSMethod                                 = { fg = c.blue },
    TSNamespace                              = { fg = c.yellow },
    TSNone                                   = { fg = c.fg },
    TSNumber                                 = { fg = c.orange },
    TSOperator                               = { fg = c.fg },
    TSParameter                              = { fg = c.red },
    TSParameterReference                     = { fg = c.fg },
    TSProperty                               = { fg = c.sky },
    TSPunctDelimiter                         = { fg = c.base100 },
    TSPunctBracket                           = { fg = c.base100 },
    TSPunctSpecial                           = { fg = c.red },
    TSRepeat                                 = { fg = c.purple },
    TSString                                 = { fg = c.green },
    TSStringRegex                            = { fg = c.orange },
    TSStringEscape                           = { fg = c.red },
    TSSymbol                                 = { fg = c.sky },
    TSTag                                    = { fg = c.purple },
    TSTagDelimiter                           = { fg = c.purple },
    TSText                                   = { fg = c.fg },
    TSStrong                                 = { fg = c.fg, bold = true },
    TSEmphasis                               = { fg = c.fg, italic = true },
    TSUnderline                              = { fg = c.fg, underline = true },
    TSStrike                                 = { fg = c.fg, strikethrough = true },
    TSTitle                                  = { fg = c.orange, bold = true },
    TSLiteral                                = { fg = c.green },
    TSURI                                    = { fg = c.sky, underline = true },
    TSMath                                   = { fg = c.fg },
    TSTextReference                          = { fg = c.blue },
    TSEnvironment                            = { fg = c.fg },
    TSEnvironmentName                        = { fg = c.fg },
    TSNote                                   = { fg = c.fg },
    TSWarning                                = { fg = c.fg },
    TSDanger                                 = { fg = c.fg },
    TSType                                   = { fg = c.yellow },
    TSTypeBuiltin                            = { fg = c.orange },
    TSVariable                               = { fg = c.fg },
    TSVariableBuiltin                        = { fg = c.red },

    --- Plugins Highlights ---

    --- ts-rainbow

    rainbowcol1                              = { fg = c.red },
    rainbowcol2                              = { fg = c.orange },
    rainbowcol3                              = { fg = c.yellow },
    rainbowcol4                              = { fg = c.green },
    rainbowcol5                              = { fg = c.sky },
    rainbowcol6                              = { fg = c.blue },
    rainbowcol7                              = { fg = c.pink },

    --- ts-rainbow2 (maintained fork)

    TSRainbowRed                             = { fg = c.red },
    TSRainbowOrange                          = { fg = c.orange },
    TSRainbowYellow                          = { fg = c.yellow },
    TSRainbowGreen                           = { fg = c.green },
    TSRainbowBlue                            = { fg = c.blue },
    TSRainbowViolet                          = { fg = c.purple },
    TSRainbowCyan                            = { fg = c.sky },

    --- rainbow-delimiters

    RainbowDelimiterRed                      = { fg = c.red },
    RainbowDelimiterOrange                   = { fg = c.orange },
    RainbowDelimiterYellow                   = { fg = c.yellow },
    RainbowDelimiterGreen                    = { fg = c.green },
    RainbowDelimiterBlue                     = { fg = c.blue },
    RainbowDelimiterViolet                   = { fg = c.purple },
    RainbowDelimiterCyan                     = { fg = c.sky },

    --- LspTrouble

    TroubleText                              = { fg = c.base400 },
    TroubleCount                             = { fg = c.pink },
    TroubleNormal                            = { fg = c.base400 },

    --- Illuminate

    illuminatedWord                          = { bg = c.purple400 },
    illuminatedCurWord                       = { bg = c.purple400 },
    IlluminatedWordText                      = { bg = c.purple400 },
    IlluminatedWordRead                      = { bg = c.pink400 },
    IlluminatedWordWrite                     = { bg = c.pink400 },

    --- Diff

    diffAdded                                = { fg = c.green },
    diffRemoved                              = { fg = c.red },
    diffChanged                              = { fg = c.yellow },
    diffOldFile                              = { fg = c.purple },
    diffNewFile                              = { fg = c.orange },
    diffFile                                 = { fg = c.blue },
    diffLine                                 = { fg = c.base600 },
    diffIndexLine                            = { fg = c.pink },

    --- Neogit

    NeogitBranch                             = { fg = c.pink },
    NeogitRemote                             = { fg = c.purple },
    NeogitHunkHeader                         = { fg = c.base400, bg = c.base700 },
    NeogitHunkHeaderHighlight                = { fg = c.blue, bg = c.base700 },
    NeogitDiffContextHighlight               = { fg = c.bg, bg = c.base700 },
    NeogitDiffDeleteHighlight                = { fg = c.red, bg = c.red400 },
    NeogitDiffAddHighlight                   = { fg = c.green, bg = c.green400 },

    --- Neotest

    NeotestPassed                            = { fg = c.green },
    NeotestRunning                           = { fg = c.yellow },
    NeotestFailed                            = { fg = c.red },
    NeotestSkipped                           = { fg = c.blue },
    NeotestTest                              = { fg = c.bg },
    NeotestNamespace                         = { fg = c.sky },
    NeotestFocused                           = { fg = c.yellow },
    NeotestFile                              = { fg = c.sky },
    NeotestDir                               = { fg = c.blue },
    NeotestBorder                            = { fg = c.blue },
    NeotestIndent                            = { fg = c.bg },
    NeotestExpandMarker                      = { fg = c.base400 },
    NeotestAdapterName                       = { fg = c.purple, bold = true },
    NeotestWinSelect                         = { fg = c.blue },
    NeotestMarked                            = { fg = c.blue },
    NeotestTarget                            = { fg = c.blue },

    --- GitGutter

    GitGutterAdd = { fg = c.green },     -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.red },    -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr = { fg = c.green },
    GitGutterChangeLineNr = { fg = c.yellow },
    GitGutterDeleteLineNr = { fg = c.red },

    --- GitSigns

    GitSignsAdd = { fg = c.green },     -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red },    -- diff mode: Deleted line |diff.txt|

    --- Telescope

    TelescopeBorder = { fg = c.purple, bg = c.bg_float },
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },

    --- NvimTree

    NvimTreeVertSplit = { fg = c.bg_sidebar, bg = config.transparent and c.none or c.bg_sidebar },
    NvimTreeEndOfBuffer = { fg = c.bg_sidebar, bg = config.transparent and c.none or c.bg_sidebar },

    NvimTreeWinSeparator = {
      fg = options.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },

    NvimTreeNormal = { fg = c.fg, bg = config.transparent and c.none or c.bg_sidebar },
    NvimTreeNormalNC = { fg = c.fg, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.purple200, bold = true },
    NvimTreeGitDirty = { fg = c.yellow },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.red },
    NvimTreeOpenedFile = { bg = c.base400 },
    NvimTreeSpecialFile = { fg = c.purple50, underline = true },
    NvimTreeIndentMarker = { fg = c.base400 },
    NvimTreeImageFile = { fg = c.purple400 },
    NvimTreeSymlink = { fg = c.purple100 },
    NvimTreeFolderIcon = { bg = c.none, fg = c.blue },
    NvimTreeFolderArrowClose = { fg = c.base200 },
    NvimTreeFolderName = { fg = c.sky300 },
    NvimTreeEmptyFolderName = { fg = c.blue50 },

    --- NeoTree

    NeoTreeNormal = { fg = c.fg, bg = c.bg_sidebar },
    NeoTreeNormalNC = { fg = c.fg, bg = c.bg_sidebar },
    NeoTreeDimText = { fg = c.base400 },

    --- Fern

    FernBranchText = { fg = c.purple },

    --- Glyph Palette

    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.sky },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },

    --- Dashboard

    DashboardShortCut = { fg = c.sky },
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.pink },
    DashboardFooter = { fg = c.yellow, italic = true },

    --- Alpha

    AlphaShortcut = { fg = c.orange },
    AlphaHeader = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter = { fg = c.sky },
    AlphaButtons = { fg = c.sky },

    --- WhichKey

    WhichKey = { fg = c.sky },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.pink },
    WhichKeySeperator = { fg = c.base600 },
    WhichKeySeparator = { fg = c.base600 },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.purple },

    --- LspSaga

    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.bg_float },
    LspFloatWinBorder = { fg = c.base700 },
    LspSagaBorderTitle = { fg = c.sky },
    LspSagaHoverBorder = { fg = c.blue },
    LspSagaRenameBorder = { fg = c.green },
    LspSagaDefPreviewBorder = { fg = c.green },
    LspSagaCodeActionBorder = { fg = c.blue },
    LspSagaFinderSelection = { fg = c.base800 },
    LspSagaCodeActionTitle = { fg = c.sky },
    LspSagaCodeActionContent = { fg = c.purple },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount = { fg = c.purple },
    DefinitionCount = { fg = c.purple },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.sky },

    --- NeoVim

    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warning },

    --- BufferLine
    BufferlineBackground = { bg = c.bg},
    BufferlineIndicatorSelected = { fg = c.purple, bg = c.bg },
    BufferlineSeparator = {fg = c.bg, bg = c.bg},
    BufferlineFill = { fg = c.bg, bg = c.bg },
    BufferlineDuplicate = {bg = c.bg},

    BufferlineVisible = {bg = c.purple},
    BufferlineSelected = {fg = c.purple, bg = c.bg, bold = false, italic = false},

    BufferlineHint = {bg = c.bg},
    BufferlineHintDiagnostic = {fg = c.hint, bg = c.bg},

    BufferlineError = {bg = c.bg},
    BufferlineErrorDiagnostic = {fg = c.error, bg = c.bg},

    BufferlineWarning = {bg = c.bg},
    BufferlineWarningDiagnostic = {fg = c.warning, bg = c.bg},

    BufferlineInfo = {bg = c.bg},
    BufferlineInfoDiagnostic = {fg = c.info, bg = c.bg},

    BufferlineModified = { fg = c.purple, bg = c.bg },
    BufferlineModifiedSelected = { fg = c.purple, bg = c.bg },
    BufferlineModifiedVisible = { fg = c.purple, bg = c.bg },

    --- Barbar

    BufferCurrent = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR = { bg = c.bg, fg = c.error },
    BufferCurrentHINT = { bg = c.bg, fg = c.hint },
    BufferCurrentINFO = { bg = c.bg, fg = c.info },
    BufferCurrentWARN = { bg = c.bg, fg = c.warning },
    BufferCurrentIndex = { bg = c.bg, fg = c.info },
    BufferCurrentMod = { bg = c.bg, fg = c.warning },
    BufferCurrentSign = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget = { bg = c.bg, fg = c.red },
    BufferAlternate = { bg = c.base600, fg = c.fg },
    BufferAlternateERROR = { bg = c.base600, fg = c.error },
    BufferAlternateHINT = { bg = c.base600, fg = c.hint },
    BufferAlternateIndex = { bg = c.base600, fg = c.info },
    BufferAlternateINFO = { bg = c.base600, fg = c.info },
    BufferAlternateMod = { bg = c.base600, fg = c.warning },
    BufferAlternateSign = { bg = c.base600, fg = c.info },
    BufferAlternateTarget = { bg = c.base600, fg = c.red },
    BufferAlternateWARN = { bg = c.base600, fg = c.warning },
    BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR = { bg = c.bg_statusline, fg = c.error },
    BufferVisibleHINT = { bg = c.bg_statusline, fg = c.hint },
    BufferVisibleINFO = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleWARN = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    BufferInactive = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.purple, 0.8) },
    BufferInactiveERROR = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.error, 0.8) },
    BufferInactiveHINT = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.hint, 0.8) },
    BufferInactiveINFO = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.info, 0.8) },
    BufferInactiveWARN = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.warning, 0.8) },
    BufferInactiveIndex = { bg = util.darken(c.base400, 0.4), fg = c.purple },
    BufferInactiveMod = { bg = util.darken(c.base400, 0.4), fg = util.darken(c.warning, 0.8) },
    BufferInactiveSign = { bg = util.darken(c.base400, 0.4), fg = c.bg },
    BufferInactiveTarget = { bg = util.darken(c.base400, 0.4), fg = c.red },
    BufferOffset = { bg = c.bg_statusline, fg = c.purple },
    BufferTabpageFill = { bg = util.darken(c.base400, 0.8), fg = c.purple },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },

    --- Sneak

    Sneak = { fg = c.base400, bg = c.pink },
    SneakScope = { bg = c.base800 },

    --- Hop

    HopNextKey = { fg = c.pink, bold = true },
    HopNextKey1 = { fg = c.purple, bold = true },
    HopNextKey2 = { fg = c.purple300 },
    HopUnmatched = { fg = c.base600 },

    TSNodeKey = { fg = c.pink, bold = true },
    TSNodeUnmatched = { fg = c.base600 },

    LeapMatch = { bg = c.pink, fg = c.fg, bold = true },
    LeapLabelPrimary = { fg = c.pink, bold = true },
    LeapLabelSecondary = { fg = c.sky, bold = true },
    LeapBackdrop = { fg = c.base600 },

    FlashBackdrop = { fg = c.base600 },
    FlashLabel = { bg = c.pink, bold = true, fg = c.fg },

    LightspeedGreyWash = { fg = c.base600 },
    LightspeedLabel = { fg = c.pink, bold = true, underline = true },
    LightspeedLabelDistant = { fg = c.sky, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.sky, underline = true },
    LightspeedLabelOverlapped = { fg = c.pink, underline = true },
    LightspeedMaskedChar = { fg = c.orange },
    LightspeedOneCharMatch = { bg = c.pink, fg = c.fg, bold = true },
    LightspeedPendingOpArea = { bg = c.pink, fg = c.fg },
    LightspeedShortcut = { bg = c.pink, fg = c.fg, bold = true, underline = true },
    LightspeedUnlabeledMatch = { fg = c.purple, bold = true },

    --- Cmp

    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.base700, bg = c.bg_float },
    CmpGhostText = { fg = c.base600 },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.base600, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.purple, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.purple, bg = c.none },

    CmpItemMenu = { fg = c.base600, bg = c.none },

    CmpItemKindDefault = { fg = c.base600, bg = c.none },

    CmpItemKindKeyword = { fg = c.sky, bg = c.none },

    CmpItemKindVariable = { fg = c.pink, bg = c.none },
    CmpItemKindConstant = { fg = c.pink, bg = c.none },
    CmpItemKindReference = { fg = c.pink, bg = c.none },
    CmpItemKindValue = { fg = c.pink, bg = c.none },
    CmpItemKindCopilot = { fg = c.sky, bg = c.none },

    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },

    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },

    CmpItemKindModule = { fg = c.yellow, bg = c.none },

    CmpItemKindProperty = { fg = c.sky, bg = c.none },
    CmpItemKindField = { fg = c.sky, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.sky, bg = c.none },
    CmpItemKindEnumMember = { fg = c.sky, bg = c.none },
    CmpItemKindOperator = { fg = c.sky, bg = c.none },
    CmpItemKindSnippet = { fg = c.purple, bg = c.none },

    --- Navic

    NavicIconsFile = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsModule = { fg = c.yellow, bg = c.bg_statusline },
    NavicIconsNamespace = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsPackage = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsClass = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsMethod = { fg = c.blue, bg = c.bg_statusline },
    NavicIconsProperty = { fg = c.sky, bg = c.bg_statusline },
    NavicIconsField = { fg = c.sky, bg = c.bg_statusline },
    NavicIconsConstructor = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEnum = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsInterface = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsFunction = { fg = c.blue, bg = c.bg_statusline },
    NavicIconsVariable = { fg = c.pink, bg = c.bg_statusline },
    NavicIconsConstant = { fg = c.pink, bg = c.bg_statusline },
    NavicIconsString = { fg = c.green, bg = c.bg_statusline },
    NavicIconsNumber = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsBoolean = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsArray = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsObject = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsKey = { fg = c.purple, bg = c.bg_statusline },
    NavicIconsKeyword = { fg = c.purple, bg = c.bg_statusline },
    NavicIconsNull = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEnumMember = { fg = c.sky, bg = c.bg_statusline },
    NavicIconsStruct = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEvent = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsOperator = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsTypeParameter = { fg = c.sky, bg = c.bg_statusline },
    NavicText = { fg = c.fg, bg = c.bg_statusline },
    NavicSeparator = { fg = c.fg, bg = c.bg_statusline },

    --- Identline

    IblIndent = { fg = c.base400, nocombine = true },

    --- Scrollbar

    ScrollbarHandle = { fg = c.none, bg = c.base400 },

    ScrollbarSearchHandle = { fg = c.orange, bg = c.base400 },
    ScrollbarSearch = { fg = c.orange, bg = c.none },

    ScrollbarErrorHandle = { fg = c.error, bg = c.base400 },
    ScrollbarError = { fg = c.error, bg = c.none },

    ScrollbarWarnHandle = { fg = c.warning, bg = c.base400 },
    ScrollbarWarn = { fg = c.warning, bg = c.none },

    ScrollbarInfoHandle = { fg = c.info, bg = c.base400 },
    ScrollbarInfo = { fg = c.info, bg = c.none },

    ScrollbarHintHandle = { fg = c.hint, bg = c.base400 },
    ScrollbarHint = { fg = c.hint, bg = c.none },

    ScrollbarMiscHandle = { fg = c.purple, bg = c.base400 },
    ScrollbarMisc = { fg = c.purple, bg = c.none },

    --- Lazy

    LazyProgressDone = { bold = true, fg = c.purple50 },
    LazyProgressTodo = { bold = true, fg = c.purple400 },
    LazyH1 = { fg = c.purple200, bold = true },
    LazyNoCond = { fg = c.base200 },
    LazySpecial = { fg = c.base100 },

    --- Mason

    MasonNormal = {fg = c.fg, bg = c.bg_sidebar},
    MasonHeader = {fg = c.purple100, bg = c.none, bold = true},

    MasonHighlight = {fg = c.green100, bg = c.none},
    MasonHighlightBlock = {fg = c.pink, bg = c.pink},
    MasonHighlightBlockBold = {fg = c.bg_sidebar, bg = c.purple, bold = true},

    MasonMuted = { fg = c.red100, bold = true },
    MasonMutedBlock = { bg = c.bg_sidebar, fg = c.base300, default = true },

    --- Notify

    NotifyBackground = { fg = c.fg, bg = c.bg },

    NotifyERRORBorder = { fg = util.darken(c.error, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyWARNBorder = { fg = util.darken(c.warning, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyINFOBorder = { fg = util.darken(c.info, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = util.darken(c.base600, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = util.darken(c.purple, 0.3), bg = options.transparent and c.none or c.bg },

    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.base600 },
    NotifyTRACEIcon = { fg = c.purple },

    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.base600 },
    NotifyTRACETitle = { fg = c.purple },

    NotifyERRORBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyWARNBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyINFOBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyTRACEBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },

    --- Mini

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { bg = c.base600 },
    MiniCursorwordCurrent = { bg = c.base600 },

    MiniIndentscopeSymbol = { fg = c.purple300, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump = { bg = c.pink, fg = c.base50 },

    MiniJump2dSpot = { fg = c.pink, bold = true, nocombine = true },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = c.yellow, italic = true },
    MiniStarterHeader = { fg = c.blue },
    MiniStarterInactive = { fg = c.base600, style = options.styles.comments },
    MiniStarterItem = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.base600 },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterSection = { fg = c.purple },
    MiniStarterQuery = { fg = c.info },

    MiniStatuslineDevinfo = { fg = c.base600, bg = c.base400 },
    MiniStatuslineFileinfo = { fg = c.base600, bg = c.base400 },
    MiniStatuslineFilename = { fg = c.base600, bg = c.base400 },
    MiniStatuslineInactive = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther = { fg = c.black, bg = c.sky, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.black, bg = c.pink, bold = true },

    MiniSurround = { bg = c.orange, fg = c.black },

    MiniTablineCurrent = { fg = c.fg, bg = c.base600 },
    MiniTablineFill = { bg = c.black },
    MiniTablineHidden = { fg = c.purple, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.base600 },
    MiniTablineModifiedHidden = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection = { bg = c.bg_statusline, fg = c.none },
    MiniTablineVisible = { fg = c.fg, bg = c.bg_statusline },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },

    MiniTrailspace = { bg = c.red },

    --- Noice

    NoiceCompletionItemKindDefault = { fg = c.base600, bg = c.none },

    NoiceCompletionItemKindKeyword = { fg = c.sky, bg = c.none },

    NoiceCompletionItemKindVariable = { fg = c.pink, bg = c.none },
    NoiceCompletionItemKindConstant = { fg = c.pink, bg = c.none },
    NoiceCompletionItemKindReference = { fg = c.pink, bg = c.none },
    NoiceCompletionItemKindValue = { fg = c.pink, bg = c.none },

    NoiceCompletionItemKindFunction = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindMethod = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindConstructor = { fg = c.blue, bg = c.none },

    NoiceCompletionItemKindClass = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindInterface = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindStruct = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEvent = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEnum = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindUnit = { fg = c.orange, bg = c.none },

    NoiceCompletionItemKindModule = { fg = c.yellow, bg = c.none },

    NoiceCompletionItemKindProperty = { fg = c.sky, bg = c.none },
    NoiceCompletionItemKindField = { fg = c.sky, bg = c.none },
    NoiceCompletionItemKindTypeParameter = { fg = c.sky, bg = c.none },
    NoiceCompletionItemKindEnumMember = { fg = c.sky, bg = c.none },
    NoiceCompletionItemKindOperator = { fg = c.sky, bg = c.none },
    NoiceCompletionItemKindSnippet = { fg = c.purple, bg = c.none },

    TreesitterContext = { bg = c.purple400 },
    Hlargs = { fg = c.yellow },
  }

  if not vim.diagnostic then
    local severity_map = {
      Error = "Error",
      Warn = "Warning",
      Info = "Information",
      Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
      for snew, sold in pairs(severity_map) do
        theme.highlights["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  ---@type table<string, table>
  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    --- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    --- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end

    --- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  options.on_highlights(theme.highlights, theme.colors)

  return theme
end

return M
