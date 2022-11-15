-- stylua: ignore

-- https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f#commitcomment-87014462
local hl = function(group, opts)
  opts.default = true
  vim.api.nvim_set_hl(0, group, opts)
end
local link_ts = function()
  hl("@comment", { link = "Comment" })
  -- hl('@error', {link = 'Error'})
  hl("@none", { bg = "NONE", fg = "NONE" })
  hl("@preproc", { link = "PreProc" })
  hl("@define", { link = "Define" })
  hl("@operator", { link = "Operator" })
  -- }}}

  -- Punctuation {{{
  hl("@punctuation.delimiter", { link = "Delimiter" })
  hl("@punctuation.bracket", { link = "Delimiter" })
  hl("@punctuation.special", { link = "Delimiter" })
  -- }}}

  -- Literals {{{
  hl("@string", { link = "String" })
  hl("@string.regex", { link = "String" })
  hl("@string.escape", { link = "SpecialChar" })
  hl("@string.special", { link = "SpecialChar" })

  hl("@character", { link = "Character" })
  hl("@character.special", { link = "SpecialChar" })

  hl("@boolean", { link = "Boolean" })
  hl("@number", { link = "Number" })
  hl("@float", { link = "Float" })
  -- }}}

  -- Functions {{{
  hl("@function", { link = "Function" })
  hl("@function.call", { link = "Function" })
  hl("@function.builtin", { link = "Special" })
  hl("@function.macro", { link = "Macro" })

  hl("@method", { link = "Function" })
  hl("@method.call", { link = "Function" })

  hl("@constructor", { link = "Special" })
  hl("@parameter", { link = "Identifier" })
  -- }}}

  -- Keywords {{{
  hl("@keyword", { link = "Keyword" })
  hl("@keyword.function", { link = "Keyword" })
  hl("@keyword.operator", { link = "Keyword" })
  hl("@keyword.return", { link = "Keyword" })

  hl("@conditional", { link = "Conditional" })
  hl("@repeat", { link = "Repeat" })
  hl("@debug", { link = "Debug" })
  hl("@label", { link = "Label" })
  hl("@include", { link = "Include" })
  hl("@exception", { link = "Exception" })
  -- }}}

  -- Types {{{
  hl("@type", { link = "Type" })
  hl("@type.builtin", { link = "Type" })
  hl("@type.qualifier", { link = "Type" })
  hl("@type.definition", { link = "Typedef" })

  hl("@storageclass", { link = "StorageClass" })
  hl("@attribute", { link = "PreProc" })
  hl("@field", { link = "Identifier" })
  hl("@property", { link = "Identifier" })
  -- }}}

  -- Identifiers {{{
  hl("@variable", { link = "Normal" })
  hl("@variable.builtin", { link = "Special" })

  hl("@constant", { link = "Constant" })
  hl("@constant.builtin", { link = "Special" })
  hl("@constant.macro", { link = "Define" })

  hl("@namespace", { link = "Include" })
  hl("@symbol", { link = "Identifier" })
  -- }}}

  -- Text {{{
  hl("@text", { link = "Normal" })
  hl("@text.strong", { bold = true })
  hl("@text.emphasis", { italic = true })
  hl("@text.underline", { underline = true })
  hl("@text.strike", { strikethrough = true })
  hl("@text.title", { link = "Title" })
  hl("@text.literal", { link = "String" })
  hl("@text.uri", { link = "Underlined" })
  hl("@text.math", { link = "Special" })
  hl("@text.environment", { link = "Macro" })
  hl("@text.environment.name", { link = "Type" })
  hl("@text.reference", { link = "Constant" })

  hl("@text.todo", { link = "Todo" })
  hl("@text.note", { link = "SpecialComment" })
  hl("@text.warning", { link = "WarningMsg" })
  hl("@text.danger", { link = "ErrorMsg" })
  -- }}}

  -- Tags {{{
  hl("@tag", { link = "Tag" })
  hl("@tag.attribute", { link = "Identifier" })
  hl("@tag.delimiter", { link = "Delimiter" })
  -- }}}
end

