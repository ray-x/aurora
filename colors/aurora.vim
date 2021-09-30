" ===============================================================
" aurora
" 
" URL: 
" Author: 
" License: MIT
" Last Change: 2021/09/30 12:42
" ===============================================================

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
hi ALEErrorSign guifg=#ff5874 ctermfg=204 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi ALEWarningSign guifg=#FD9720 ctermfg=208 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi ALEInfoSign guifg=#addb67 ctermfg=149 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi Normal guifg=#ddd0f4 ctermfg=189 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
hi NormalFloat guifg=#dacfb4 ctermfg=187 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi NormalNC guifg=#a9b1d6 ctermfg=146 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi FloatBorder guifg=#787c99 ctermfg=8 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi LineNr guifg=#4f425e ctermfg=239 guibg=#211c2f ctermbg=234 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#343047 ctermbg=236 gui=Bold cterm=Bold
hi CursorLineNr guifg=#1aad16 ctermfg=34 guibg=#1a1926 ctermbg=234 gui=Bold cterm=Bold
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#22202a ctermbg=235 gui=NONE cterm=NONE
hi Cursor guibg=#ddd0f4 ctermbg=189 gui=NONE cterm=NONE
hi CursorIM guifg=#ddd0f4 ctermfg=189 guibg=#5f7e97 ctermbg=66 gui=NONE cterm=NONE
hi CursorColumn guibg=#343047 ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#4f425e ctermbg=239 gui=Bold cterm=Bold
hi DiffChange guifg=NONE ctermfg=NONE guibg=#282437 ctermbg=235 gui=Bold cterm=Bold
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
hi BuffetCurrentBuffer guifg=#443a54 ctermfg=238 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
hi BuffetActiveBuffer guifg=#282437 ctermfg=235 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
hi BuffetBuffer guibg=#b4b0e0 ctermbg=146 gui=NONE cterm=NONE
hi BuffetModCurrentBuffer guifg=#443a54 ctermfg=238 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
hi BuffetModActiveBuffer guifg=#343047 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
hi BuffetModBuffer guifg=#343047 ctermfg=236 guibg=#3649dc ctermbg=62 gui=NONE cterm=NONE
hi BuffetTrunc guibg=#82aaf0 ctermbg=111 gui=NONE cterm=NONE
hi BuffetTab guibg=#addb67 ctermbg=149 gui=NONE cterm=NONE
hi ClapPreview guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi ClapMatches guifg=#C33C4A ctermfg=131 guibg=#443a54 ctermbg=238 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#f05874
hi ClapDisplay guifg=#aab7cf ctermfg=146 guibg=#211c2f ctermbg=234 gui=Bold,undercurl cterm=Bold,undercurl guisp=#f05874
hi CocErrorSign guifg=#f05874 ctermfg=204 gui=NONE cterm=NONE
hi CocWarningSign guifg=#fbfcbf ctermfg=229 gui=NONE cterm=NONE
hi CocHintSign guifg=#5ca7e4 ctermfg=74 gui=NONE cterm=NONE
hi CocInfoSign guifg=#fbec9f ctermfg=229 gui=NONE cterm=NONE
hi CocLine gui=undercurl cterm=undercurl guisp=#FD9720
hi CocUnderline gui=undercurl cterm=undercurl guisp=#FD9720
hi CocErrorline gui=undercurl cterm=undercurl guisp=#DC143C
hi cPreCondit guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cDefine guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cStructure guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cStorageClass guifg=#50B4DC ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cCustomClass guifg=#b4b0e0 ctermfg=146 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cCustomMemVar guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cCustom guifg=#addb67 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cType guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cCustomParen guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cConditional guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cCustomFunc guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cStatement guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cppSTLnamespace guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cppAccess guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cAnsiFunction guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cRepeat guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cSpecial guifg=#333042 ctermfg=236 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cssVendor guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBackgroundProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBorderProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxProp guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssDimensionProp guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPositioningProp guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTextProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueLength guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueInteger guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueNumber guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi diffChanged guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi diffAdded guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi diffLine guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi diffSubname guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi diffComment guifg=#5f7e97 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmDelimiter guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmOperator guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameHash guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameUncommitted guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameTime guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameNotCommittedYet guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fzf1 guifg=#ecc48d ctermfg=222 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi fzf2 guifg=#FD9720 ctermfg=208 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi fzf3 guifg=#DC143C ctermfg=161 guibg=#282437 ctermbg=235 gui=NONE cterm=NONE
hi gitcommitBranch guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=#ec5f67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitHeader guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitUntrackedFile guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goBuiltins guifg=#01d5f1 ctermfg=45 guibg=NONE ctermbg=NONE gui=Bold,Italic cterm=Bold,Italic
hi goConditional guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goDeclType guifg=#9e71cf ctermfg=134 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi goDirective guifg=#CD5C5C ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goFloats guifg=#be9af7 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goFunction guifg=#88dfe9 ctermfg=116 gui=Bold cterm=Bold
hi goFunctionCall guifg=#0fb9e0 ctermfg=38 gui=Bold cterm=Bold
hi goFunctionReturn guifg=#ae81ef ctermfg=141 gui=NONE cterm=NONE
hi goImport guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goLabel guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goMethod guifg=#10aef8 ctermfg=39 gui=Bold cterm=Bold
hi goMethodCall guifg=#66d9ef ctermfg=81 gui=Bold cterm=Bold
hi goPackage guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goRepeat guifg=#ffce51 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goSignedInts guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goStruct guifg=#ff7f50 ctermfg=209 gui=Bold cterm=Bold
hi goStructDef guifg=#87ceeb ctermfg=116 gui=Bold cterm=Bold
hi goUnsignedInts guifg=#be9af7 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goParamName guifg=#fbec9f ctermfg=229 gui=NONE cterm=NONE
hi goParamType guifg=#E7C547 ctermfg=185 gui=NONE cterm=NONE
hi goParen guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goDeclaration guifg=#D57CD5 ctermfg=176 gui=Bold cterm=Bold
hi goSameId guifg=NONE ctermfg=NONE guibg=#343047 ctermbg=236 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
hi goPredefinedIdentifiers guifg=#CD5C5C ctermfg=167 gui=Italic cterm=Italic
hi goVar guifg=#ff7273 ctermfg=203 gui=Bold cterm=Bold
hi goType guifg=#ffce51 ctermfg=221 gui=Bold cterm=Bold
hi goTypeDecl guifg=#E6DB74 ctermfg=186 gui=Bold cterm=Bold
hi goTypeName guifg=#FF5D71 ctermfg=203 gui=Bold cterm=Bold
hi helpHyperTextEntry guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#222222 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpNote guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineChar guifg=#777087 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineContextChar guifg=#c4a2ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsStorageClass guifg=#4cc7e4 ctermfg=80 gui=NONE cterm=NONE
hi jsOperator guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
hi jsArrowFunction guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsString guifg=#1aad16 ctermfg=34 gui=Italic cterm=Italic
hi jsComment guifg=#637077 ctermfg=243 gui=Italic cterm=Italic
hi jsFuncCall guifg=#54CED6 ctermfg=80 gui=NONE cterm=NONE
hi jsNumber guifg=#fbec9f ctermfg=229 gui=NONE cterm=NONE
hi jsSpecial guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectProp guifg=#2ba245 ctermfg=35 gui=NONE cterm=NONE
hi jsOperatorKeyword guifg=#1aad16 ctermfg=34 gui=NONE cterm=NONE
hi jsBooleanFalse guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
hi jsBooleanTrue guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
hi jsRegexpString guifg=#5ca7e4 ctermfg=74 gui=NONE cterm=NONE
hi jsConditional guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
hi jsFunction guifg=#10aef8 ctermfg=39 gui=NONE cterm=NONE
hi jsFunctionCall guifg=#9eeb61 ctermfg=149 gui=NONE cterm=NONE
hi jsFuncBlock guifg=#10aef8 ctermfg=39 gui=NONE cterm=NONE
hi jsReturn guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
hi jsFuncName guifg=#2782d4 ctermfg=32 gui=NONE cterm=NONE
hi link jsParensError jsFuncParens
hi jsClassDefinition guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
hi jsImport guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsModuleAs guifg=#ae81ef ctermfg=141 gui=Italic cterm=Italic
hi jsExport guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExtendsKeyword guifg=#B376B3 ctermfg=139 gui=Italic cterm=Italic
hi javaScriptReserved guifg=#82aaf0 ctermfg=111 gui=NONE cterm=NONE
hi javaScriptConditional guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
hi javaScriptStringS guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
hi javaScriptBoolean guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
hi javaScriptBraces guifg=#e7d3fb ctermfg=189 gui=NONE cterm=NONE
hi javaScriptLineComment guifg=#637077 ctermfg=243 gui=Italic cterm=Italic
hi javaScriptSpecial guifg=#fbec9f ctermfg=229 gui=NONE cterm=NONE
hi javaScriptFunction guifg=#50B4DC ctermfg=74 gui=NONE cterm=NONE
hi javaScriptStatement guifg=#be9af7 ctermfg=141 gui=NONE cterm=NONE
hi javaScriptException guifg=#D93234 ctermfg=167 gui=NONE cterm=NONE
hi jsonEscape guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignError guifg=#D93234 ctermfg=167 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi DiagnosticErrorFloating guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#e7dc8c ctermfg=186 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi DiagnosticWarningFloating guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextError guifg=#D93234 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextWarning guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextInfo guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticVirtualTextHint guifg=#1aad16 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticUnderlineError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingInfo guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticFloatingHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#7AA6DA ctermfg=110 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi DiagnosticInfo guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guifg=#ffce51 ctermfg=221 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi DiagnosticHintFloating guifg=#1ABC9C ctermfg=37 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignError guifg=#D93234 ctermfg=167 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi LspDiagnosticsErrorFloating guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignWarn guifg=#e7dc8c ctermfg=186 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi LspDiagnosticsWarningFloating guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsInformation guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultInformation guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextError guifg=#D93234 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#DBC08A ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#99c794 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextHint guifg=#1aad16 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsUnderlineError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsFloatingError guifg=#ac3f27 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsFloatingWarning guifg=#bBa03A ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsFloatingInformation guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsFloatingHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignInfo guifg=#7AA6DA ctermfg=110 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi LspDiagnosticsInformationFloating guifg=#7AA6DA ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsHint guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignHint guifg=#ffce51 ctermfg=221 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi LspDiagnosticsHintFloating guifg=#1ABC9C ctermfg=37 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspReferenceText guibg=#4f4764 ctermbg=239 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
hi LspReferenceRead guifg=#1aad16 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
hi LspReferenceWrite guifg=#1aad16 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#FD9720
hi LspFloatWinNormal guifg=#dacfb4 ctermfg=187 guibg=#30234f ctermbg=236 gui=NONE cterm=NONE
hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=#4d0c5d ctermbg=53 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#fbec9f
hi markdownH1 guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingRule guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingDelimiter guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownListMarker guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkTextDelimiter guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#7fdbca ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownAutomaticLink guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownEscape guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownError guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelp guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpKey guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpCommand guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpTitle guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeUp guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pugJavascriptOutputChar guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonStatement guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonRepeat guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonFunction guifg=#54CED6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonExClass guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinObj guifg=#ecc48d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonDot guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinFunc guifg=#DDCFBF ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sqlStatement guifg=#54CED6 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sqlKeyword guifg=#ffbe00 ctermfg=214 gui=Bold cterm=Bold
hi sqlSpecial guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sqlType guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sqlFunction guifg=#ec5f67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mysqlKeyword guifg=#C33C4A ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mysqlOperator guifg=#2ba245 ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mysqlFunction guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mysqlStatement guifg=#A1EFE4 ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mysqlType guifg=#0fb9e0 ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Quote guifg=#5f875f ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
hi TSMethod guifg=#10aef8 ctermfg=39 gui=Bold cterm=Bold
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
hi TSTitle guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
hi TSLiteral guifg=#dacfb4 ctermfg=187 gui=NONE cterm=NONE
hi TSURI guifg=#A6E22D ctermfg=148 gui=Italic cterm=Italic
hi TSCurrentScope guibg=#282437 ctermbg=235 gui=Bold cterm=Bold
hi TSIdentifier guifg=#dacfb4 ctermfg=187 gui=Bold cterm=Bold
hi TSNameSpace guifg=#10aef8 ctermfg=39 gui=Bold cterm=Bold
hi typescriptParens guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptLogicSymbols guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptReserved guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptLabel guifg=#1ABC9C ctermfg=37 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFuncName guifg=#1aad16 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptCall guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptVariable guifg=#3649dc ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBinaryOp guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptAssign guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectLabel guifg=#10aef8 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDotNotation guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptOperator guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTernaryOp guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTypeAnnotation guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptIdentifierName guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrowFuncArg guifg=#FD9720 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptParamImpl guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptRepeat guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptStatementKeyword guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptAliasKeyword guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptInterfaceKeyword guifg=#9ece6a ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTemplateSB guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptMemberOptionality guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptOptionalMark guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptUnaryOp guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptBranch Statement
hi GitGutterAdd guifg=#9dd067 ctermfg=149 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi GitGutterChange guifg=#4cc7e4 ctermfg=80 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi GitGutterDelete guifg=#f05874 ctermfg=204 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#7d2c9d ctermfg=91 guibg=#1a1926 ctermbg=234 gui=NONE cterm=NONE
hi javaScriptOpSymbols guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptParens guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocTags guifg=#A6E22D ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocSeeTag guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBrowserObjects guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDOMObjects guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptFuncArg guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParensIfElse guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectKey guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsRepeat guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunctionKey guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectFuncName guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectColon guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParens guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncParens guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncArgs guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefaultGroup guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugH2 guifg=#5ca7e4 ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi plugBracket guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNumber guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDash guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugStar guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugMessage guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugName guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugUpdate guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugEdge guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugSha guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNotLoaded guifg=#F92772 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SignifySignAdd GitGutterAdd
hi link SignifySignDelete GitGutterDelete
hi link SignifySignDeleteFirstLine SignifySignDelete
hi link SignifySignChange GitGutterChange
hi link SignifySignChangeDelete GitGutterChangeDelete
hi stylusVariable guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClass guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClassChar guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusId guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusIdChar guifg=#4cc7e4 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVisualVal guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusImport guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentString guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimError guifg=#dacfb4 ctermfg=187 guibg=#f05874 ctermbg=204 gui=NONE cterm=NONE
hi xmlNamespace guifg=#fbec9f ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttribPunct guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptOpSymbol guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNotation guifg=#A6E22D ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNamedParamType guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamName guifg=#fbed7d ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamType guifg=#6690c4 ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptTemplateSB guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptRepeat guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectLabelColon guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectMethodName guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptFuncName guifg=#9dd067 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowString guifg=#fbfcbf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowStringDelimiter guifg=#dacfb4 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#f05874 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

