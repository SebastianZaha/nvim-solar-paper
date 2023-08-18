-- Name:         Solar Paper
-- Description:  Inspired by the brilliant 'paper' theme with a solarized flair
-- Author:       Sebastian Zaha <sebastian.zaha@gmail.com>
-- Maintainer:   Sebastian Zaha <sebastian.zaha@gmail.com>
-- Website:      https://github.com/SebastianZaha/nvim-solar-paper
-- License:      MPL 2.0

-- Define is used to highlight method and type definitions, as a structural hint when browsing code.

-- Code structure and highlight inspiration taken from:
--   https://github.com/yorickpeterse/nvim-grey/blob/main/colors/grey.
--   https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/highlights.lua
--
-- My original vimscript port:
--   https://github.com/SebastianZaha/dotfiles/blob/master/.vim/colors/solar_paper.vim

-- Highlight groups:
--   https://github.com/neovim/neovim/tree/master/runtime/syntax

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.termguicolors = true
vim.o.background = 'light'
vim.g.colors_name = 'solar-paper'

local c = {
  background = '#fff8e5',
  lbackground = '#fffff2',

  -- solarized is quite low contrast, the fg color used intially is #073642.
  -- Increse saturation and reduce value slightly.
  black = '#002733',

  blue = '#1e6fcc',
  green = '#216609',
  lgreen = '#dfeacc',
  red = '#cc3e28',
  grey = '#777777',
  dgrey = '#555555',
  lgrey1 = '#d8d5c7',
  lgrey2 = '#bfbcaf',
  lgrey3 = '#aaaaaa',
  yellow = '#b58900',
  lyellow = '#f2de91',
  orange = '#a55000',
  purple = '#5c21a5',
  white = '#ffffff',
  cyan = '#158c86'
}

vim.g.terminal_color_0 = c.black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.lgrey3
vim.g.terminal_color_8 = c.dgrey
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.purple
vim.g.terminal_color_14 = c.cyan
vim.g.terminal_color_15 = c.lgrey3