return {
  colorscheme = function()
    local bg = "#211c2f"
    local bg2 = "#282e39"
    local bg3 = "#1a1926"
    local bg4 = "#141425"
    if vim.g.aurora_transparent then
      bg = "NONE"
      bg2 = "NONE"
      bg3 = "NONE"
      bg4 = "NONE"
    end
    if vim.g.aurora_darker then
      bg = "#141020"
      bg2 = "#1a1926"
      bg3 = "#101020"
      bg4 = "#040410"
    end

    vim.api.nvim_set_hl(0, "SignifySignAdd", { link = "GitGutterAdd" })
    vim.api.nvim_set_hl(0, "SignifySignDelete", { link = "GitGutterDelete" })
    vim.api.nvim_set_hl(0, "SignifySignDeleteFirstLine", { link = "SignifySignDelete" })
    vim.api.nvim_set_hl(0, "SignifySignChange", { link = "GitGutterChange" })
    vim.api.nvim_set_hl(0, "SignifySignChangeDelete", { link = "GitGutterChangeDelete" })
    vim.api.nvim_set_hl(0, "javaScriptOpSymbols", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "javaScriptParens", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "javaScriptDocTags", { fg = "#A6E22D", bg = "NONE", ctermfg = 148, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "javaScriptDocSeeTag", { link = "Question" })
    vim.api.nvim_set_hl(0, "javaScriptBrowserObjects", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "javaScriptDOMObjects", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "javaScriptFuncArg", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "gitcommitBranch", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "gitcommitDiscardedType", { fg = "#ec5f67", bg = "NONE", ctermfg = 203, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "gitcommitSelectedType", { link = "cssTagName" })
    vim.api.nvim_set_hl(0, "gitcommitHeader", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "gitcommitSelectedFile", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "GitSignsAddInline", {
      fg = "NONE",
      bg = "NONE",
      ctermfg = "NONE",
      ctermbg = "NONE",
      sp = "#addb67",
      bold = (vim.g.aurora_bold == 1),
      underline = true,
    })
    vim.api.nvim_set_hl(0, "GitSignsDeleteInline", {
      fg = "NONE",
      bg = "NONE",
      ctermfg = "NONE",
      ctermbg = "NONE",
      sp = "#E7C547",
      bold = (vim.g.aurora_bold == 1),
      strikethrough = true,
    })
    if vim.fn.has("nvim-0.8") == 1 then
      vim.api.nvim_set_hl(0, "GitSignsChangeInline", {
        fg = "NONE",
        bg = "NONE",
        ctermfg = "NONE",
        ctermbg = "NONE",
        sp = "#B376B3",
        bold = (vim.g.aurora_bold == 1),
        underdouble = true,
      })
    else
      vim.api.nvim_set_hl(0, "GitSignsChangeInline", {
        fg = "NONE",
        bg = "NONE",
        ctermfg = "NONE",
        ctermbg = "NONE",
        sp = "#B376B3",
        bold = (vim.g.aurora_bold == 1),
        underlineline = true,
      })
    end
    vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#9dd067", bg = bg3, ctermfg = 149, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#4cc7e4", bg = bg3, ctermfg = 80, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#f05874", bg = bg3, ctermfg = 204, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "GitGutterChangeDelete", { fg = "#7d2c9d", bg = bg3, ctermfg = 91, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "jsParensIfElse", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "jsObjectKey", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "jsRepeat", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "jsArrowFunction", { fg = "#be9af7", ctermfg = 141 })
    vim.api.nvim_set_hl(0, "jsFunctionKey", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "jsObjectFuncName", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "jsNull", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "jsObjectColon", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "jsParens", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "jsFuncParens", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "jsFuncArgs", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "jsSpecial", { fg = "#F92772", ctermfg = 197 })
    vim.api.nvim_set_hl(0, "jsTemplateBraces", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "jsGlobalObjects", { link = "SpellCap" })
    vim.api.nvim_set_hl(
      0,
      "jsGlobalNodeObjects",
      { fg = "#2ba245", bg = "NONE", ctermfg = 35, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "jsImport", { fg = "#7202da", ctermfg = 56, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "jsExport", { link = "TSAttribute" })
    vim.api.nvim_set_hl(0, "jsExportDefault", { fg = "#9eeb61", ctermfg = 149 })
    vim.api.nvim_set_hl(0, "jsExportDefaultGroup", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "jsFrom", { link = "jsReturn" })
    vim.api.nvim_set_hl(0, "ALEErrorSign", { fg = "#ff5874", bg = bg3, ctermfg = 204, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "ALEWarningSign", { fg = "#FD9720", bg = bg3, ctermfg = 208, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "ALEInfoSign", { fg = "#addb67", bg = bg3, ctermfg = 149, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "plug2", { link = "cssClassName" })
    vim.api.nvim_set_hl(
      0,
      "plugH2",
      { fg = "#5ca7e4", bg = "NONE", ctermfg = 74, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "plugBracket", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "plugNumber", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "plugDash", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "plugStar", { fg = "#fbfcbf", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "plugMessage", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "plugName", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "plugUpdate", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "plugEdge", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "plugSha", { fg = "#fbfcbf", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "plugNotLoaded", { fg = "#F92772", bg = "NONE", ctermfg = 197, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#989cbf", bg = bg, ctermfg = 247, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#4cc7e4", bg = bg, ctermfg = 80, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#5ca7e4", bg = bg, ctermfg = 74, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#9e71cf", bg = bg, ctermfg = 134, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#66d9ef", bg = bg, ctermfg = 81, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#A1EFE4", bg = "#333333", ctermfg = 158, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#EE82EE", ctermfg = 213 })
    vim.api.nvim_set_hl(0, "sqlStatement", { fg = "#54CED6", bg = "NONE", ctermfg = 80, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "sqlKeyword", { fg = "#ffbe00", ctermfg = 214, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "sqlSpecial", { fg = "#DC143C", bg = "NONE", ctermfg = 161, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "sqlType", { link = "Question" })
    vim.api.nvim_set_hl(0, "sqlFunction", { fg = "#ec5f67", bg = "NONE", ctermfg = 203, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "mysqlKeyword", { fg = "#C33C4A", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "mysqlOperator", { link = "DiagnosticHint" })
    vim.api.nvim_set_hl(0, "mysqlFunction", { fg = "#50c878", bg = "NONE", ctermfg = 78, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "mysqlStatement", { fg = "#A1EFE4", bg = "NONE", ctermfg = 158, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "mysqlType", { fg = "#0fb9e0", bg = "NONE", ctermfg = 38, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Quote", { link = "Label" })
    vim.api.nvim_set_hl(0, "cPreCondit", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cDefine", { link = "typescriptReserved" })
    vim.api.nvim_set_hl(0, "cStructure", { link = "Question" })
    vim.api.nvim_set_hl(
      0,
      "cStorageClass",
      { fg = "#50B4DC", bg = "NONE", ctermfg = 74, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "cCustomClass",
      { fg = "#b4b0e0", bg = "NONE", ctermfg = 146, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "cCustomMemVar",
      { fg = "#50c878", bg = "NONE", ctermfg = 78, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "cCustom", { fg = "#addb67", bg = "NONE", ctermfg = 149, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cType", { link = "typescriptReserved" })
    vim.api.nvim_set_hl(0, "cCustomParen", { fg = "#FD9720", bg = "NONE", ctermfg = 208, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cConditional", { link = "Repeat" })
    vim.api.nvim_set_hl(0, "cCustomFunc", { link = "Function" })
    vim.api.nvim_set_hl(
      0,
      "cStatement",
      { fg = "#F92772", bg = "NONE", ctermfg = 197, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "cppSTLnamespace", { link = "Question" })
    vim.api.nvim_set_hl(0, "cppAccess", { fg = "#A1EFE4", bg = "NONE", ctermfg = 158, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "cAnsiFunction",
      { fg = "#DDCFBF", bg = "NONE", ctermfg = 187, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "cRepeat", { link = "Repeat" })
    vim.api.nvim_set_hl(
      0,
      "cSpecial",
      { fg = "#333042", bg = "NONE", ctermfg = 236, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "yamlFlowString", { fg = "#fbfcbf", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "yamlFlowStringDelimiter", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "yamlKeyValueDelimiter", { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "markdownH1", { link = "cssProp" })
    vim.api.nvim_set_hl(
      0,
      "markdownHeadingRule",
      { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "markdownHeadingDelimiter",
      { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "markdownListMarker", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "markdownBlockquote", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "markdownRule", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "markdownLinkText", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "markdownLinkTextDelimiter", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "markdownLinkDelimiter", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "markdownIdDeclaration", { link = "cssTagName" })
    vim.api.nvim_set_hl(0, "markdownAutomaticLink", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "markdownUrl", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "markdownUrlTitle", { fg = "#fbfcbf", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "markdownUrlDelimiter", { link = "jsonNumber" })
    vim.api.nvim_set_hl(
      0,
      "markdownUrlTitleDelimiter",
      { fg = "#fbed7d", bg = "NONE", ctermfg = 228, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "markdownCode", { fg = "#fbfcbf", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "markdownEscape", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "markdownError", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "ClapPreview", { bg = bg2, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "ClapMatches", {
      fg = "#C33C4A",
      bg = "#443a54",
      ctermfg = 131,
      ctermbg = 238,
      sp = "#f05874",
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
      reverse = true,
    })
    vim.api.nvim_set_hl(0, "ClapDisplay", {
      fg = "#aab7cf",
      bg = bg,
      ctermfg = 146,
      ctermbg = 234,
      sp = "#f05874",
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
    })
    vim.api.nvim_set_hl(0, "TSAnnotation", { fg = "#82aaf0", ctermfg = 111 })
    vim.api.nvim_set_hl(0, "TSAttribute", { fg = "#7fdbca", ctermfg = 116 })
    vim.api.nvim_set_hl(0, "TSCharacter", { fg = "#ffce51", ctermfg = 221 })
    vim.api.nvim_set_hl(0, "TSComment", { link = "Comment" })
    vim.api.nvim_set_hl(0, "TSError", {
      fg = "#DC143C",
      bg = "NONE",
      ctermfg = 161,
      ctermbg = "NONE",
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
    })
    vim.api.nvim_set_hl(
      0,
      "TSPunctDelimiter",
      { fg = "#e7d3fb", bg = "NONE", ctermfg = 189, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#7AA6DA", ctermfg = 110, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSPunctSpectial", { fg = "#E7C547", bg = "NONE", ctermfg = 185, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "TSConstant", { link = "Constant" })
    vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = "#e73c50", ctermfg = 167, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "TSConstMacro", { fg = "#F92772", ctermfg = 197 })
    vim.api.nvim_set_hl(0, "TSString", { link = "String" })
    vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#7fdbca", ctermfg = 116 })
    vim.api.nvim_set_hl(0, "TSStringEscape", { fg = "#A1EFE4", ctermfg = 158 })
    vim.api.nvim_set_hl(0, "TSNumber", { link = "Number" })
    vim.api.nvim_set_hl(0, "TSBoolean", { link = "Boolean" })
    vim.api.nvim_set_hl(0, "TSFloat", { link = "Float" })
    vim.api.nvim_set_hl(0, "TSField", { fg = "#9e71cf", ctermfg = 134, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSType", { link = "Type" })
    vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = "#ffce51", ctermfg = 221, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSProperty", { fg = "#01d5f1", ctermfg = 45 })
    vim.api.nvim_set_hl(0, "TSParameter", { fg = "#fbec9f", ctermfg = 229 })
    vim.api.nvim_set_hl(0, "TSConstructor", { fg = "#6690c4", ctermfg = 68, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSFunction", { fg = "#66d9ef", ctermfg = 81, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = "#0fb9e0", ctermfg = 38, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSFunctionBuiltin", { fg = "#A6E22D", ctermfg = 148, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSFuncBuiltin", { fg = "#0fb9e0", ctermfg = 38, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSFuncMacro", { fg = "#be9af7", ctermfg = 141, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(
      0,
      "TSParameterReference",
      { fg = "#A1EFE4", bg = "NONE", ctermfg = 158, ctermbg = "NONE", bold = true }
    )
    vim.api.nvim_set_hl(0, "Hlargs", { link = "TSParameter" })
    vim.api.nvim_set_hl(0, "TSMethod", { link = "Function" })
    vim.api.nvim_set_hl(0, "TSConditional", { fg = "#EE82EE", ctermfg = 213, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSRepeat", { link = "Repeat" })
    vim.api.nvim_set_hl(0, "TSException", { fg = "#ff5874", ctermfg = 204, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "TSLabel", { link = "Label" })
    vim.api.nvim_set_hl(0, "TSOperator", { link = "Operator" })
    vim.api.nvim_set_hl(0, "TSKeyword", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "TSStructure", { link = "Structure" })
    vim.api.nvim_set_hl(0, "TSInclude", { link = "Include" })
    vim.api.nvim_set_hl(0, "TSTag", { link = "Tag" })
    vim.api.nvim_set_hl(0, "TSTagDelimiter", { link = "Delimiter" })
    vim.api.nvim_set_hl(0, "TSTagAttribute", { link = "Structure" })
    vim.api.nvim_set_hl(0, "TSVariable", { link = "Identifier" })
    vim.api.nvim_set_hl(0, "TSVariableBuiltin", { fg = "#FD9720", ctermfg = 208 })
    vim.api.nvim_set_hl(0, "TSDefinitionUsage", { fg = "#E6DB74", ctermfg = 186 })
    vim.api.nvim_set_hl(0, "TSDefinition", { link = "Define" })
    vim.api.nvim_set_hl(0, "TSStrong", { fg = "#DBC08A", ctermfg = 180, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(
      0,
      "TSEmphasis",
      { fg = "#fbed7d", ctermfg = 228, bold = (vim.g.aurora_bold == 1), undercurl = true, italic = true }
    )
    vim.api.nvim_set_hl(0, "TSUnderline", { fg = "#ecc48d", ctermfg = 222, undercurl = true })
    vim.api.nvim_set_hl(0, "TSTitle", { link = "SpecialKey" })
    vim.api.nvim_set_hl(0, "TSLiteral", { fg = "#dacfb4", ctermfg = 187 })
    vim.api.nvim_set_hl(0, "TSURI", { fg = "#A6E22D", ctermfg = 148, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "TSCurrentScope", { bg = bg, ctermbg = 234, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSIdentifier", { fg = "#dacfb4", ctermfg = 187, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "TSNameSpace", { link = "Function" })
    vim.api.nvim_set_hl(0, "pythonStatement", { link = "Repeat" })
    vim.api.nvim_set_hl(0, "pythonRepeat", { link = "Repeat" })
    vim.api.nvim_set_hl(0, "pythonFunction", { fg = "#54CED6", bg = "NONE", ctermfg = 80, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "pythonExClass", { fg = "#DDCFBF", bg = "NONE", ctermfg = 187, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "pythonBuiltinObj", { link = "Repeat" })
    vim.api.nvim_set_hl(0, "pythonDot", { fg = "#FD9720", bg = "NONE", ctermfg = 208, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "pythonBuiltinFunc", { fg = "#DDCFBF", bg = "NONE", ctermfg = 187, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "jsStorageClass", { fg = "#4cc7e4", ctermfg = 80 })
    vim.api.nvim_set_hl(0, "jsOperator", { fg = "#be9af7", ctermfg = 141 })
    vim.api.nvim_set_hl(0, "jsString", { fg = "#1aad16", ctermfg = 34, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "jsComment", { fg = "#637077", ctermfg = 243, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "jsFuncCall", { fg = "#54CED6", ctermfg = 80 })
    vim.api.nvim_set_hl(0, "jsNumber", { link = "TSParameter" })
    vim.api.nvim_set_hl(0, "jsObjectProp", { link = "DiagnosticHint" })
    vim.api.nvim_set_hl(0, "jsOperatorKeyword", { fg = "#1aad16", ctermfg = 34 })
    vim.api.nvim_set_hl(0, "jsBooleanFalse", { fg = "#ff5874", ctermfg = 204 })
    vim.api.nvim_set_hl(0, "jsBooleanTrue", { fg = "#ff5874", ctermfg = 204 })
    vim.api.nvim_set_hl(0, "jsRegexpString", { link = "CocHintSign" })
    vim.api.nvim_set_hl(0, "jsConditional", { link = "jsReturn" })
    vim.api.nvim_set_hl(0, "jsFunction", { fg = "#10aef8", ctermfg = 39 })
    vim.api.nvim_set_hl(0, "jsFunctionCall", { fg = "#9eeb61", ctermfg = 149 })
    vim.api.nvim_set_hl(0, "jsFuncBlock", { fg = "#10aef8", ctermfg = 39 })
    vim.api.nvim_set_hl(0, "jsReturn", { fg = "#be9af7", ctermfg = 141 })
    vim.api.nvim_set_hl(0, "jsFuncName", { fg = "#2782d4", ctermfg = 32 })
    vim.api.nvim_set_hl(0, "jsParensError", { link = "jsFuncParens" })
    vim.api.nvim_set_hl(0, "jsClassDefinition", { link = "SpecialKey" })
    vim.api.nvim_set_hl(0, "jsModuleAs", { fg = "#ae81ef", ctermfg = 141, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "jsExtendsKeyword", { fg = "#B376B3", ctermfg = 139, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "javaScriptReserved", { fg = "#82aaf0", ctermfg = 111 })
    vim.api.nvim_set_hl(0, "javaScriptConditional", { link = "jsReturn" })
    vim.api.nvim_set_hl(0, "javaScriptStringS", { link = "SpecialKey" })
    vim.api.nvim_set_hl(0, "javaScriptBoolean", { fg = "#ff5874", ctermfg = 204 })
    vim.api.nvim_set_hl(0, "javaScriptBraces", { fg = "#e7d3fb", ctermfg = 189 })
    vim.api.nvim_set_hl(
      0,
      "javaScriptLineComment",
      { fg = "#637077", ctermfg = 243, italic = (vim.g.aurora_italic == 1) }
    )
    vim.api.nvim_set_hl(0, "javaScriptSpecial", { link = "TSParameter" })
    vim.api.nvim_set_hl(0, "javaScriptFunction", { fg = "#50B4DC", ctermfg = 74 })
    vim.api.nvim_set_hl(0, "javaScriptStatement", { link = "jsReturn" })
    vim.api.nvim_set_hl(0, "javaScriptException", { fg = "#D93234", ctermfg = 167 })
    vim.api.nvim_set_hl(0, "vimCommentString", { fg = "#fbed7d", bg = "NONE", ctermfg = 228, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "vimCommentTitle", { link = "Question" })
    vim.api.nvim_set_hl(0, "vimError", { fg = "#dacfb4", bg = "#f05874", ctermfg = 187, ctermbg = 204 })
    vim.api.nvim_set_hl(0, "LightspeedLabel", {
      fg = "#e7d3fb",
      bg = "#57109a",
      ctermfg = 189,
      ctermbg = 54,
      sp = "#ecc48d",
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
      italic = true,
    })
    vim.api.nvim_set_hl(0, "LightspeedOverlapped", { fg = "NONE", bg = "#DC143C", ctermfg = "NONE", ctermbg = 161 })
    vim.api.nvim_set_hl(0, "LightspeedLabelDistant", { fg = "NONE", bg = "#DC143C", ctermfg = "NONE", ctermbg = 161 })
    vim.api.nvim_set_hl(
      0,
      "LightspeedLabelDistantOverlapped",
      { fg = "NONE", bg = "#DC143C", ctermfg = "NONE", ctermbg = 161 }
    )
    vim.api.nvim_set_hl(
      0,
      "LightspeedShortcut",
      { fg = "#EE82EE", ctermfg = 213, bold = (vim.g.aurora_bold == 1), undercurl = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LightspeedShortcutOverlapped",
      { fg = "#EE82EE", ctermfg = 213, bold = (vim.g.aurora_bold == 1), undercurl = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LightspeedMaskedChar",
      { fg = "#ff5874", ctermfg = 204, bold = (vim.g.aurora_bold == 1), undercurl = true }
    )
    vim.api.nvim_set_hl(0, "LightspeedGreyWash", { fg = "#989cbf", ctermfg = 247, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(
      0,
      "LightspeedUnlabeledMatch",
      { fg = "#F92772", ctermfg = 197, bold = (vim.g.aurora_bold == 1), italic = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LightspeedOneCharMatch",
      { fg = "#f19bb6", ctermfg = 211, bold = (vim.g.aurora_bold == 1), italic = true }
    )
    vim.api.nvim_set_hl(0, "LightspeedUniqueChar", { fg = "#d7ffaf", ctermfg = 193, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(
      0,
      "LightspeedPendingOpArea",
      { fg = "#66d9ef", ctermfg = 81, bold = (vim.g.aurora_bold == 1), undercurl = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LightspeedPendingChangeOpArea",
      { fg = "#d7ffaf", ctermfg = 193, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "LightspeedCursor", { fg = "#ffbbd6", bg = "#22202a", ctermfg = 218, ctermbg = 235 })
    vim.api.nvim_set_hl(
      0,
      "HopNextKey",
      { fg = "#EE82EE", ctermfg = 213, bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(
      0,
      "HopNextKey1",
      { fg = "#ecc48d", ctermfg = 222, bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(
      0,
      "HopNextKey2",
      { fg = "#82aaf0", ctermfg = 111, bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#777087", bg = "NONE", ctermfg = 243, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "IndentBlanklineContextChar",
      { fg = "#c4a2ff", ctermfg = 183, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "IndentBlanklineContextStart",
      { fg = "#c4a2ff", ctermfg = 183, bold = (vim.g.aurora_bold == 1), underline = true, sp = "#c4a2ff" }
    )
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#be9af7", bg = "NONE", ctermfg = 141, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#82aaf0", bg = "NONE", ctermfg = 111, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#addb67", bg = "NONE", ctermfg = 149, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#ecc48d", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#FD9720", bg = "NONE", ctermfg = 208, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#ff5874", bg = "NONE", ctermfg = 204, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "jsonEscape", { fg = "#5ca7e4", bg = "NONE", ctermfg = 74, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "jsonNumber", { fg = "#fbec9f", bg = "NONE", ctermfg = 229, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "jsonBraces", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "jsonNull", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "jsonBoolean", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "jsonKeywordMatch", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "jsonQuote", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "jsonNoise", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#DC143C", bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#D93234", bg = bg3, ctermfg = 167, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "DiagnosticErrorFloating", { link = "DiagnosticError" })
    vim.api.nvim_set_hl(0, "DiagnosticWarning", { fg = "#bBa03A", bg = "NONE", ctermfg = 143, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#e7dc8c", bg = bg3, ctermfg = 186, ctermbg = 234 })
    vim.api.nvim_set_hl(
      0,
      "DiagnosticWarningFloating",
      { fg = "#DBC08A", bg = "NONE", ctermfg = 180, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(
      0,
      "DiagnosticVirtualTextError",
      { fg = "#D93234", bg = "NONE", ctermfg = 167, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(
      0,
      "DiagnosticVirtualTextWarning",
      { fg = "#DBC08A", bg = "NONE", ctermfg = 180, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(
      0,
      "DiagnosticVirtualTextInfo",
      { fg = "#99c794", bg = "NONE", ctermfg = 114, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#1aad16", bg = "NONE", ctermfg = 34, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { link = "Error" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { link = "DiagnosticWarn", undercurl = true, sp = "#BBA03A" })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { link = "DiagnosticError" })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingWarning", { link = "DiagnosticWarning" })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { link = "DiagnosticInfo" })
    vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { link = "DiagnosticHint" })
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#7AA6DA", bg = bg3, ctermfg = 110, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#7AA6DA", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#2ba245", bg = "NONE", ctermfg = 35, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#ffce51", bg = bg3, ctermfg = 221, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "DiagnosticHintFloating", { fg = "#1ABC9C", bg = "NONE", ctermfg = 37, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "LspReferenceText",
      { bg = "#3f3047", ctermbg = 239, sp = "#FD9720", bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LspReferenceRead",
      { fg = "#1aad16", ctermfg = 34, sp = "#FD9720", bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(
      0,
      "LspReferenceWrite",
      { fg = "#1aad16", ctermfg = 34, sp = "#FD9720", bold = (vim.g.aurora_bold == 1), underline = true }
    )
    vim.api.nvim_set_hl(0, "LspFloatWinNormal", { fg = "#dacfb4", bg = "#30234f", ctermfg = 187, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {
      fg = "NONE",
      bg = "#4d0c5d",
      ctermfg = "NONE",
      ctermbg = 53,
      sp = "#fbec9f",
      bold = (vim.g.aurora_bold == 1),
      underline = true,
      italic = true,
    })
    vim.api.nvim_set_hl(0, "cssVendor", { link = "cssTagName" })
    vim.api.nvim_set_hl(0, "cssTagName", { fg = "#7fdbca", bg = "NONE", ctermfg = 116, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cssAttrComma", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssBackgroundProp", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cssBorderProp", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cssBoxProp", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "cssDimensionProp", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "cssFontProp", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cssPositioningProp", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "cssTextProp", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cssValueLength", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssValueInteger", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssValueNumber", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssIdentifier", { link = "cssTagName" })
    vim.api.nvim_set_hl(0, "cssIncludeKeyword", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "cssImportant", { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cssClassName", { fg = "#9dd067", bg = "NONE", ctermfg = 149, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cssClassNameDot", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssProp", { fg = "#4cc7e4", bg = "NONE", ctermfg = 80, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cssAttr", { fg = "#dacfb4", bg = "NONE", ctermfg = 187, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "cssUnitDecorators", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "cssNoise", { link = "cssImportant" })
    vim.api.nvim_set_hl(
      0,
      "goBuiltins",
      { fg = "#01d5f1", bg = "NONE", ctermfg = 45, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1), italic = true }
    )
    vim.api.nvim_set_hl(0, "goConditional", { fg = "#EE82EE", bg = "NONE", ctermfg = 213, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "goDeclType",
      { fg = "#9e71cf", bg = "NONE", ctermfg = 134, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "goDirective", { fg = "#CD5C5C", bg = "NONE", ctermfg = 167, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goFloats", { link = "Character" })
    vim.api.nvim_set_hl(0, "goFunction", { fg = "#88dfe9", ctermfg = 116, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goFunctionCall", { fg = "#0fb9e0", ctermfg = 38, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goFunctionReturn", { fg = "#ae81ef", ctermfg = 141 })
    vim.api.nvim_set_hl(0, "goImport", { fg = "#A1EFE4", bg = "NONE", ctermfg = 158, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goLabel", { fg = "#FD9720", bg = "NONE", ctermfg = 208, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goMethod", { link = "Function" })
    vim.api.nvim_set_hl(0, "goMethodCall", { fg = "#66d9ef", ctermfg = 81, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goPackage", { fg = "#EE82EE", bg = "NONE", ctermfg = 213, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goRepeat", { fg = "#ffce51", bg = "NONE", ctermfg = 221, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goSignedInts", { fg = "#50c878", bg = "NONE", ctermfg = 78, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goStruct", { fg = "#ff7f50", ctermfg = 209, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goStructDef", { fg = "#87ceeb", ctermfg = 116, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goUnsignedInts", { link = "Character" })
    vim.api.nvim_set_hl(0, "goParamName", { link = "TSParameter" })
    vim.api.nvim_set_hl(0, "goParamType", { fg = "#E7C547", ctermfg = 185 })
    vim.api.nvim_set_hl(0, "goParen", { fg = "#fbed7d", bg = "NONE", ctermfg = 228, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "goDeclaration", { fg = "#D57CD5", ctermfg = 176, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goSameId", {
      fg = "NONE",
      bg = "#343047",
      ctermfg = "NONE",
      ctermbg = 236,
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
      italic = true,
    })
    vim.api.nvim_set_hl(
      0,
      "goPredefinedIdentifiers",
      { fg = "#CD5C5C", ctermfg = 167, italic = (vim.g.aurora_italic == 1) }
    )
    vim.api.nvim_set_hl(0, "goVar", { fg = "#ff7273", ctermfg = 203, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goType", { fg = "#ffce51", ctermfg = 221, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goTypeDecl", { fg = "#E6DB74", ctermfg = 186, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "goTypeName", { fg = "#FF5D71", ctermfg = 203, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "stylusVariable", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "stylusClass", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "stylusClassChar", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "stylusId", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "stylusIdChar", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "cssVisualVal", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "stylusImport", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "CocErrorSign", { fg = "#f05874", ctermfg = 204 })
    vim.api.nvim_set_hl(0, "CocWarningSign", { fg = "#fbfcbf", ctermfg = 229 })
    vim.api.nvim_set_hl(0, "CocHintSign", { fg = "#5ca7e4", ctermfg = 74 })
    vim.api.nvim_set_hl(0, "CocInfoSign", { link = "TSParameter" })
    vim.api.nvim_set_hl(0, "CocLine", { sp = "#FD9720", undercurl = true })
    vim.api.nvim_set_hl(0, "CocUnderline", { sp = "#FD9720", undercurl = true })
    vim.api.nvim_set_hl(0, "CocErrorline", { sp = "#DC143C", undercurl = true })
    vim.api.nvim_set_hl(0, "FugitiveblameHash", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "FugitiveblameUncommitted", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "FugitiveblameTime", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "FugitiveblameNotCommittedYet", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "Normal", { fg = "#ddd0f4", bg = bg, ctermfg = 189, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#dacfb4", bg = bg2, ctermfg = 187, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "NormalNC", { fg = "#a9b1d6", bg = bg2, ctermfg = 146, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#4cc7e4", bg = bg2, ctermfg = 80, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#6f527e", bg = bg, ctermfg = 239, ctermbg = 234 })
    vim.api.nvim_set_hl(
      0,
      "CursorLine",
      { fg = "NONE", bg = "#343047", ctermfg = "NONE", ctermbg = 236, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "CursorLineNr",
      { fg = "#1aad16", bg = bg3, ctermfg = 34, ctermbg = 234, underline = true, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "ColorColumn", { fg = "NONE", bg = "#22202a", ctermfg = "NONE", ctermbg = 235 })
    vim.api.nvim_set_hl(0, "Cursor", { bg = "#ddd0f4", ctermbg = 189 })
    vim.api.nvim_set_hl(0, "CursorIM", { fg = "#ddd0f4", bg = "#5f7e97", ctermfg = 189, ctermbg = 66 })
    vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#343047", ctermbg = 236 })
    vim.api.nvim_set_hl(0, "Directory", { fg = "#82aaf0", ctermfg = 111 })
    vim.api.nvim_set_hl(
      0,
      "DiffAdd",
      { fg = "NONE", bg = "#4f425e", ctermfg = "NONE", ctermbg = 239, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "DiffChange",
      { fg = "NONE", bg = bg2, ctermfg = "NONE", ctermbg = 236, bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "DiffDelete", {
      fg = "NONE",
      bg = "#3f4060",
      ctermfg = "NONE",
      ctermbg = 239,
      bold = (vim.g.aurora_bold == 1),
      strikethrough = true,
    })
    vim.api.nvim_set_hl(0, "DiffText", {
      fg = "NONE",
      bg = "#821040",
      ctermfg = "NONE",
      ctermbg = 89,
      bold = (vim.g.aurora_bold == 1),
      italic = true,
      underline = true,
    })
    vim.api.nvim_set_hl(
      0,
      "ErrorMsg",
      { fg = "#DC143C", bg = "NONE", ctermfg = 161, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "VertSplit", { fg = "#777087", ctermfg = 243 })
    vim.api.nvim_set_hl(0, "Folded", { fg = "#777087", bg = bg4, ctermfg = 243, ctermbg = 233 })
    vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#333042", bg = bg4, ctermfg = 236, ctermbg = 233 })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = "NONE", bg = bg3, ctermfg = "NONE", ctermbg = 233 })
    if vim.fn.has("nvim-0.8") == 1 then
      vim.api.nvim_set_hl(0, "IncSearch", {
        fg = "NONE",
        bg = "#57109a",
        ctermfg = "NONE",
        ctermbg = 54,
        sp = "#ecc48d",
        bold = (vim.g.aurora_bold == 1),
        underdouble = true,
        italic = true,
      })
      vim.api.nvim_set_hl(0, "MatchParen", {
        fg = "#EE82EE",
        bg = "NONE",
        ctermfg = 213,
        ctermbg = "NONE",
        sp = "#E7C547",
        bold = (vim.g.aurora_bold == 1),
        underdouble = true,
      })
      vim.api.nvim_set_hl(0, "Search", {
        fg = "NONE",
        bg = "#3f4060",
        ctermfg = "NONE",
        ctermbg = 239,
        sp = "#EE82EE",
        bold = (vim.g.aurora_bold == 1),
        underdouble = true,
        italic = true,
      })
    else
      vim.api.nvim_set_hl(0, "IncSearch", {
        fg = "NONE",
        bg = "#57109a",
        ctermfg = "NONE",
        ctermbg = 54,
        sp = "#ecc48d",
        bold = (vim.g.aurora_bold == 1),
        underlineline = true,
        italic = true,
      })
      vim.api.nvim_set_hl(0, "MatchParen", {
        fg = "#EE82EE",
        bg = "NONE",
        ctermfg = 213,
        ctermbg = "NONE",
        sp = "#E7C547",
        bold = (vim.g.aurora_bold == 1),
        underlineline = true,
      })
      vim.api.nvim_set_hl(0, "Search", {
        fg = "NONE",
        bg = "#3f4060",
        ctermfg = "NONE",
        ctermbg = 239,
        sp = "#EE82EE",
        bold = (vim.g.aurora_bold == 1),
        underlineline = true,
        italic = true,
      })
    end
    vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#77d507", bg = "NONE", ctermfg = 112, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#aab7cf", bg = "NONE", ctermfg = 146, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NonText", { fg = "#4f425e", ctermfg = 239 })
    vim.api.nvim_set_hl(0, "PMenu", { fg = "#888ca9", bg = bg3, ctermfg = 103, ctermbg = 234 })
    vim.api.nvim_set_hl(
      0,
      "PMenuSel",
      { fg = "#e7d3fb", bg = "#443a54", ctermfg = 189, ctermbg = 238, bold = (vim.g.aurora_bold == 1), italic = true }
    )
    vim.api.nvim_set_hl(0, "PmenuSbar", { fg = "NONE", bg = "#4f425e", ctermfg = "NONE", ctermbg = 239 })
    vim.api.nvim_set_hl(0, "PmenuThumb", { fg = "NONE", bg = "#aab7cf", ctermfg = "NONE", ctermbg = 146 })
    vim.api.nvim_set_hl(0, "MsgArea", { fg = "#ffbbd6", bg = bg, ctermfg = 218, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "Question", { fg = "#6690c4", bg = "NONE", ctermfg = 68, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#ecc48d", ctermfg = 222 })
    vim.api.nvim_set_hl(
      0,
      "SpellBad",
      { fg = "#ac3f27", bg = "NONE", ctermfg = 130, ctermbg = "NONE", sp = "#ac3f27", undercurl = true }
    )
    vim.api.nvim_set_hl(0, "SpellCap", { fg = "#5ca7e4", bg = "NONE", ctermfg = 74, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "SpellRare",
      { fg = "#99c794", bg = "NONE", ctermfg = 114, ctermbg = "NONE", sp = "#addb67", undercurl = true }
    )
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ddd0f4", bg = "#443a54", ctermfg = 189, ctermbg = 238 })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#777087", bg = "#343047", ctermfg = 243, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "TabLine", { fg = "#7BA1D0", bg = bg, ctermfg = 110, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "TabLineFill", { fg = "#333042", bg = "NONE", ctermfg = 236, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "TabLineSel",
      { fg = "#10aef8", bg = "NONE", ctermfg = 39, ctermbg = "NONE", underline = true }
    )
    vim.api.nvim_set_hl(0, "Title", { fg = "#82aaf0", ctermfg = 111, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#3f4060", ctermbg = 239 })
    vim.api.nvim_set_hl(0, "VisualNOS", { fg = "#637077", bg = "NONE", ctermfg = 243, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ec5f67", ctermfg = 203, sp = "#821040", undercurl = true })
    vim.api.nvim_set_hl(0, "WildMenu", { fg = "#777087", bg = bg, ctermfg = 243, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#4f425e", bg = bg3, ctermfg = 239, ctermbg = 234 })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#989cbf", ctermfg = 247, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "Constant", { fg = "#fbfcbf", ctermfg = 229 })
    vim.api.nvim_set_hl(0, "String", { fg = "#1ABC9C", ctermfg = 35 })
    vim.api.nvim_set_hl(0, "Character", { fg = "#be9af7", bg = "NONE", ctermfg = 141, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Boolean", { fg = "#FF435B", ctermfg = 203, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "Number", { fg = "#FD9720", ctermfg = 208 })
    vim.api.nvim_set_hl(0, "Float", { fg = "#F92772", ctermfg = 197 })
    vim.api.nvim_set_hl(0, "Identifier", { fg = "#e7d3fb", ctermfg = 189 })
    vim.api.nvim_set_hl(0, "Function", { fg = "#10aef8", ctermfg = 39, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "Statement", { fg = "#F92772", ctermfg = 197, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "Conditional", { fg = "#99c794", bg = "NONE", ctermfg = 114, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Repeat", { fg = "#ff7273", ctermfg = 203, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "Label", { fg = "#1aad16", ctermfg = 34, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "Operator", { fg = "#A1EFE4", ctermfg = 158, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#c4a2ff", ctermfg = 183, bold = (vim.g.aurora_bold == 1), italic = true })
    vim.api.nvim_set_hl(0, "Exception", { fg = "#e55285", ctermfg = 168 })
    vim.api.nvim_set_hl(0, "PreProc", { fg = "#EE82EE", ctermfg = 213 })
    vim.api.nvim_set_hl(0, "Include", { fg = "#D57CD5", bg = "NONE", ctermfg = 176, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Define", { fg = "#ff5874", ctermfg = 204, italic = (vim.g.aurora_italic == 1) })
    vim.api.nvim_set_hl(0, "Macro", { fg = "#C33C4A", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "PreCondit", { fg = "#d7ffaf", bg = "NONE", ctermfg = 193, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Type", { fg = "#67d5b5", ctermfg = 79, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "StorageClass", { fg = "#01d5f1", ctermfg = 45 })
    vim.api.nvim_set_hl(0, "Structure", { fg = "#A1EFE4", ctermfg = 158, bold = (vim.g.aurora_bold == 1) })
    vim.api.nvim_set_hl(0, "Typedef", { fg = "#66d9ef", bg = "NONE", ctermfg = 81, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Special", { fg = "#FF6347", bg = "NONE", ctermfg = 203, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#F92772", bg = "NONE", ctermfg = 197, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Tag", { fg = "#addb67", bg = "NONE", ctermfg = 149, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "htmlTag", { link = "Tag" })
    vim.api.nvim_set_hl(0, "htmlEndTag", { link = "htmlTag" })
    vim.api.nvim_set_hl(0, "Delimiter", { fg = "#A1EFE4", bg = "NONE", ctermfg = 158, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#637077", bg = "NONE", ctermfg = 243, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Debug", { fg = "#6189bb", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Underlined", { fg = "#67d5b5", bg = "NONE", ctermfg = 79, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Ignore", { fg = "#4f425e", bg = "NONE", ctermfg = 239, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Error", {
      fg = "#DC143C",
      bg = "NONE",
      ctermfg = 161,
      ctermbg = "NONE",
      sp = "#e7dc8c",
      bold = (vim.g.aurora_bold == 1),
      undercurl = true,
    })
    vim.api.nvim_set_hl(0, "Todo", {
      fg = "#e73c50",
      bg = "#6D3B66",
      ctermfg = 167,
      ctermbg = 242,
      bold = (vim.g.aurora_bold == 1),
      underline = true,
    })
    vim.api.nvim_set_hl(0, "Conceal", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "typescriptParens", { fg = "#10aef8", bg = "NONE", ctermfg = 39, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "typescriptLogicSymbols", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptReserved", { fg = "#3649dc", bg = "NONE", ctermfg = 62, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "typescriptLabel", { link = "DiagnosticHintFloating" })
    vim.api.nvim_set_hl(0, "typescriptFuncName", { fg = "#1aad16", bg = "NONE", ctermfg = 34, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "typescriptCall", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "typescriptVariable", { link = "typescriptReserved" })
    vim.api.nvim_set_hl(0, "typescriptBinaryOp", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptAssign", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptObjectLabel", { fg = "#10aef8", bg = "NONE", ctermfg = 39, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "typescriptDotNotation", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptOperator", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptTernaryOp", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptTypeAnnotation", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptIdentifierName", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "typescriptArrowFuncArg", { fg = "#FD9720", bg = "NONE", ctermfg = 208, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "typescriptParamImpl", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "typescriptRepeat", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "typescriptStatementKeyword", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "typescriptAliasKeyword", { link = "Keyword" })
    vim.api.nvim_set_hl(
      0,
      "typescriptInterfaceKeyword",
      { fg = "#9ece6a", bg = "NONE", ctermfg = 149, ctermbg = "NONE" }
    )
    vim.api.nvim_set_hl(0, "typescriptTemplateSB", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptMemberOptionality", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "typescriptOptionalMark", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "typescriptUnaryOp", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "typescriptBranch", { link = "Statement" })
    vim.api.nvim_set_hl(0, "pugJavascriptOutputChar", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "fzf1", { fg = "#ecc48d", bg = bg2, ctermfg = 222, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "fzf2", { fg = "#FD9720", bg = bg2, ctermfg = 208, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "fzf3", { fg = "#DC143C", bg = bg2, ctermfg = 161, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "NERDTreeHelp", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "NERDTreeHelpKey", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "NERDTreeHelpCommand", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "NERDTreeHelpTitle", { link = "cssProp" })
    vim.api.nvim_set_hl(0, "NERDTreeUp", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "NERDTreeCWD", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "NERDTreeOpenable", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "NERDTreeClosable", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "javascriptOpSymbol", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "javascriptDocNotation", { fg = "#A6E22D", bg = "NONE", ctermfg = 148, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "javascriptDocNamedParamType", { link = "Question" })
    vim.api.nvim_set_hl(0, "javascriptDocParamName", { fg = "#fbed7d", bg = "NONE", ctermfg = 228, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "javascriptDocParamType", { link = "Question" })
    vim.api.nvim_set_hl(0, "javascriptTemplateSB", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "javascriptRepeat", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "javascriptObjectLabelColon", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "javascriptObjectMethodName", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "javascriptFuncName", { link = "cssClassName" })
    vim.api.nvim_set_hl(
      0,
      "diffRemoved",
      { fg = "#f05874", bg = "NONE", ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "diffChanged",
      { fg = "#4cc7e4", bg = "NONE", ctermfg = 80, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "diffAdded",
      { fg = "#9dd067", bg = "NONE", ctermfg = 149, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "diffLine",
      { fg = "#fbed7d", bg = "NONE", ctermfg = 228, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(
      0,
      "diffSubname",
      { fg = "#7fdbca", bg = "NONE", ctermfg = 116, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
    )
    vim.api.nvim_set_hl(0, "diffComment", { fg = "#5f7e97", bg = "NONE", ctermfg = 66, ctermbg = "NONE" })
    vim.api.nvim_set_hl(
      0,
      "BufferLineIndicatorSelected",
      { fg = "#282E39", bg = "#3649dc", ctermfg = 236, ctermbg = 62 }
    )
    vim.api.nvim_set_hl(0, "BufferLineBuffer", { link = "Comment" })
    vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { link = "Comment" })
    vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "#282E39", bg = "#343047", ctermfg = 236, ctermbg = 236 })
    vim.api.nvim_set_hl(0, "BuffetCurrentBuffer", { fg = "#443a54", bg = "#3649dc", ctermfg = 238, ctermbg = 62 })
    vim.api.nvim_set_hl(0, "BuffetActiveBuffer", { fg = "#282E39", bg = "#3649dc", ctermfg = 236, ctermbg = 62 })
    vim.api.nvim_set_hl(0, "BuffetBuffer", { bg = "#b4b0e0", ctermbg = 146 })
    vim.api.nvim_set_hl(0, "BuffetModCurrentBuffer", { fg = "#443a54", bg = "#3649dc", ctermfg = 238, ctermbg = 62 })
    vim.api.nvim_set_hl(0, "BuffetModActiveBuffer", { fg = "#343047", bg = "#3649dc", ctermfg = 236, ctermbg = 62 })
    vim.api.nvim_set_hl(0, "BuffetModBuffer", { fg = "#343047", bg = "#3649dc", ctermfg = 236, ctermbg = 62 })
    vim.api.nvim_set_hl(0, "BuffetTrunc", { bg = "#82aaf0", ctermbg = 111 })
    vim.api.nvim_set_hl(0, "BuffetTab", { bg = "#addb67", ctermbg = 149 })
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#888ca9", ctermfg = 103 })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { link = "CocHintSign" })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#50B4DC", ctermfg = 74 })
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#A1EFE4", ctermfg = 158 })
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#9e71cf", ctermfg = 134 })
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#dacfb4", ctermfg = 187 })
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#0fb9e0", ctermfg = 38 })
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#10aef8", ctermfg = 39 })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#0fb9e0", ctermfg = 38 })
    vim.api.nvim_set_hl(0, "elmDelimiter", { link = "cssAttr" })
    vim.api.nvim_set_hl(0, "elmOperator", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "helpHyperTextEntry", { link = "cssClassName" })
    vim.api.nvim_set_hl(0, "helpHeadline", { link = "SpellCap" })
    vim.api.nvim_set_hl(0, "helpSectionDelim", { fg = "#222222", bg = "NONE", ctermfg = 235, ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "helpNote", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "xmlNamespace", { link = "jsonNumber" })
    vim.api.nvim_set_hl(0, "xmlAttribPunct", { link = "cssImportant" })
    vim.api.nvim_set_hl(0, "xmlProcessingDelim", { link = "cssImportant" })
    link_ts()
  end,
}
