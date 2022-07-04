""
" Colorscheme: " License: MIT""

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let g:colors_name="aurora"


let Italic = ""
if exists('g:aurora_italic')
  let Italic = "italic"
endif
let g:aurora_italic = get(g:, 'aurora_italic', 0)

let Bold = ""
if exists('g:aurora_bold')
  let Bold = "bold"
endif

let g:aurora_bold = get(g:, 'aurora_bold', 0)
if has('nvim-0.6')
  lua package.loaded['aurora'] = nil
  " packadd aurora
  lua require('aurora').colorscheme()
else
  hi link SignifySignAdd GitGutterAdd
  hi link SignifySignDelete GitGutterDelete
  hi link SignifySignDeleteFirstLine SignifySignDelete
  hi link SignifySignChange GitGutterChange
  hi link SignifySignChangeDelete GitGutterChangeDelete
  hi link javaScriptOpSymbols cssImportant
  hi link javaScriptParens cssProp
  hi javaScriptDocTags guifg=#A6E22D ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javaScriptDocSeeTag Question
  hi link javaScriptBrowserObjects SpellCap
  hi link javaScriptDOMObjects SpellCap
  hi link javaScriptFuncArg jsonNumber
  hi link gitcommitBranch SpellCap
  hi gitcommitDiscardedType guifg=#ec5f67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedType cssTagName
  hi link gitcommitHeader cssProp
  hi link gitcommitUntrackedFile jsonNumber
  hi gitcommitDiscardedFile guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedFile cssClassName
  hi GitSignsAddInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,underline cterm=Bold,underline guisp=#addb67
  hi GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#E7C547
  hi GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#B376B3
  hi GitGutterAdd guifg=#9dd067 ctermfg=149 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChange guifg=#4cc7e4 ctermfg=80 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChangeDelete guifg=#7d2c9d ctermfg=91 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi link jsParensIfElse cssProp
  hi link jsObjectKey cssProp
  hi link jsRepeat cssClassName
  hi jsArrowFunction guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
  hi link jsFunctionKey cssClassName
  hi link jsObjectFuncName cssClassName
  hi link jsNull jsonNumber
  hi link jsObjectColon cssImportant
  hi link jsParens cssProp
  hi link jsFuncParens cssProp
  hi link jsFuncArgs jsonNumber
  hi jsSpecial guifg=#F92772 ctermfg=197 gui=NONE cterm=NONE
  hi link jsTemplateBraces cssImportant
  hi link jsGlobalObjects SpellCap
  hi jsGlobalNodeObjects guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi jsImport guifg=#7202da ctermfg=56 gui=Italic cterm=Italic
  hi link jsExport TSAttribute
  hi jsExportDefault guifg=#9eeb61 ctermfg=149 gui=NONE cterm=NONE
  hi link jsExportDefaultGroup SpellCap
  hi link jsFrom jsReturn
  hi ALEErrorSign guifg=#ff5874 ctermfg=204 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi ALEWarningSign guifg=#FD9720 ctermfg=208 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi ALEInfoSign guifg=#addb67 ctermfg=149 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi link plug2 cssClassName
  hi plugH2 guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link plugBracket cssProp
  hi link plugNumber jsonNumber
  hi link plugDash jsonNumber
  hi plugStar guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link plugMessage jsonNumber
  hi link plugName cssProp
  hi link plugUpdate cssImportant
  hi link plugEdge cssClassName
  hi plugSha guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi plugNotLoaded guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#989cbf ctermfg=247 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#4cc7e4 ctermfg=80 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeResultsBorder guifg=#5ca7e4 ctermfg=74 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePreviewBorder guifg=#9e71cf ctermfg=134 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelectionCaret guifg=#66d9ef ctermfg=81 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#A1EFE4 ctermfg=158 guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
  hi TelescopeMatching guifg=#EE82EE ctermfg=213 gui=NONE cterm=NONE
  hi sqlStatement guifg=#54CED6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi sqlKeyword guifg=#ffbe00 ctermfg=214 gui=Bold cterm=Bold
  hi sqlSpecial guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link sqlType Question
  hi sqlFunction guifg=#ec5f67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlKeyword guifg=#C33C4A ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link mysqlOperator DiagnosticHint
  hi mysqlFunction guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlStatement guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlType guifg=#0fb9e0 ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link Quote Label
  hi link cPreCondit cssProp
  hi link cDefine typescriptReserved
  hi link cStructure Question
  hi cStorageClass guifg=#50B4DC ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomClass guifg=#b4b0e0 ctermfg=146 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomMemVar guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustom guifg=#addb67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cType typescriptReserved
  hi cCustomParen guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cConditional Repeat
  hi link cCustomFunc Function
  hi cStatement guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cppSTLnamespace Question
  hi cppAccess guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cAnsiFunction guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cRepeat Repeat
  hi cSpecial guifg=#333042 ctermfg=236 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi yamlFlowString guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link yamlFlowStringDelimiter cssAttr
  hi yamlKeyValueDelimiter guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownH1 cssProp
  hi markdownHeadingRule guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi markdownHeadingDelimiter guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link markdownListMarker jsonNumber
  hi link markdownBlockquote jsonNumber
  hi link markdownRule cssClassName
  hi link markdownLinkText cssClassName
  hi link markdownLinkTextDelimiter cssProp
  hi link markdownLinkDelimiter cssProp
  hi link markdownIdDeclaration cssTagName
  hi link markdownAutomaticLink SpellCap
  hi link markdownUrl SpellCap
  hi markdownUrlTitle guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownUrlDelimiter jsonNumber
  hi markdownUrlTitleDelimiter guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownCodeDelimiter SpellCap
  hi markdownCode guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownEscape SpellCap
  hi link markdownError cssImportant
  hi ClapPreview guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi ClapMatches guifg=#C33C4A ctermfg=131 guibg=#443a54 ctermbg=238 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#f05874
  hi ClapDisplay guifg=#aab7cf ctermfg=146 guibg=#211c2f ctermbg=234 gui=Bold,undercurl cterm=Bold,undercurl guisp=#f05874
  hi TSAnnotation guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
  hi TSAttribute guifg=#7fdbca ctermfg=116 gui=NONE cterm=NONE
  hi TSCharacter guifg=#ffce51 ctermfg=221 gui=NONE cterm=NONE
  hi TSComment guifg=#aab7cf ctermfg=146 gui=NONE cterm=NONE
  hi TSError guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl
  hi TSPunctDelimiter guifg=#e7d3fb ctermfg=189 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi TSPunctBracket guifg=#7AA6DA ctermfg=110 gui=Bold cterm=Bold
  hi TSPunctSpectial guifg=#E7C547 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TSConstant guifg=#fbfcbf ctermfg=229 gui=Bold cterm=Bold
  hi TSConstBuiltin guifg=#e73c50 ctermfg=167 gui=Italic cterm=Italic
  hi TSConstMacro guifg=#F92772 ctermfg=197 gui=NONE cterm=NONE
  hi TSString guifg=#1ABC9C ctermfg=37 gui=NONE cterm=NONE
  hi TSStringRegex guifg=#7fdbca ctermfg=116 gui=NONE cterm=NONE
  hi TSStringEscape guifg=#A1EFE4 ctermfg=158 gui=NONE cterm=NONE
  hi TSNumber guifg=#FD9720 ctermfg=208 gui=NONE cterm=NONE
  hi TSBoolean guifg=#FF435B ctermfg=203 gui=Italic cterm=Italic
  hi TSFloat guifg=#F92772 ctermfg=197 gui=NONE cterm=NONE
  hi TSField guifg=#9e71cf ctermfg=134 gui=Bold cterm=Bold
  hi TSType guifg=#67d5b5 ctermfg=79 gui=Bold cterm=Bold
  hi TSTypeBuiltin guifg=#ffce51 ctermfg=221 gui=Bold cterm=Bold
  hi TSProperty guifg=#01d5f1 ctermfg=45 gui=NONE cterm=NONE
  hi TSParameter guifg=#fbec9f ctermfg=229 gui=NONE cterm=NONE
  hi TSConstructor guifg=#6690c4 ctermfg=68 gui=Bold cterm=Bold
  hi TSFunction guifg=#66d9ef ctermfg=81 gui=Bold cterm=Bold
  hi TSKeywordFunction guifg=#0fb9e0 ctermfg=38 gui=Bold cterm=Bold
  hi TSFunctionBuiltin guifg=#A6E22D ctermfg=148 gui=Bold cterm=Bold
  hi TSFuncBuiltin guifg=#0fb9e0 ctermfg=38 gui=Bold cterm=Bold
  hi TSFuncMacro guifg=#be9af7 ctermfg=141 gui=Bold cterm=Bold
  hi TSParameterReference guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSMethod Function
  hi TSConditional guifg=#EE82EE ctermfg=213 gui=Bold cterm=Bold
  hi TSRepeat guifg=#ff7273 ctermfg=203 gui=Italic cterm=Italic
  hi TSException guifg=#ff5874 ctermfg=204 gui=Italic cterm=Italic
  hi TSLabel guifg=#1aad16 ctermfg=34 gui=Italic cterm=Italic
  hi TSOperator guifg=#A1EFE4 ctermfg=158 gui=Bold cterm=Bold
  hi TSKeyword guifg=#c4a2ff ctermfg=183 gui=Bold,Italic cterm=Bold,Italic
  hi TSStructure guifg=#A1EFE4 ctermfg=158 gui=Bold cterm=Bold
  hi TSInclude guifg=#D57CD5 ctermfg=176 gui=NONE cterm=NONE
  hi TSTag guifg=#addb67 ctermfg=149 gui=NONE cterm=NONE
  hi TSTagDelimiter guifg=#A1EFE4 ctermfg=158 gui=NONE cterm=NONE
  hi TSVariable guifg=#e7d3fb ctermfg=189 gui=NONE cterm=NONE
  hi TSVariableBuiltin guifg=#FD9720 ctermfg=208 gui=NONE cterm=NONE
  hi TSDefinitionUsage guifg=#E6DB74 ctermfg=186 gui=NONE cterm=NONE
  hi TSDefinition guifg=#ff5874 ctermfg=204 gui=Bold cterm=Bold
  hi TSStrong guifg=#DBC08A ctermfg=180 gui=Bold cterm=Bold
  hi TSEmphasis guifg=#fbed7d ctermfg=228 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi TSUnderline guifg=#ecc48d ctermfg=222 gui=undercurl cterm=undercurl
  hi link TSTitle SpecialKey
  hi TSLiteral guifg=#dacfb4 ctermfg=187 gui=NONE cterm=NONE
  hi TSURI guifg=#A6E22D ctermfg=148 gui=Italic cterm=Italic
  hi TSCurrentScope guibg=#211c2f ctermbg=234 gui=Bold cterm=Bold
  hi TSIdentifier guifg=#dacfb4 ctermfg=187 gui=Bold cterm=Bold
  hi link TSNameSpace Function
  hi link pythonStatement Repeat
  hi link pythonRepeat Repeat
  hi pythonFunction guifg=#54CED6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonExClass guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link pythonBuiltinObj Repeat
  hi pythonDot guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinFunc guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsStorageClass guifg=#4cc7e4 ctermfg=80 gui=NONE cterm=NONE
  hi jsOperator guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
  hi jsString guifg=#1aad16 ctermfg=34 gui=Italic cterm=Italic
  hi jsComment guifg=#637077 ctermfg=243 gui=Italic cterm=Italic
  hi jsFuncCall guifg=#54CED6 ctermfg=80 gui=NONE cterm=NONE
  hi link jsNumber TSParameter
  hi link jsObjectProp DiagnosticHint
  hi jsOperatorKeyword guifg=#1aad16 ctermfg=34 gui=NONE cterm=NONE
  hi jsBooleanFalse guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
  hi jsBooleanTrue guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
  hi link jsRegexpString CocHintSign
  hi link jsConditional jsReturn
  hi jsFunction guifg=#10aef8 ctermfg=39 gui=NONE cterm=NONE
  hi jsFunctionCall guifg=#9eeb61 ctermfg=149 gui=NONE cterm=NONE
  hi jsFuncBlock guifg=#10aef8 ctermfg=39 gui=NONE cterm=NONE
  hi jsReturn guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
  hi jsFuncName guifg=#2782d4 ctermfg=32 gui=NONE cterm=NONE
  hi link jsParensError jsFuncParens
  hi link jsClassDefinition SpecialKey
  hi jsModuleAs guifg=#ae81ef ctermfg=141 gui=Italic cterm=Italic
  hi jsExtendsKeyword guifg=#B376B3 ctermfg=139 gui=Italic cterm=Italic
  hi javaScriptReserved guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
  hi link javaScriptConditional jsReturn
  hi link javaScriptStringS SpecialKey
  hi javaScriptBoolean guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
  hi javaScriptBraces guifg=#e7d3fb ctermfg=189 gui=NONE cterm=NONE
  hi javaScriptLineComment guifg=#637077 ctermfg=243 gui=Italic cterm=Italic
  hi link javaScriptSpecial TSParameter
  hi javaScriptFunction guifg=#50B4DC ctermfg=74 gui=NONE cterm=NONE
  hi link javaScriptStatement jsReturn
  hi javaScriptException guifg=#D93234 ctermfg=167 gui=NONE cterm=NONE
  hi vimCommentString guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link vimCommentTitle Question
  hi vimError guifg=#dacfb4 ctermfg=187 guibg=#f05874 ctermbg=204 gui=NONE cterm=NONE
  hi LightspeedLabel guifg=#e7d3fb ctermfg=189 guibg=#57109a ctermbg=54 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#ecc48d
  hi LightspeedOverlapped guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedLabelDistant guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedLabelDistantOverlapped guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedShortcut guifg=#EE82EE ctermfg=213 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedShortcutOverlapped guifg=#EE82EE ctermfg=213 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedMaskedChar guifg=#ff5874 ctermfg=204 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedGreyWash guifg=#989cbf ctermfg=247 gui=Italic cterm=Italic
  hi LightspeedUnlabeledMatch guifg=#F92772 ctermfg=197 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedOneCharMatch guifg=#f19bb6 ctermfg=211 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedUniqueChar guifg=#d7ffaf ctermfg=193 gui=Bold cterm=Bold
  hi LightspeedPendingOpArea guifg=#66d9ef ctermfg=81 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedPendingChangeOpArea guifg=#d7ffaf ctermfg=193 gui=Bold cterm=Bold
  hi LightspeedCursor guifg=#ffbbd6 ctermfg=218 guibg=#22202a ctermbg=235 gui=NONE cterm=NONE
  hi HopNextKey guifg=#EE82EE ctermfg=213 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey1 guifg=#ecc48d ctermfg=222 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey2 guifg=#82aaf0 ctermfg=111 gui=Bold,underline cterm=Bold,underline
  hi IndentBlanklineChar guifg=#777087 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineContextChar guifg=#c4a2ff ctermfg=183 gui=Bold cterm=Bold
  hi IndentBlanklineIndent1 guifg=#be9af7 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent2 guifg=#82aaf0 ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent3 guifg=#addb67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent4 guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent5 guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent6 guifg=#ff5874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonEscape guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonNumber guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link jsonBraces cssAttr
  hi link jsonNull jsonNumber
  hi link jsonBoolean jsonNumber
  hi link jsonKeywordMatch cssImportant
  hi link jsonQuote cssAttr
  hi link jsonNoise cssImportant
  hi DiagnosticError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignError guifg=#D93234 ctermfg=167 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi link DiagnosticErrorFloating DiagnosticError
  hi DiagnosticWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignWarn guifg=#e7dc8c ctermfg=186 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticWarningFloating guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#D93234 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarning guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#1aad16 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link DiagnosticUnderlineError DiagnosticError
  hi link DiagnosticFloatingError DiagnosticError
  hi link DiagnosticFloatingWarning DiagnosticWarning
  hi link DiagnosticFloatingInfo DiagnosticInfo
  hi link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticSignInfo guifg=#7AA6DA ctermfg=110 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignHint guifg=#ffce51 ctermfg=221 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticHintFloating guifg=#1ABC9C ctermfg=37 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi LspReferenceText guibg=#4f4764 ctermbg=239 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
  hi LspReferenceRead guifg=#1aad16 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
  hi LspReferenceWrite guifg=#1aad16 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
  hi LspFloatWinNormal guifg=#dacfb4 ctermfg=187 guibg=#30234f ctermbg=236 gui=NONE cterm=NONE
  hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=#4d0c5d ctermbg=53 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#fbec9f
  hi link cssVendor cssTagName
  hi cssTagName guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssAttrComma cssAttr
  hi link cssBackgroundProp cssProp
  hi link cssBorderProp cssProp
  hi link cssBoxProp SpellCap
  hi link cssDimensionProp SpellCap
  hi link cssFontProp cssProp
  hi link cssPositioningProp SpellCap
  hi link cssTextProp cssProp
  hi link cssValueLength cssAttr
  hi link cssValueInteger cssAttr
  hi link cssValueNumber cssAttr
  hi link cssIdentifier cssTagName
  hi link cssIncludeKeyword jsonNumber
  hi cssImportant guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssClassName guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssClassNameDot cssAttr
  hi cssProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssAttr guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssUnitDecorators cssAttr
  hi link cssNoise cssImportant
  hi goBuiltins guifg=#01d5f1 ctermfg=45 guibg=NONE ctermbg=NONE gui=Bold,Italic cterm=Bold,Italic
  hi goConditional guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclType guifg=#9e71cf ctermfg=134 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi goDirective guifg=#CD5C5C ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goFloats Character
  hi goFunction guifg=#88dfe9 ctermfg=116 gui=Bold cterm=Bold
  hi goFunctionCall guifg=#0fb9e0 ctermfg=38 gui=Bold cterm=Bold
  hi goFunctionReturn guifg=#ae81ef ctermfg=141 gui=NONE cterm=NONE
  hi goImport guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goLabel guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goMethod Function
  hi goMethodCall guifg=#66d9ef ctermfg=81 gui=Bold cterm=Bold
  hi goPackage guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goRepeat guifg=#ffce51 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goSignedInts guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goStruct guifg=#ff7f50 ctermfg=209 gui=Bold cterm=Bold
  hi goStructDef guifg=#87ceeb ctermfg=116 gui=Bold cterm=Bold
  hi link goUnsignedInts Character
  hi link goParamName TSParameter
  hi goParamType guifg=#E7C547 ctermfg=185 gui=NONE cterm=NONE
  hi goParen guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclaration guifg=#D57CD5 ctermfg=176 gui=Bold cterm=Bold
  hi goSameId guifg=NONE ctermfg=NONE guibg=#343047 ctermbg=236 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi goPredefinedIdentifiers guifg=#CD5C5C ctermfg=167 gui=Italic cterm=Italic
  hi goVar guifg=#ff7273 ctermfg=203 gui=Bold cterm=Bold
  hi goType guifg=#ffce51 ctermfg=221 gui=Bold cterm=Bold
  hi goTypeDecl guifg=#E6DB74 ctermfg=186 gui=Bold cterm=Bold
  hi goTypeName guifg=#FF5D71 ctermfg=203 gui=Bold cterm=Bold
  hi link stylusVariable cssAttr
  hi link stylusClass cssClassName
  hi link stylusClassChar cssProp
  hi link stylusId cssClassName
  hi link stylusIdChar cssProp
  hi link cssVisualVal cssAttr
  hi link stylusImport jsonNumber
  hi CocErrorSign guifg=#f05874 ctermfg=204 gui=NONE cterm=NONE
  hi CocWarningSign guifg=#fbfcbf ctermfg=229 gui=NONE cterm=NONE
  hi CocHintSign guifg=#5ca7e4 ctermfg=74 gui=NONE cterm=NONE
  hi link CocInfoSign TSParameter
  hi CocLine gui=undercurl cterm=undercurl guisp=#FD9720
  hi CocUnderline gui=undercurl cterm=undercurl guisp=#FD9720
  hi CocErrorline gui=undercurl cterm=undercurl guisp=#DC143C
  hi link FugitiveblameHash cssProp
  hi link FugitiveblameUncommitted cssImportant
  hi link FugitiveblameTime cssClassName
  hi link FugitiveblameNotCommittedYet jsonNumber
  hi Normal guifg=#ddd0f4 ctermfg=189 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi NormalFloat guifg=#dacfb4 ctermfg=187 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi NormalNC guifg=#a9b1d6 ctermfg=146 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi FloatBorder guifg=#787c99 ctermfg=8 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi LineNr guifg=#4f425e ctermfg=239 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#343047 ctermbg=236 gui=Bold cterm=Bold
  hi CursorLineNr guifg=#1aad16 ctermfg=34 guibg=#1a1926 ctermbg=234 gui=Bold cterm=Bold
  hi ColorColumn guifg=NONE ctermfg=NONE guibg=#22202a ctermbg=235 gui=NONE cterm=NONE
  hi Cursor guibg=#ddd0f4 ctermbg=189 gui=NONE cterm=NONE
  hi CursorIM guifg=#ddd0f4 ctermfg=189 guibg=#5f7e97 ctermbg=66 gui=NONE cterm=NONE
  hi CursorColumn guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  hi Directory guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#4f425e ctermbg=239 gui=Bold cterm=Bold
  hi DiffChange guifg=NONE ctermfg=NONE guibg=#282E39 ctermbg=236 gui=Bold cterm=Bold
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#4f5070 ctermbg=239 gui=Bold cterm=Bold
  hi DiffText guifg=NONE ctermfg=NONE guibg=#821040 ctermbg=89 gui=Bold,Italic,underline cterm=Bold,Italic,underline
  hi ErrorMsg guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi VertSplit guifg=#777087 ctermfg=243 gui=NONE cterm=NONE
  hi Folded guifg=#777087 ctermfg=243 guibg=#141425 ctermbg=233 gui=NONE cterm=NONE
  hi FoldColumn guifg=#333042 ctermfg=236 guibg=#141425 ctermbg=233 gui=NONE cterm=NONE
  hi SignColumn guifg=NONE ctermfg=NONE guibg=#141425 ctermbg=233 gui=NONE cterm=NONE
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#57109a ctermbg=54 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#ecc48d
  hi MatchParen guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#E7C547
  hi ModeMsg guifg=#77d507 ctermfg=112 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#aab7cf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#4f425e ctermfg=239 gui=NONE cterm=NONE
  hi PMenu guifg=#888ca9 ctermfg=103 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi PMenuSel guifg=#e7d3fb ctermfg=189 guibg=#443a54 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#4f425e ctermbg=239 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#aab7cf ctermbg=146 gui=NONE cterm=NONE
  hi MsgArea guifg=#ffbbd6 ctermfg=218 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi Question guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=NONE ctermfg=NONE guibg=#4f5070 ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#B376B3
  hi SpecialKey guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
  hi SpellBad guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#ac3f27
  hi SpellCap guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#addb67
  hi StatusLine guifg=#ddd0f4 ctermfg=189 guibg=#443a54 ctermbg=238 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#777087 ctermfg=243 guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  hi TabLine guifg=#7BA1D0 ctermfg=110 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi TabLineFill guifg=#333042 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi Title guifg=#82aaf0 ctermfg=111 gui=Bold cterm=Bold
  hi Visual guibg=#4f4764 ctermbg=239 gui=NONE cterm=NONE
  hi VisualNOS guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl guisp=#821040
  hi WildMenu guifg=#777087 ctermfg=243 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#4f425e ctermfg=239 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
  hi Comment guifg=#989cbf ctermfg=247 gui=Italic cterm=Italic
  hi Constant guifg=#1aad16 ctermfg=34 gui=NONE cterm=NONE
  hi String guifg=#2ba245 ctermfg=35 gui=NONE cterm=NONE
  hi Character guifg=#be9af7 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Boolean guifg=#EE82EE ctermfg=213 gui=Italic cterm=Italic
  hi Number guifg=#ff7f50 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Float guifg=#ec5f67 ctermfg=203 gui=Bold cterm=Bold
  hi Identifier guifg=#A6E22D ctermfg=148 gui=NONE cterm=NONE
  hi Function guifg=#10aef8 ctermfg=39 gui=Bold cterm=Bold
  hi Statement guifg=#F92772 ctermfg=197 gui=Bold cterm=Bold
  hi Conditional guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#FF435B ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Label guifg=#5f875f ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Keyword guifg=#CD5C5C ctermfg=167 gui=Bold cterm=Bold
  hi Exception guifg=#e55285 ctermfg=168 gui=NONE cterm=NONE
  hi PreProc guifg=#EE82EE ctermfg=213 gui=NONE cterm=NONE
  hi Include guifg=#ae81ef ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Define guifg=#88dfe9 ctermfg=116 gui=Italic cterm=Italic
  hi Macro guifg=#C33C4A ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#d7ffaf ctermfg=193 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#67d5b5 ctermfg=79 gui=Bold cterm=Bold
  hi StorageClass guifg=#01d5f1 ctermfg=45 gui=NONE cterm=NONE
  hi Structure guifg=#0fb9e0 ctermfg=38 gui=Bold,Italic cterm=Bold,Italic
  hi Typedef guifg=#66d9ef ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#FF6347 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Tag guifg=#FF5D71 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi htmlTag guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link htmlEndTag htmlTag
  hi Delimiter guifg=#a8dff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#6189bb ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#67d5b5 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#4f425e ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Error guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#e7dc8c
  hi Todo guifg=#e73c50 ctermfg=167 guibg=#6D3B66 ctermbg=242 gui=Bold,underline cterm=Bold,underline
  hi typescriptParens guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLogicSymbols cssImportant
  hi typescriptReserved guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLabel DiagnosticHintFloating
  hi typescriptFuncName guifg=#1aad16 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptCall jsonNumber
  hi link typescriptVariable typescriptReserved
  hi link typescriptBinaryOp cssImportant
  hi link typescriptAssign cssImportant
  hi typescriptObjectLabel guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptDotNotation cssImportant
  hi link typescriptOperator cssImportant
  hi link typescriptTernaryOp cssImportant
  hi link typescriptTypeAnnotation cssImportant
  hi link typescriptIdentifierName cssAttr
  hi typescriptArrowFuncArg guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptParamImpl jsonNumber
  hi link typescriptRepeat cssClassName
  hi link typescriptStatementKeyword SpellCap
  hi link typescriptAliasKeyword cssClassName
  hi typescriptInterfaceKeyword guifg=#9ece6a ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptTemplateSB cssImportant
  hi link typescriptMemberOptionality jsonNumber
  hi link typescriptOptionalMark jsonNumber
  hi link typescriptUnaryOp cssImportant
  hi link typescriptBranch Statement
  hi link pugJavascriptOutputChar jsonNumber
  hi fzf1 guifg=#ecc48d ctermfg=222 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi fzf2 guifg=#FD9720 ctermfg=208 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi fzf3 guifg=#DC143C ctermfg=161 guibg=#282E39 ctermbg=236 gui=NONE cterm=NONE
  hi link NERDTreeHelp cssAttr
  hi link NERDTreeHelpKey cssClassName
  hi link NERDTreeHelpCommand jsonNumber
  hi link NERDTreeHelpTitle cssProp
  hi link NERDTreeUp cssClassName
  hi link NERDTreeCWD SpellCap
  hi link NERDTreeOpenable cssImportant
  hi link NERDTreeClosable jsonNumber
  hi link javascriptOpSymbol cssImportant
  hi javascriptDocNotation guifg=#A6E22D ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocNamedParamType Question
  hi javascriptDocParamName guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocParamType Question
  hi link javascriptTemplateSB cssImportant
  hi link javascriptRepeat cssClassName
  hi link javascriptObjectLabelColon cssImportant
  hi link javascriptObjectMethodName cssClassName
  hi link javascriptFuncName cssClassName
  hi diffRemoved guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffChanged guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffAdded guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffLine guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffSubname guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffComment guifg=#5f7e97 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#282E39 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#addb67 ctermfg=149 guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  hi BufferLineFill guifg=#282E39 ctermfg=236 guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  hi BuffetCurrentBuffer guifg=#443a54 ctermfg=238 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BuffetActiveBuffer guifg=#282E39 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BuffetBuffer guibg=#b4b0e0 ctermbg=146 gui=NONE cterm=NONE
  hi BuffetModCurrentBuffer guifg=#443a54 ctermfg=238 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BuffetModActiveBuffer guifg=#343047 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BuffetModBuffer guifg=#343047 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
  hi BuffetTrunc guibg=#82aaf0 ctermbg=111 gui=NONE cterm=NONE
  hi BuffetTab guibg=#addb67 ctermbg=149 gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#888ca9 ctermfg=103 gui=NONE cterm=NONE
  hi link CmpItemAbbrMatch CocHintSign
  hi CmpItemAbbrMatchFuzzy guifg=#50B4DC ctermfg=74 gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#A1EFE4 ctermfg=158 gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#9e71cf ctermfg=134 gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#dacfb4 ctermfg=187 gui=NONE cterm=NONE
  hi CmpItemKindFunction guifg=#0fb9e0 ctermfg=38 gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#10aef8 ctermfg=39 gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#0fb9e0 ctermfg=38 gui=NONE cterm=NONE
  hi link elmDelimiter cssAttr
  hi link elmOperator cssImportant
  hi link helpHyperTextEntry cssClassName
  hi link helpHeadline SpellCap
  hi helpSectionDelim guifg=#222222 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link helpNote cssImportant
  hi link xmlNamespace jsonNumber
  hi link xmlAttribPunct cssImportant
  hi link xmlProcessingDelim cssImportant
