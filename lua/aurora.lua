-- stylua: ignore

-- https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f#commitcomment-87014462
local hl = function(group, opts)
  -- opts.default = true
  vim.api.nvim_set_hl(0, group, opts)
end
vim = vim or {}

local link_ts_v7 = function(bg)
	if vim.fn.has("nvim-0.8") == 0 then
		vim.api.nvim_set_hl(0, "TSAnnotation", { fg = "#82aaf0", ctermfg = 111 })
		vim.api.nvim_set_hl(0, "TSAttribute", { fg = "#7fdbca", ctermfg = 116 })
		vim.api.nvim_set_hl(0, "TSCharacter", { fg = "#ffce51", ctermfg = 221 })
		vim.api.nvim_set_hl(0, "TSComment", { link = "Comment" })
		vim.api.nvim_set_hl(0, "TSError", {
			fg = "#DC143C",
			bg = bg,
			ctermfg = 161,
			ctermbg = "NONE",
			bold = (vim.g.aurora_bold == 1),
			undercurl = true,
		})
		vim.api.nvim_set_hl(
			0,
			"TSPunctDelimiter",
			{ fg = "#e7d3fb", bg = bg, ctermfg = 189, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
		)
		vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#7AA6DA", ctermfg = 110, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "TSPunctSpectial", { fg = "#E7C547", bg = bg, ctermfg = 185, ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "TSConstant", { link = "Constant" })
		vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = "#e73c50", ctermfg = 167, italic = (vim.g.aurora_italic == 1) })
		vim.api.nvim_set_hl(0, "TSConstMacro", { fg = "#F92772", ctermfg = 197 })
		vim.api.nvim_set_hl(0, "TSString", { link = "String" })
		vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#7fdbca", ctermfg = 116 })
		vim.api.nvim_set_hl(0, "TSStringEscape", { fg = "#A1EFE4", ctermfg = 158 })
		vim.api.nvim_set_hl(0, "TSNumber", { link = "Number" })
		vim.api.nvim_set_hl(0, "TSBoolean", { link = "Boolean" })
		vim.api.nvim_set_hl(0, "TSFloat", { link = "Float" })
		vim.api.nvim_set_hl(0, "TSField", { fg = "#9e71cf", ctermfg = 134 })
		vim.api.nvim_set_hl(0, "TSType", { link = "Type" })
		vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = "#ffce51", ctermfg = 221, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "TSProperty", { link = "TSField" })
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
			{ fg = "#A1EFE4", bg = bg, ctermfg = 158, ctermbg = "NONE", bold = true }
		)
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
	end