local highlights = {
  ColorColumn = {bg = c.lbackground},
  Comment = {fg = c.grey},
  Conceal = {fg = c.NONE},
  Constant = {fg = c.black},
  Cursor = {bg = c.lgrey1},
  CursorLine = {bg = c.lbackground},
  CursorLineNR = {fg = c.black, bold = true},
  Define = {fg = c.blue},
  Directory = {fg = c.black},
  ErrorMsg = {fg = c.red},
  FoldColumn = {fg = c.black, bg = c.background},
  Identifier = {fg = c.black},
  Include = {fg = c.black},
  Keyword = {fg = c.black},
  LineNr = {fg = c.black},
  Macro = {fg = c.grey},
  MatchParen = {fg = c.NONE, bold = true},
  MoreMsg = {fg = c.black},
  NonText = {fg = c.background},
  Normal = {fg = c.black, bg = c.background},
  NormalFloat = {fg = c.black, bg = c.background},
  Bold = {fg = c.black, bold = true},
  Number = {fg = c.black},
  Operator = {fg = c.black},
  Pmenu = {fg = c.black, bg = c.lgreen},
  PmenuSel = {fg = c.black, bg = c.lgrey1},
  PreProc = {fg = c.black},
  Question = {fg = c.black},
  Regexp = {fg = c.black},
  Search = {bg = c.lyellow},
  IncSearch = {bg = c.lyellow},
  Special = {fg = c.black},
  SpecialChar = {fg = c.black},
  SpellBad = {fg = c.red, bold = true, underline = true},
  SpellCap = {fg = c.purple, underline = true},
  SpellLocal = {fg = c.green, underline = true},
  SpellRare = {fg = c.purple, underline = true},
  StatusLine = {fg = c.black, bg = c.lgreen},
  StatusLineNC = {fg = c.black, bg = c.lgrey1},
  String = {fg = c.black},
  TabLine = {fg = c.dgrey, bg = c.lgrey2},
  TabLineFill = {fg = c.black, bg = c.lgrey2},
  TabLineSel = {fg = c.black, bg = c.background},
  Title = {fg = c.black},
  Todo = {fg = c.grey},
  VertSplit = {fg = c.lgrey2},
  WarningMsg = {fg = c.orange},
  Underlined = {underline = true},

  Boolean = { link = 'Keyword' },
  Character = { link = 'String' },
  Error = { link = 'ErrorMsg' },
  Folded = { link = 'Comment' },
  Label = { link = 'Keyword' },
  PmenuThumb = { link = 'PmenuSel' },
  PreCondit = { link = 'Macro' },
  SignColumn = { link = 'FoldColumn' },
  SpecialKey = { link = 'Number' },
  Statement = { link = 'Keyword' },
  StorageClass = { link = 'Keyword' },
  Type = { link = 'Keyword' },
  Visual = { link = 'Cursor' },
  WildMenu = { link = 'PmenuSel' },

  SpecialString = {fg = c.grey},

  -- ALE
  ALEError = {fg = c.red, bold = true},
  ALEErrorSign = {fg = c.red, bold = true},
  ALEWarning = {fg = c.orange, bold = true},
  ALEWarningSign = {fg = c.orange, bold = true},

  -- CSS
  cssClassName = { link = 'Keyword' },
  cssColor = { link = 'Number' },
  cssIdentifier = { link = 'Keyword' },
  cssImportant = { link = 'Keyword' },
  cssProp = { link = 'Identifier' },
  cssTagName = { link = 'Keyword' },

  -- Diffs
  DiffAdd = {bg = c.lgreen},
  DiffChange = {fg = c.NONE},
  DiffDelete = {fg = c.red},
  DiffText = {bg = c.lgreen},
  diffFile = {fg = c.black, bold = true},
  diffLine = {fg = c.blue},
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffRemoved = { link = 'DiffDelete' },
  dotKeyChar = { link = 'Operator' },

  -- Fugitive
  FugitiveblameTime = {fg = c.blue},
  FugitiveblameHash = {fg = c.purple},
  gitCommitOverflow = { link = 'ErrorMsg' },
  gitCommitSummary = { link = 'String' },

  -- Go
  goDeclaration = { link = 'Define' },
  goSpecialString = { link = 'SpecialString' },

  -- HAML
  hamlClass = {fg = c.black},
  hamlId = {fg = c.black},
  hamlTag = {fg = c.black},
  hamlDocType = { link = 'Comment' },

  -- hop.nvim
  HopNextKey = {fg = c.red, bold = true},
  HopNextKey1 = {fg = c.yellow},
  HopNextKey2 = {fg = c.yellow},
  HopUnmatched = {},

  -- HTML
  htmlTag = {fg = c.black},
  htmlArg = { link = 'Identifier' },
  htmlLink = { link = 'Directory' },
  htmlScriptTag = { link = 'htmlTag' },
  htmlSpecialTagName = { link = 'htmlTag' },
  htmlTagName = { link = 'htmlTag' },

  -- Inko
  inkoCommentBold = {fg = c.grey, bold = true},
  inkoCommentItalic = {fg = c.grey, italic = true},
  inkoCommentTitle = {fg = c.grey, bold = true},
  inkoCommentInlineUrl = { link = 'Number' },
  inkoInstanceVariable = { link = 'Directory' },
  inkoKeywordArgument = { link = 'Regexp' },

  -- Java
  javaAnnotation = { link = 'Directory' },
  javaCommentTitle = { link = 'javaComment' },
  javaDocParam = { link = 'Todo' },
  javaDocTags = { link = 'Todo' },
  javaExternal = { link = 'Keyword' },
  javaStorageClass = { link = 'Keyword' },

  -- Javascript
  JavaScriptNumber = { link = 'Number' },
  javaScriptBraces = { link = 'Operator' },
  javaScriptFunction = { link = 'Keyword' },
  javaScriptIdentifier = { link = 'Keyword' },
  javaScriptMember = { link = 'Identifier' },

  -- JSON
  jsonKeyword = { link = 'String' },

  -- Lua
  luaFunction = { link = 'Keyword' },

  -- LSP
  DiagnosticUnderlineError = { underline = true, sp = c.red },
  DiagnosticUnderlineWarn = { underline = true, sp = c.yellow },
  DiagnosticError = { fg = c.red, italic = true },
  DiagnosticHint = { fg = c.grey, italic = true },
  DiagnosticInfo = { fg = c.blue, italic = true },
  DiagnosticWarn = { fg = c.yellow, italic = true },
  LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
  LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },

  -- Make
  makeTarget = { link = 'Function' },

  -- Markdown
  markdownCode = { link = 'markdownCodeBlock' },
  markdownCodeBlock = { link = 'Comment' },
  markdownListMarker = { link = 'Keyword' },
  markdownOrderedListMarker = { link = 'Keyword' },

  -- netrw
  netrwClassify = { link = 'Identifier' },

  -- Perl
  perlPackageDecl = { link = 'Identifier' },
  perlStatementInclude = { link = 'Statement' },
  perlStatementPackage = { link = 'Statement' },
  podCmdText = { link = 'Todo' },
  podCommand = { link = 'Comment' },
  podVerbatimLine = { link = 'Todo' },

  -- Ruby
  rubyStringEscape = { link = 'SpecialString' },
  rubyInterpolationDelimiter = { link = 'SpecialString' },
  rubyMethodDeclaration = { link = 'Define' },
  rubyFunction = { link = 'Define' },

  -- Rust
  rustCommentBlockDoc = { link = 'Comment' },
  rustCommentLineDoc = { link = 'Comment' },
  rustFuncCall = { link = 'Identifier' },
  rustModPath = { link = 'Identifier' },

  -- Python
  pythonOperator = { link = 'Keyword' },

  -- SASS
  sassClass = { link = 'cssClassName' },
  sassId = { link = 'cssIdentifier' },

  -- Shell
  shFunctionKey = { link = 'Keyword' },

  -- SQL
  sqlKeyword = { link = 'Keyword' },

  -- Typescript
  typescriptBraces = { link = 'Operator' },
  typescriptEndColons = { link = 'Operator' },
  typescriptExceptions = { link = 'Keyword' },
  typescriptFuncKeyword = { link = 'Keyword' },
  typescriptFunction = { link = 'Function' },
  typescriptIdentifier = { link = 'Identifier' },
  typescriptLogicSymbols = { link = 'Operator' },

  -- Vimscript
  VimCommentTitle = { link = 'Todo' },
  VimIsCommand = { link = 'Constant' },
  vimGroup = { link = 'Constant' },
  vimHiGroup = { link = 'Constant' },

  -- XML
  xmlAttrib = { link = 'Identifier' },
  xmlTag = { link = 'Identifier' },
  xmlTagName = { link = 'Identifier' },

  -- YAML
  yamlPlainScalar = { link = 'String' },

  -- YARD
  yardComment = { link = 'Comment' },
  yardType = { link = 'Todo' },
  yardTypeList = { link = 'Todo' },

  -- Treesitter

  ["@function"] = { link = 'Define' },
  ["@method"] = { link = 'Define' },

   -- @function includes both the definition and the call in some treesitter languages.
   -- Reset the calls to no highlighting
  ["@function.call"] = { link = 'Identifier' },
  ["@method.call"] = { link = 'Identifier' },

  ["@keyword.function"] = { link = 'Define' },

  -- Ruby treesitter would also highlight the "end" corresponding to a "def" with "@keyword.function"
  -- reset that here. A better highlighting is overriden in queries/ruby/highlights.scm
  ["@keyword.function.ruby"] = { link = 'Identifier' },

  -- Method parameter in definition should be highlighted. Not sure if this is problematic.
  -- For ruby we already need to override block_parameters to not be parameters.
  ["@parameter"] = { link = 'Define' },

  -- our own overrides from ./queries/<lang>/highlights.scm
  ["@custom.define"] = { link = 'Define' },
  ["@custom.noDefine"] = { link = 'Identifier' },

  -- LSP: disabled for now. See comment in readme
  -- :help lsp-semantic-highlight 
  -- ["@lsp.typemod.function.declaration"] = { link = 'Define' },
  -- ["@lsp.typemod.method.declaration"] = { link = 'Define' },
  -- ["@lsp.typemod.struct.declaration"] = { link = 'Define' },
  -- ["@lsp.typemod.namespace.declaration"] = { link = 'Define' },
  -- ["@lsp.typemod.class.declaration"] = { link = 'Define' },
  -- ["@lsp.typemod.enum.declaration"] = { link = 'Define' },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end

-- vim: et ts=2 sw=2