endif
if has('terminal')
  let g:terminal_ansi_colors = [
  \ "#070510",
  \ "#ff5874",
  \ "#addb67",
  \ "#ecc48d",
  \ "#be9af7",
  \ "#FD9720",
  \ "#A1EFE4",
  \ "#645775",
  \ "#211c2f",
  \ "#ec5f67",
  \ "#d7ffaf",
  \ "#fbec9f",
  \ "#6690c4",
  \ "#ffbe00",
  \ "#54CED6",
  \ "#e7d3fb"
  \ ]
endif

if has('nvim')
  let g:terminal_color_foreground = "#637077"
  let g:terminal_color_background = "#211c2f"
  let g:terminal_color_0 = "#070510"
  let g:terminal_color_1 = "#ff5874"
  let g:terminal_color_2 = "#addb67"
  let g:terminal_color_3 = "#ecc48d"
  let g:terminal_color_4 = "#be9af7"
  let g:terminal_color_5 = "#FD9720"
  let g:terminal_color_6 = "#A1EFE4"
  let g:terminal_color_7 = "#645775"
  let g:terminal_color_8 = "#211c2f"
  let g:terminal_color_9 = "#ec5f67"
  let g:terminal_color_10 = "#d7ffaf"
  let g:terminal_color_11 = "#fbec9f"
  let g:terminal_color_12 = "#6690c4"
  let g:terminal_color_13 = "#ffbe00"
  let g:terminal_color_14 = "#54CED6"
  let g:terminal_color_15 = "#e7d3fb"
endif