end
local link_ts_v8 = function(bg)
	if vim.fn.has("nvim-0.8") == 1 then

		vim.api.nvim_set_hl(
			0,
			"TSParameterReference",
			{ fg = "#A1EFE4", bg = bg, ctermfg = 158, ctermbg = "NONE", bold = true }
		)

		vim.api.nvim_set_hl(0, "TSDefinitionUsage", { fg = "#E6DB74", ctermfg = 186 })
		vim.api.nvim_set_hl(0, "TSDefinition", { link = "Define" })
		vim.api.nvim_set_hl(0, "TSCurrentScope", { bg = bg, ctermbg = 234, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@annotation", { fg = "#82aaf0", ctermfg = 111 })
		vim.api.nvim_set_hl(0, "@attribute", { fg = "#7fdbca", ctermfg = 116 })
		vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
		vim.api.nvim_set_hl(0, "@error", {
			fg = "#DC143C",
			bg = bg,
			ctermfg = 161,
			ctermbg = "NONE",
			bold = (vim.g.aurora_bold == 1),
			undercurl = true,
		})
		vim.api.nvim_set_hl(
			0,
			"@punctuation.delimiter",
			{ fg = "#e7d3fb", bg = bg, ctermfg = 189, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
		)
		vim.api.nvim_set_hl(
			0,
			"@punctuation.bracket",
			{ fg = "#7AA6DA", ctermfg = 110, bold = (vim.g.aurora_bold == 1) }
		)
		vim.api.nvim_set_hl(0, "@punctuation.spectial", { fg = "#E7C547", bg = bg, ctermfg = 185, ctermbg = "NONE" })
		vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
		vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "#e73c50", ctermfg = 167, italic = (vim.g.aurora_italic == 1) })
		vim.api.nvim_set_hl(0, "@constant.macro", { fg = "#F92772", ctermfg = 197 })
		vim.api.nvim_set_hl(0, "@string", { link = "String" })
		vim.api.nvim_set_hl(0, "@string.regex", { fg = "#7fdbca", ctermfg = 116 })
		vim.api.nvim_set_hl(0, "@string.escape", { fg = "#A1EFE4", ctermfg = 158 })
		vim.api.nvim_set_hl(0, "@string.special", { fg = "#A1EFE4", ctermfg = 158 })
		vim.api.nvim_set_hl(0, "@number", { link = "Number" })
		vim.api.nvim_set_hl(0, "@boolean", { link = "Boolean" })
		vim.api.nvim_set_hl(0, "@float", { link = "Float" })
		vim.api.nvim_set_hl(0, "@field", { fg = "#9e71cf", ctermfg = 134 })
		vim.api.nvim_set_hl(0, "@type", { link = "Type" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#ffce51", ctermfg = 221, bold = (vim.g.aurora_bold == 1) })

		vim.api.nvim_set_hl(0, "@type.qualifier", { link = "Type" })
		vim.api.nvim_set_hl(0, "@type.definition", { link = "Typedef" })
		vim.api.nvim_set_hl(0, "@property", { link = "@field" })
		vim.api.nvim_set_hl(0, "@parameter", { fg = "#fbec9f", ctermfg = 229 })
		vim.api.nvim_set_hl(0, "@constructor", { fg = "#6690c4", ctermfg = 68, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@function", { fg = "#66d9ef", ctermfg = 81, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@function.builtin", { fg = "#A6E22D", ctermfg = 148, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@function.builtin", { fg = "#0fb9e0", ctermfg = 38, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@function.macro", { fg = "#be9af7", ctermfg = 141, bold = (vim.g.aurora_bold == 1) })

		vim.api.nvim_set_hl(0, "@keyword", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#0fb9e0", ctermfg = 38, bold = (vim.g.aurora_bold == 1) })

		vim.api.nvim_set_hl(0, "@keyword.operator", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "@keyword.return", { link = "Keyword" })
		vim.api.nvim_set_hl(
			0,
			"@parameter.reference",
			{ fg = "#A1EFE4", bg = bg, ctermfg = 158, ctermbg = "NONE", bold = true }
		)
		vim.api.nvim_set_hl(0, "@method", { link = "Function" })
		vim.api.nvim_set_hl(0, "@method.call", { link = "Function" })
		vim.api.nvim_set_hl(0, "@conditional", { fg = "#EE82EE", ctermfg = 213, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@repeat", { link = "Repeat" })
		vim.api.nvim_set_hl(0, "@exception", { fg = "#ff5874", ctermfg = 204, italic = (vim.g.aurora_italic == 1) })
		vim.api.nvim_set_hl(0, "@label", { link = "Label" })
		vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
		vim.api.nvim_set_hl(0, "@structure", { link = "Structure" })
		vim.api.nvim_set_hl(0, "@include", { link = "Include" })
		vim.api.nvim_set_hl(0, "@tag", { link = "Tag" })
		vim.api.nvim_set_hl(0, "@tag.delimiter", { link = "Delimiter" })
		vim.api.nvim_set_hl(0, "@tag.attribute", { link = "Structure" })
		vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
		vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#FD9720", ctermfg = 208 })
		vim.api.nvim_set_hl(0, "@definition.usage", { fg = "#E6DB74", ctermfg = 186 })
		vim.api.nvim_set_hl(0, "@definition", { link = "Define" })
		vim.api.nvim_set_hl(0, "@strong", { fg = "#DBC08A", ctermfg = 180, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(
			0,
			"@emphasis",
			{ fg = "#fbed7d", ctermfg = 228, bold = (vim.g.aurora_bold == 1), undercurl = true, italic = true }
		)
		vim.api.nvim_set_hl(0, "@underline", { fg = "#ecc48d", ctermfg = 222, undercurl = true })
		vim.api.nvim_set_hl(0, "@title", { link = "SpecialKey" })
		vim.api.nvim_set_hl(0, "@literal", { fg = "#dacfb4", ctermfg = 187 })
		vim.api.nvim_set_hl(0, "@identifier", { fg = "#dacfb4", ctermfg = 187, bold = (vim.g.aurora_bold == 1) })
		vim.api.nvim_set_hl(0, "@namespace", { link = "Function" })

		vim.api.nvim_set_hl(0, "@character", { fg = "#ffce51", ctermfg = 221 })
		vim.api.nvim_set_hl(0, "@character.special", { link = "SpecialChar" })

		-- Text {{{
		vim.api.nvim_set_hl(0, "@text", { link = "Normal" })
		vim.api.nvim_set_hl(0, "@text.strong", { bold = true })
		vim.api.nvim_set_hl(0, "@text.emphasis", { italic = true })
		vim.api.nvim_set_hl(0, "@text.underline", { underline = true })
		vim.api.nvim_set_hl(0, "@text.strike", { strikethrough = true })
		vim.api.nvim_set_hl(0, "@text.title", { link = "Title" })
		vim.api.nvim_set_hl(0, "@text.literal", { link = "String" })
		vim.api.nvim_set_hl(0, "@text.uri", { link = "Underlined" })
		vim.api.nvim_set_hl(0, "@text.math", { link = "Special" })
		vim.api.nvim_set_hl(0, "@text.environment", { link = "Macro" })
		vim.api.nvim_set_hl(0, "@text.environment.name", { link = "Type" })
		vim.api.nvim_set_hl(0, "@text.reference", { link = "Constant" })

		vim.api.nvim_set_hl(0, "@text.todo", { link = "Todo" })
		vim.api.nvim_set_hl(0, "@text.note", { link = "SpecialComment" })
		vim.api.nvim_set_hl(0, "@text.warning", { link = "WarningMsg" })
		vim.api.nvim_set_hl(0, "@text.danger", { link = "ErrorMsg" })
	end
end

return {
	colorscheme = function()
		local bg = "#211c2f"
		local bg2 = "#282e39"
		local bg3 = "#1a1926"
		local bg4 = "#141425"

		if not vim.g.aurora_transparent and vim.g.aurora_darker then
			bg = "#141020"
			bg2 = "#1a1926"
			bg3 = "#101020"
			bg4 = "#040410"
		end

		if vim.g.aurora_transparent then
			bg = "NONE"
			bg2 = "NONE"
			bg3 = "NONE"
			bg4 = "NONE"
		end
		local function load_basic()
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
			vim.api.nvim_set_hl(0, "CursorLineNr", {
				fg = "#1aad16",
				bg = bg3,
				ctermfg = 34,
				ctermbg = 234,
				underline = true,
				bold = (vim.g.aurora_bold == 1),
			})
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
				{ fg = "#DC143C", bg = bg, ctermfg = 161, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
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
					bg = bg,
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
      vim.api.nvim_set_hl(0, 'CurSearch', { link = 'Search' })
			vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#77d507", bg = bg, ctermfg = 112, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#aab7cf", bg = bg, ctermfg = 146, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "NonText", { fg = "#4f425e", ctermfg = 239 })
			vim.api.nvim_set_hl(0, "PMenu", { fg = "#888ca9", bg = bg3, ctermfg = 103, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "PMenuSel", {
				fg = "#e7d3fb",
				bg = "#443a54",
				ctermfg = 189,
				ctermbg = 238,
				bold = (vim.g.aurora_bold == 1),
				italic = true,
			})
			vim.api.nvim_set_hl(0, "PmenuSbar", { fg = "NONE", bg = "#4f425e", ctermfg = "NONE", ctermbg = 239 })
			vim.api.nvim_set_hl(0, "PmenuThumb", { fg = "NONE", bg = "#aab7cf", ctermfg = "NONE", ctermbg = 146 })
			vim.api.nvim_set_hl(0, "MsgArea", { fg = "#ffbbd6", bg = bg, ctermfg = 218, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "Question", { fg = "#6690c4", bg = bg, ctermfg = 68, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#ecc48d", ctermfg = 222 })
			vim.api.nvim_set_hl(
				0,
				"SpellBad",
				{ fg = "#ac3f27", bg = bg, ctermfg = 130, ctermbg = "NONE", sp = "#ac3f27", undercurl = true }
			)
			vim.api.nvim_set_hl(0, "SpellCap", { fg = "#5ca7e4", bg = bg, ctermfg = 74, ctermbg = "NONE" })
			vim.api.nvim_set_hl(
				0,
				"SpellRare",
				{ fg = "#99c794", bg = bg, ctermfg = 114, ctermbg = "NONE", sp = "#addb67", undercurl = true }
			)
      vim.api.nvim_set_hl(0, 'Rare', { link = 'SpellRare' })
			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ddd0f4", bg = "#443a54", ctermfg = 189, ctermbg = 238 })
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#777087", bg = "#343047", ctermfg = 243, ctermbg = 236 })
			vim.api.nvim_set_hl(0, "TabLine", { fg = "#7BA1D0", bg = bg, ctermfg = 110, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "TabLineFill", { fg = "#333042", bg = bg, ctermfg = 236, ctermbg = "NONE" })
			vim.api.nvim_set_hl(
				0,
				"TabLineSel",
				{ fg = "#10aef8", bg = bg, ctermfg = 39, ctermbg = "NONE", underline = true }
			)
			vim.api.nvim_set_hl(0, "Title", { fg = "#82aaf0", ctermfg = 111, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "Visual", { bg = "#3f4060", ctermbg = 239 })
			vim.api.nvim_set_hl(0, "VisualNOS", { fg = "#637077", bg = bg, ctermfg = 243, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ec5f67", ctermfg = 203, sp = "#821040", undercurl = true })
			vim.api.nvim_set_hl(0, "WildMenu", { fg = "#777087", bg = bg, ctermfg = 243, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#4f425e", bg = bg3, ctermfg = 239, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "Comment", { fg = "#989cbf", ctermfg = 247, italic = (vim.g.aurora_italic == 1) })
			vim.api.nvim_set_hl(0, "Constant", { fg = "#fbfcbf", ctermfg = 229 })
			vim.api.nvim_set_hl(0, "String", { fg = "#1ABC9C", ctermfg = 35 })
			vim.api.nvim_set_hl(0, "Character", { fg = "#be9af7", bg = bg, ctermfg = 141, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Boolean", { fg = "#FF435B", ctermfg = 203, italic = (vim.g.aurora_italic == 1) })
			vim.api.nvim_set_hl(0, "Number", { fg = "#FD9720", ctermfg = 208 })
			vim.api.nvim_set_hl(0, "Float", { fg = "#F92772", ctermfg = 197 })
			vim.api.nvim_set_hl(0, "Identifier", { fg = "#e7d3fb", ctermfg = 189 })
			vim.api.nvim_set_hl(0, "Function", { fg = "#10aef8", ctermfg = 39, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "Statement", { fg = "#F92772", ctermfg = 197, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "Conditional", { fg = "#99c794", bg = bg, ctermfg = 114, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Repeat", { fg = "#ff7273", ctermfg = 203, italic = (vim.g.aurora_italic == 1) })
			vim.api.nvim_set_hl(0, "Label", { fg = "#1aad16", ctermfg = 34, italic = (vim.g.aurora_italic == 1) })
			vim.api.nvim_set_hl(0, "Operator", { fg = "#A1EFE4", ctermfg = 158, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(
				0,
				"Keyword",
				{ fg = "#c4a2ff", ctermfg = 183, bold = (vim.g.aurora_bold == 1), italic = true }
			)
			vim.api.nvim_set_hl(0, "Exception", { fg = "#e55285", ctermfg = 168 })
			vim.api.nvim_set_hl(0, "PreProc", { fg = "#EE82EE", ctermfg = 213 })
			vim.api.nvim_set_hl(0, "Include", { fg = "#D57CD5", bg = bg, ctermfg = 176, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Define", { fg = "#ff5874", ctermfg = 204, italic = (vim.g.aurora_italic == 1) })
			vim.api.nvim_set_hl(0, "Macro", { fg = "#C33C4A", bg = bg, ctermfg = 131, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "PreCondit", { fg = "#d7ffaf", bg = bg, ctermfg = 193, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Type", { fg = "#67d5b5", ctermfg = 79, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "StorageClass", { fg = "#01d5f1", ctermfg = 45 })
			vim.api.nvim_set_hl(0, "Structure", { fg = "#A1EFE4", ctermfg = 158, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "Typedef", { fg = "#66d9ef", bg = bg, ctermfg = 81, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Special", { fg = "#FF6347", bg = bg, ctermfg = 203, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#F92772", bg = bg, ctermfg = 197, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Tag", { fg = "#addb67", bg = bg, ctermfg = 149, ctermbg = "NONE" })
			if vim.fn.has("nvim-0.8") == 1 then
				link_ts_v8(bg)
			else
				link_ts_v7(bg)
			end
		end
		async = vim.loop.new_async(vim.schedule_wrap(function()
			vim.api.nvim_set_hl(0, "SignifySignAdd", { link = "GitGutterAdd" })
			vim.api.nvim_set_hl(0, "SignifySignDelete", { link = "GitGutterDelete" })
			vim.api.nvim_set_hl(0, "SignifySignDeleteFirstLine", { link = "SignifySignDelete" })
			vim.api.nvim_set_hl(0, "SignifySignChange", { link = "GitGutterChange" })
			vim.api.nvim_set_hl(0, "SignifySignChangeDelete", { link = "GitGutterChangeDelete" })
			vim.api.nvim_set_hl(0, "gitcommitBranch", { link = "SpellCap" })
			vim.api.nvim_set_hl(
				0,
				"gitcommitDiscardedType",
				{ fg = "#ec5f67", bg = bg, ctermfg = 203, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "gitcommitSelectedType", { link = "cssTagName" })
			vim.api.nvim_set_hl(0, "gitcommitHeader", { link = "cssProp" })
			vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", { link = "jsonNumber" })
			vim.api.nvim_set_hl(
				0,
				"gitcommitDiscardedFile",
				{ fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "gitcommitSelectedFile", { link = "cssClassName" })
			vim.api.nvim_set_hl(0, "GitSignsAddInline", {
				sp = "#addb67",
				bold = (vim.g.aurora_bold == 1),
				underdotted = true,
			})
			vim.api.nvim_set_hl(0, "GitSignsDeleteInline", {
				sp = "#E7C547",
				bold = (vim.g.aurora_bold == 1),
				strikethrough = true,
			})
			vim.api.nvim_set_hl(0, "GitSignsChangeInline", {
				sp = "#8376B3",
				bold = (vim.g.aurora_bold == 1),
				underdotted = true,
			})
			vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#9dd067", bg = bg3, ctermfg = 149, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#4cc7e4", bg = bg3, ctermfg = 80, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#f05874", bg = bg3, ctermfg = 204, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "GitGutterChangeDelete", { fg = "#7d2c9d", bg = bg3, ctermfg = 91, ctermbg = 234 })
			vim.api.nvim_set_hl(
				0,
				"jsGlobalNodeObjects",
				{ fg = "#2ba245", bg = bg, ctermfg = 35, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(0, "ALEErrorSign", { fg = "#ff5874", bg = bg3, ctermfg = 204, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "ALEWarningSign", { fg = "#FD9720", bg = bg3, ctermfg = 208, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "ALEInfoSign", { fg = "#addb67", bg = bg3, ctermfg = 149, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "plug2", { link = "cssClassName" })
			vim.api.nvim_set_hl(
				0,
				"plugH2",
				{ fg = "#5ca7e4", bg = bg, ctermfg = 74, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(0, "plugNotLoaded", { fg = "#F92772", bg = bg, ctermfg = 197, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#989cbf", bg = bg, ctermfg = 247, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#4cc7e4", bg = bg, ctermfg = 80, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#9ca7e4", bg = bg, ctermfg = 74, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#9e71cf", bg = bg, ctermfg = 134, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#66d9ef", bg = bg, ctermfg = 81, ctermbg = 234 })
			vim.api.nvim_set_hl(
				0,
				"TelescopeSelection",
				{ fg = "#A1EFE4", bg = "#333333", ctermfg = 158, ctermbg = 236 }
			)
			vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#EE82EE", ctermfg = 213 })
			vim.api.nvim_set_hl(0, "sqlStatement", { fg = "#54CED6", bg = bg, ctermfg = 80, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "sqlKeyword", { fg = "#ffbe00", ctermfg = 214, bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "sqlSpecial", { fg = "#DC143C", bg = bg, ctermfg = 161, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "sqlType", { link = "Question" })
			vim.api.nvim_set_hl(0, "sqlFunction", { fg = "#ec5f67", bg = bg, ctermfg = 203, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "mysqlKeyword", { fg = "#C33C4A", bg = bg, ctermfg = 131, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "mysqlOperator", { link = "DiagnosticHint" })
			vim.api.nvim_set_hl(0, "mysqlFunction", { fg = "#50c878", bg = bg, ctermfg = 78, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "mysqlStatement", { fg = "#A1EFE4", bg = bg, ctermfg = 158, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "mysqlType", { fg = "#0fb9e0", bg = bg, ctermfg = 38, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Quote", { link = "Label" })
			vim.api.nvim_set_hl(0, "yamlFlowString", { fg = "#fbfcbf", bg = bg, ctermfg = 229, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "yamlFlowStringDelimiter", { link = "cssAttr" })
			vim.api.nvim_set_hl(
				0,
				"yamlKeyValueDelimiter",
				{ fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "markdownH1", { link = "cssProp" })
			vim.api.nvim_set_hl(
				0,
				"markdownHeadingRule",
				{ fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"markdownHeadingDelimiter",
				{ fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
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
			vim.api.nvim_set_hl(0, "markdownUrlTitle", { fg = "#fbfcbf", bg = bg, ctermfg = 229, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "markdownUrlDelimiter", { link = "jsonNumber" })
			vim.api.nvim_set_hl(
				0,
				"markdownUrlTitleDelimiter",
				{ fg = "#fbed7d", bg = bg, ctermfg = 228, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { link = "SpellCap" })
			vim.api.nvim_set_hl(0, "markdownCode", { fg = "#fbfcbf", bg = bg, ctermfg = 229, ctermbg = "NONE" })
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

			vim.api.nvim_set_hl(0, "Hlargs", { link = "TSParameter" })
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
			vim.api.nvim_set_hl(0, "HopUnmatched", { fg = "#6c648d" })

			vim.api.nvim_set_hl(0, "LeapMatch", { link = "HopNextKey" })
			vim.api.nvim_set_hl(0, "LeapLabelPrimary", { link = "HopNextKey1" })
			vim.api.nvim_set_hl(0, "LeapLabelSecondary", { link = "HopNextKey2" })
			vim.api.nvim_set_hl(0, "LeapBackDrop", { link = "HopUnmatched" })
			vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#777087", bg = bg, ctermfg = 243, ctermbg = "NONE" })
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineContextChar",
				{ fg = "#c4a2ff", ctermfg = 183, bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineContextStart",
				{ ctermfg = 183, bold = (vim.g.aurora_bold == 1), underline = true, sp = "#c4a2ff" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent1",
				{ fg = "#be9af7", bg = bg, ctermfg = 141, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent2",
				{ fg = "#82aaf0", bg = bg, ctermfg = 111, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent3",
				{ fg = "#addb67", bg = bg, ctermfg = 149, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent4",
				{ fg = "#ecc48d", bg = bg, ctermfg = 222, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent5",
				{ fg = "#FD9720", bg = bg, ctermfg = 208, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"IndentBlanklineIndent6",
				{ fg = "#ff5874", bg = bg, ctermfg = 204, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "jsonEscape", { fg = "#5ca7e4", bg = bg, ctermfg = 74, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "jsonNumber", { fg = "#fbec9f", bg = bg, ctermfg = 229, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "jsonBraces", { link = "cssAttr" })
			vim.api.nvim_set_hl(0, "jsonNull", { link = "jsonNumber" })
			vim.api.nvim_set_hl(0, "jsonBoolean", { link = "jsonNumber" })
			vim.api.nvim_set_hl(0, "jsonKeywordMatch", { link = "cssImportant" })
			vim.api.nvim_set_hl(0, "jsonQuote", { link = "cssAttr" })
			vim.api.nvim_set_hl(0, "jsonNoise", { link = "cssImportant" })
			vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#DC143C", bold = (vim.g.aurora_bold == 1) })
			vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#D93234", bg = bg3, ctermfg = 167, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "DiagnosticErrorFloating", { link = "DiagnosticError" })
			vim.api.nvim_set_hl(0, "DiagnosticWarning", { fg = "#bBa03A", bg = bg, ctermfg = 143, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#e7dc8c", bg = bg3, ctermfg = 186, ctermbg = 234 })
			vim.api.nvim_set_hl(
				0,
				"DiagnosticWarningFloating",
				{ fg = "#DBC08A", bg = bg, ctermfg = 180, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"DiagnosticVirtualTextError",
				{ fg = "#D93234", bg = bg, ctermfg = 167, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"DiagnosticVirtualTextWarning",
				{ fg = "#DBC08A", bg = bg, ctermfg = 180, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"DiagnosticVirtualTextInfo",
				{ fg = "#99c794", bg = bg, ctermfg = 114, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(
				0,
				"DiagnosticVirtualTextHint",
				{ fg = "#1aad16", bg = bg, ctermfg = 34, ctermbg = "NONE" }
			)
			vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { link = "Error" })
			vim.api.nvim_set_hl(
				0,
				"DiagnosticUnderlineWarn",
				{ link = "DiagnosticWarn", undercurl = true, sp = "#BBA03A" }
			)
			vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { link = "DiagnosticError" })
			vim.api.nvim_set_hl(0, "DiagnosticFloatingWarning", { link = "DiagnosticWarning" })
			vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { link = "DiagnosticInfo" })
			vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { link = "DiagnosticHint" })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#7AA6DA", bg = bg3, ctermfg = 110, ctermbg = 234 })
			vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#7AA6DA", bg = bg, ctermfg = 110, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#2ba245", bg = bg, ctermfg = 35, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#ffce51", bg = bg3, ctermfg = 221, ctermbg = 234 })
			vim.api.nvim_set_hl(
				0,
				"DiagnosticHintFloating",
				{ fg = "#1ABC9C", bg = bg, ctermfg = 37, ctermbg = "NONE" }
			)
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
			vim.api.nvim_set_hl(
				0,
				"LspFloatWinNormal",
				{ fg = "#dacfb4", bg = "#30234f", ctermfg = 187, ctermbg = 236 }
			)
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
			vim.api.nvim_set_hl(0, "cssTagName", { fg = "#7fdbca", bg = bg, ctermfg = 116, ctermbg = "NONE" })
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
			vim.api.nvim_set_hl(0, "cssImportant", { fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "cssClassName", { fg = "#9dd067", bg = bg, ctermfg = 149, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "cssClassNameDot", { link = "cssAttr" })
			vim.api.nvim_set_hl(0, "cssProp", { fg = "#4cc7e4", bg = bg, ctermfg = 80, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "cssAttr", { fg = "#dacfb4", bg = bg, ctermfg = 187, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "cssUnitDecorators", { link = "cssAttr" })
			vim.api.nvim_set_hl(0, "cssNoise", { link = "cssImportant" })
			vim.api.nvim_set_hl(0, "goBuiltins", {
				fg = "#01d5f1",
				bg = bg,
				ctermfg = 45,
				ctermbg = "NONE",
				bold = (vim.g.aurora_bold == 1),
				italic = true,
			})
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
			vim.api.nvim_set_hl(0, "htmlTag", { link = "Tag" })
			vim.api.nvim_set_hl(0, "htmlEndTag", { link = "htmlTag" })
			vim.api.nvim_set_hl(0, "Delimiter", { fg = "#A1EFE4", bg = bg, ctermfg = 158, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#637077", bg = bg, ctermfg = 243, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Debug", { fg = "#6189bb", bg = bg, ctermfg = 67, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "debugPC", { link = 'Debug'})
			vim.api.nvim_set_hl(0, "Underlined", { fg = "#67d5b5", bg = bg, ctermfg = 79, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Ignore", { fg = "#4f425e", bg = bg, ctermfg = 239, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "Error", {
				fg = "#DC143C",
				bg = bg,
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
			vim.api.nvim_set_hl(0, "pugJavascriptOutputChar", { link = "jsonNumber" })
			vim.api.nvim_set_hl(0, "fzf1", { fg = "#ecc48d", bg = bg2, ctermfg = 222, ctermbg = 236 })
			vim.api.nvim_set_hl(0, "fzf2", { fg = "#FD9720", bg = bg2, ctermfg = 208, ctermbg = 236 })
			vim.api.nvim_set_hl(0, "fzf3", { fg = "#DC143C", bg = bg2, ctermfg = 161, ctermbg = 236 })
			vim.api.nvim_set_hl(
				0,
				"diffRemoved",
				{ fg = "#f05874", bg = bg, ctermfg = 204, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"diffChanged",
				{ fg = "#4cc7e4", bg = bg, ctermfg = 80, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"diffAdded",
				{ fg = "#9dd067", bg = bg, ctermfg = 149, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"diffLine",
				{ fg = "#fbed7d", bg = bg, ctermfg = 228, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(
				0,
				"diffSubname",
				{ fg = "#7fdbca", bg = bg, ctermfg = 116, ctermbg = "NONE", bold = (vim.g.aurora_bold == 1) }
			)
			vim.api.nvim_set_hl(0, "diffComment", { fg = "#5f7e97", bg = bg, ctermfg = 66, ctermbg = "NONE" })
			vim.api.nvim_set_hl(
				0,
				"BufferLineIndicatorSelected",
				{ fg = "#282E39", bg = "#3649dc", ctermfg = 236, ctermbg = 62 }
			)
			vim.api.nvim_set_hl(0, "BufferLineBuffer", { link = "Comment" })
			vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { link = "Comment" })
			vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "#282E39", bg = bg2, ctermfg = 236, ctermbg = 236 })
			vim.api.nvim_set_hl(
				0,
				"BuffetCurrentBuffer",
				{ fg = "#443a54", bg = "#3649dc", ctermfg = 238, ctermbg = 62 }
			)
			vim.api.nvim_set_hl(
				0,
				"BuffetActiveBuffer",
				{ fg = "#282E39", bg = "#3649dc", ctermfg = 236, ctermbg = 62 }
			)
			vim.api.nvim_set_hl(0, "BuffetBuffer", { bg = "#b4b0e0", ctermbg = 146 })
			vim.api.nvim_set_hl(
				0,
				"BuffetModCurrentBuffer",
				{ fg = "#443a54", bg = "#3649dc", ctermfg = 238, ctermbg = 62 }
			)
			vim.api.nvim_set_hl(
				0,
				"BuffetModActiveBuffer",
				{ fg = "#343047", bg = "#3649dc", ctermfg = 236, ctermbg = 62 }
			)
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
			vim.api.nvim_set_hl(0, "helpHyperTextEntry", { link = "cssClassName" })
			vim.api.nvim_set_hl(0, "helpHeadline", { link = "SpellCap" })
			vim.api.nvim_set_hl(0, "helpSectionDelim", { fg = "#222222", bg = bg, ctermfg = 235, ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "helpNote", { link = "cssImportant" })
			vim.api.nvim_set_hl(0, "xmlNamespace", { link = "jsonNumber" })
			vim.api.nvim_set_hl(0, "xmlAttribPunct", { link = "cssImportant" })
			vim.api.nvim_set_hl(0, "xmlProcessingDelim", { link = "cssImportant" })
		end))
		load_basic()
		async:send()

		vim.api.nvim_set_hl_ns(0)
	end,
}
