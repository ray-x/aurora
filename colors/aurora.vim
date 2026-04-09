""
" Colorscheme: " License: MIT""

if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name='aurora'

let g:aurora_italic = get(g:, 'aurora_italic', 0)
let g:aurora_bold = get(g:, 'aurora_bold', 0)

let bg =  '#211c2f'
let bg2 = '#282e39'
let bg3 = '#1a1926'
let bg4 = "#141425"
if exists('g:aurora_transparent')
  let bg = 'NONE'
  let bg2 = 'NONE'
  let bg3 = 'NONE'
  let bg4 = 'NONE'
else
  if exists('g:aurora_darker')
    let bg =  "#141020"
    let bg3 = '#101020'
    let bg4 = "#040410"
  end
end

function! AUHL(group, guifg, ctermfg, guibg, ctermbg, gui, cterm)
  execute 'hi ' . a:group . ' guifg=' . a:guifg .
        \ ' ctermfg=' . a:ctermfg .
        \ ' guibg=' . a:guibg .
        \ ' ctermbg=' . a:ctermbg .
        \ ' gui=' . a:gui .
        \ ' cterm=' . a:cterm
endfunction

if &background != 'dark'
  set background=dark
endif

if has('nvim')
  lua package.loaded['aurora'] = nil
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
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
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
  hi link jsExport cssTagName
  hi jsExportDefault guifg=#9eeb61 ctermfg=149 gui=NONE cterm=NONE
  hi link jsExportDefaultGroup SpellCap
  hi link jsFrom jsReturn
  call AUHL('ALEErrorSign', '#ff5874', 204, bg3, 234, 'NONE', 'NONE')
  call AUHL('ALEWarningSign', '#FD9720', 208, bg3, 234, 'NONE', 'NONE')
  call AUHL('ALEInfoSign', '#addb67', 149, bg3, 234, 'NONE', 'NONE')
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
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  hi sqlStatement guifg=#54CED6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi sqlKeyword guifg=#ffbe00 ctermfg=214 gui=Bold cterm=Bold
  hi sqlSpecial guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link sqlType Question
  hi sqlFunction guifg=#ec5f67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlKeyword guifg=#C33C4A ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link mysqlOperator Label
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
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi ClapMatches guifg=#C33C4A ctermfg=131 guibg=#443a54 ctermbg=238 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#f05874
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
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
  hi link jsNumber jsonNumber
  hi link jsObjectProp Label
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
  hi link javaScriptSpecial jsonNumber
  hi javaScriptFunction guifg=#50B4DC ctermfg=74 gui=NONE cterm=NONE
  hi link javaScriptStatement jsReturn
  hi javaScriptException guifg=#D93234 ctermfg=167 gui=NONE cterm=NONE
  hi vimCommentString guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link vimCommentTitle Question
  hi vimError guifg=#dacfb4 ctermfg=187 guibg=#f05874 ctermbg=204 gui=NONE cterm=NONE
  hi jsonEscape guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonNumber guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link jsonBraces cssAttr
  hi link jsonNull jsonNumber
  hi link jsonBoolean jsonNumber
  hi link jsonKeywordMatch cssImportant
  hi link jsonQuote cssAttr
  hi link jsonNoise cssImportant
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
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
  hi link goParamName jsonNumber
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
  hi link CocInfoSign jsonNumber
  hi CocLine gui=undercurl cterm=undercurl guisp=#FD9720
  hi CocUnderline gui=undercurl cterm=undercurl guisp=#FD9720
  hi CocErrorline gui=undercurl cterm=undercurl guisp=#DC143C
  hi link FugitiveblameHash cssProp
  hi link FugitiveblameUncommitted cssImportant
  hi link FugitiveblameTime cssClassName
  hi link FugitiveblameNotCommittedYet jsonNumber
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#343047 ctermbg=236 gui=Bold cterm=Bold
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi ColorColumn guifg=NONE ctermfg=NONE guibg=#22202a ctermbg=235 gui=NONE cterm=NONE
  hi Cursor guibg=#ddd0f4 ctermbg=189 gui=NONE cterm=NONE
  hi CursorIM guifg=#ddd0f4 ctermfg=189 guibg=#5f7e97 ctermbg=66 gui=NONE cterm=NONE
  hi CursorColumn guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  hi Directory guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#2f223e ctermbg=239 gui=Bold cterm=Bold
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#3f4060 ctermbg=239
  hi DiffText guifg=NONE ctermfg=NONE guibg=#420010 ctermbg=89 gui=Bold,Italic,underline cterm=Bold,Italic,underline
  hi ErrorMsg guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi VertSplit guifg=#777087 ctermfg=243 gui=NONE cterm=NONE
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg4 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg4 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg4 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#57109a ctermbg=54 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#ecc48d
  hi MatchParen guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#E7C547
  hi ModeMsg guifg=#77d507 ctermfg=112 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#aab7cf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#4f425e ctermfg=239 gui=NONE cterm=NONE
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi PMenuSel guifg=#e7d3fb ctermfg=189 guibg=#443a54 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuKind guifg=#1ABC9C ctermfg=189 guibg=#443a54 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuExtra guifg=#10aef8 ctermfg=189 guibg=#443a54 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#4f425e ctermbg=239 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#aab7cf ctermbg=146 gui=NONE cterm=NONE
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  hi Question guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=NONE ctermfg=NONE guibg=#3f4060 ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#EE82EE
  hi SpecialKey guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
  hi SpellBad guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#ac3f27
  hi SpellCap guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#addb67
  hi StatusLine guifg=#ddd0f4 ctermfg=189 guibg=#443a54 ctermbg=238 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#777087 ctermfg=243 guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  hi TabLineFill guifg=#333042 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi Title guifg=#82aaf0 ctermfg=111 gui=Bold cterm=Bold
  hi Visual guibg=#3f4060 ctermbg=239 gui=NONE cterm=NONE
  hi VisualNOS guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#ec5f67 ctermfg=203 gui=undercurl cterm=undercurl guisp=#821040
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg3 . ' ctermbg=234 gui=NONE cterm=NONE'
  hi Comment guifg=#989cbf ctermfg=247 gui=Italic cterm=Italic
  hi Constant guifg=#fbfcbf ctermfg=229 gui=NONE cterm=NONE
  hi String guifg=#1ABC9C ctermfg=35 gui=NONE cterm=NONE
  hi Character guifg=#be9af7 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Boolean guifg=#FF435B ctermfg=203 gui=Italic cterm=Italic
  hi Number guifg=#FD9720 ctermfg=208 gui=NONE cterm=NONE
  hi Float guifg=#F92772 ctermfg=197 gui=NONE cterm=NONE
  hi Identifier guifg=#e7d3fb ctermfg=189 gui=NONE cterm=NONE
  hi Function guifg=#10aef8 ctermfg=39 gui=Bold cterm=Bold
  hi Statement guifg=#F92772 ctermfg=197 gui=Bold cterm=Bold
  hi Conditional guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#ff7273 ctermfg=203 gui=Italic cterm=Italic
  hi Label guifg=#1aad16 ctermfg=34 gui=Italic cterm=Italic
  hi Operator guifg=#A1EFE4 ctermfg=158 gui=Bold cterm=Bold
  hi Keyword guifg=#c4a2ff ctermfg=183 gui=Bold,Italic cterm=Bold,Italic
  hi Exception guifg=#e55285 ctermfg=168 gui=NONE cterm=NONE
  hi PreProc guifg=#EE82EE ctermfg=213 gui=NONE cterm=NONE

  hi Include guifg=#D57CD5 ctermfg=176 gui=NONE cterm=NONE
  hi Define guifg=#ff5874 ctermfg=204 gui=Bold cterm=Bold
  hi Macro guifg=#C33C4A ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#d7ffaf ctermfg=193 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#67d5b5 ctermfg=79 gui=Bold cterm=Bold
  hi StorageClass guifg=#01d5f1 ctermfg=45 gui=NONE cterm=NONE
  hi Structure guifg=#A1EFE4 ctermfg=158 gui=Bold cterm=Bold
  hi Typedef guifg=#66d9ef ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#FF6347 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

  hi Tag guifg=#addb67 ctermfg=149 gui=NONE cterm=NONE
  hi htmlTag guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link htmlEndTag htmlTag

  hi Delimiter guifg=#A1EFE4 ctermfg=158 gui=NONE cterm=NONE
  hi SpecialComment guifg=#637077 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#6189bb ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#67d5b5 ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#4f425e ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Error guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#e7dc8c
  hi Todo guifg=#e73c50 ctermfg=167 guibg=#6D3B66 ctermbg=242 gui=Bold,underline cterm=Bold,underline
  hi typescriptParens guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLogicSymbols cssImportant
  hi typescriptReserved guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLabel String
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
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
  execute 'hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=' . bg2 . ' ctermbg=234 gui=NONE cterm=NONE'
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