if exists('*term_setansicolors')
  let g:terminal_ansi_colors = repeat([0], 16)

  let g:terminal_ansi_colors[0] = '#070510'
  let g:terminal_ansi_colors[1] = '#ff5874'
  let g:terminal_ansi_colors[2] = '#addb67'
  let g:terminal_ansi_colors[3] = '#ecc48d'
  let g:terminal_ansi_colors[4] = '#be9af7'
  let g:terminal_ansi_colors[5] = '#FD9720'
  let g:terminal_ansi_colors[6] = '#A1EFE4'
  let g:terminal_ansi_colors[7] = '#645775'
  let g:terminal_ansi_colors[8] = '#211c2f'
  let g:terminal_ansi_colors[9] = '#ff5874'
  let g:terminal_ansi_colors[10] = '#d7ffaf'
  let g:terminal_ansi_colors[11] = '#fbec9f'
  let g:terminal_ansi_colors[12] = '#6690c4'
  let g:terminal_ansi_colors[13] = '#ffbe00'
  let g:terminal_ansi_colors[14] = '#54CED6'
  let g:terminal_ansi_colors[15] = '#e7d3fb'
endif

if has('nvim')
  let g:terminal_color_0 = '#070510'
  let g:terminal_color_1 = '#ff5874'
  let g:terminal_color_2 = '#addb67'
  let g:terminal_color_3 = '#ecc48d'
  let g:terminal_color_4 = '#be9af7'
  let g:terminal_color_5 = '#FD9720'
  let g:terminal_color_6 = '#A1EFE4'
  let g:terminal_color_7 = '#645775'
  let g:terminal_color_8 = '#211c2f'
  let g:terminal_color_9 = '#ff5874'
  let g:terminal_color_10 = '#d7ffaf'
  let g:terminal_color_11 = '#fbec9f'
  let g:terminal_color_12 = '#6690c4'
  let g:terminal_color_13 = '#ffbe00'
  let g:terminal_color_14 = '#54CED6'
  let g:terminal_color_15 = '#e7d3fb'
endif

" ===================================
" Generated by Estilo 1.5.1
" https://github.com/jacoborus/estilo
" ===================================
