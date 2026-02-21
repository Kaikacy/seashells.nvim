local M = {}

function M.get()
	local c = require("seashells.colors")
	return {
		Normal = { bg = c.bg, fg = c.fg },
		NormalFloat = { bg = vim.g.seashells_float_bg and c.altbg or c.bg, fg = c.fg },
		FloatBorder = { bg = vim.g.seashells_float_bg and c.altbg or c.bg, fg = c.blue },
		ColorColumn = { bg = c.altbg },
		Conceal = { fg = c.brback },
		CurSearch = { bg = c.yellow, fg = c.bg },
		Search = { bg = c.blue, fg = c.brwhite },
		-- Cursor = { bg = c.curfg, fg = c.curbg },
		CursorLine = { bg = c.altbg },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = c.yellow },
		-- DiffAdd
		-- DiffChange
		-- DiffDelete
		-- DiffText
		NonText = { fg = c.black },
		TermCursor = { fg = c.curbg, bg = c.curfg },
		ErrorMsg = { fg = c.bg, bg = c.red, bold = true },
		WarningMsg = { fg = c.yellow, bold = true },
		WinSeparator = { fg = c.altbg },
		-- Folded
		-- SignColumn
		LineNr = { fg = c.blue },
		CursorLineNr = { bg = c.altbg, fg = c.green },
		MatchParen = { fg = c.cyan, bold = true },
		ModeMsg = { fg = c.green },
		MoreMsg = { fg = c.teal },
		Question = { fg = c.teal },
		Title = { fg = c.brblue, bold = true },
		Pmenu = { bg = c.altbg, fg = c.fg },
		PmenuSel = { bg = c.selbg },
		PmenuExtra = { fg = c.brgreen },
		PmenuSbar = { bg = c.altbg },
		PmenuThumb = { bg = c.black },
		PmenuMatch = { fg = c.cyan },
		PmenuMatchSel = { fg = c.cyan },
		QuickFixLine = { bg = c.black },
		qfFileName = { fg = c.fg },
		qfLineNr = { fg = c.brgreen },
		qfSeparator1 = { fg = c.brwhite },
		qfSeparator2 = { link = "qfSeparator1" },
		SpecialKey = { fg = c.blue },
		-- SpellBad
		-- SpellCap
		-- SpellLocal
		-- SpellRare
		StatusLine = { bg = c.black, fg = c.fg },
		StatusLineNC = { bg = c.altbg, fg = c.brblack },
		Tabline = { bg = c.altbg, fg = c.brblack },
		TablineSel = { bg = c.bg, fg = c.fg, bold = true },
		TablineFill = { bg = c.altbg },
		Visual = { bg = c.selbg, fg = c.brwhite },
		-- WinBar
		-- WinBarNC

		-- TODO: refine even more
		--- Syntax ---
		Comment = {
			fg = c.brblack,
			italic = vim.g.seashells_italic_comments == nil and true or vim.g.seashells_italic_comments,
		},
		Function = { fg = c.brteal },
		String = { fg = c.green },
		Identifier = { fg = c.bryellow },
		-- StorageClass
		Type = { fg = c.teal },
		Keyword = { fg = c.brgreen },
		Constant = { fg = c.red },
		Boolean = { link = "Constant" },
		Character = { link = "String" },
		Number = { link = "Constant" },
		-- Label,
		Operator = { fg = c.brwhite },
		Delimiter = { fg = c.brwhite },
		Special = { fg = c.cyan }, -- todo
		-- Statement
		Structure = { fg = c.yellow },
		Todo = { fg = c.green, bold = true },
		PreProc = { fg = c.brgreen, bold = true },
		Error = { fg = c.black, bg = c.red },
		Added = { fg = c.teal },
		Removed = { fg = c.red },
		Changed = { fg = c.brgreen },

		--- Diagnostics ---
		DiagnosticError = { fg = c.red, bold = true },
		DiagnosticWarn = { fg = c.yellow, bold = true },
		DiagnosticInfo = { fg = c.brblue, bold = true },
		DiagnosticHint = { fg = c.teal, bold = true },
		DiagnosticOk = { fg = c.green, bold = true },
		DiagnosticUnused = { fg = c.brblack },
		DiagnosticVirtualTextError = { fg = c.red, bold = true },
		DiagnosticVirtualTextWarn = { fg = c.yellow, bold = true },
		DiagnosticVirtualTextInfo = { fg = c.brblue, bold = true },
		DiagnosticVirtualTextHint = { fg = c.teal, bold = true },
		DiagnosticVirtualTextOk = { fg = c.green, bold = true },
		DiagnosticUnderlineError = vim.g.seashells_undercurl and { undercurl = true, sp = c.red }
			or { underline = true, sp = c.red },
		DiagnosticUnderlineWarn = vim.g.seashells_undercurl and { undercurl = true, sp = c.yellow }
			or { underline = true, sp = c.yellow },
		DiagnosticUnderlineInfo = vim.g.seashells_undercurl and { undercurl = true, sp = c.brblue }
			or { underline = true, sp = c.brblue },
		DiagnosticUnderlineHint = vim.g.seashells_undercurl and { undercurl = true, sp = c.teal }
			or { underline = true, sp = c.teal },
		DiagnosticUnderlineOk = vim.g.seashells_undercurl and { undercurl = true, sp = c.green }
			or { underline = true, sp = c.green },
		DiagnosticSignError = { fg = c.red, bold = true },
		DiagnosticSignWarn = { fg = c.yellow, bold = true },
		DiagnosticSignInfo = { fg = c.brblue, bold = true },
		DiagnosticSignHint = { fg = c.teal, bold = true },
		DiagnosticSignOk = { fg = c.green, bold = true },

		--- LSP ---
		LspCodeLens = { fg = c.blue },
		LspCodeLensSeparator = { fg = c.black },
		LspInlayHint = { fg = c.blue },
		LspReferenceText = { bg = c.altbg, bold = true },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		LspSignatureActiveParameter = { bg = c.black },

		--- Man pages ---
		manReference = { fg = c.green },

		--- Treesitter ---
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { italic = true },
		["@variable.parameter.builtin"] = { italic = true },
		["@constructor"] = { fg = c.teal },
		["@module.builtin"] = { fg = c.yellow },
		["@constant.builtin"] = { link = "Constant" },
		["@type.builtin"] = { fg = c.teal },
		["@string.regexp"] = { fg = c.brteal },
		["@string.escape"] = { fg = c.brteal },
		["@keyword.modifier"] = { fg = c.brgreen, italic = true },
		["@keyword.coroutine"] = { fg = c.brgreen, italic = true },
		["@keyword.directive"] = { fg = c.brgreen, bold = true },
		["@keyword.directive.define"] = { fg = c.brgreen, bold = true },
		["@keyword.debug"] = { fg = c.brgreen, bold = true },
		["@keyword.conditional.ternary"] = { link = "Operator" },
		["@attribute"] = { italic = true },
		["@attribute.builtin"] = { italic = true, fg = c.cyan },
		["@punctuation.special"] = { link = "@punctuation" },
		["@markup.heading.2"] = { fg = c.teal, bold = true },
		["@markup.heading.3"] = { fg = c.green, bold = true },
		["@markup.heading.4"] = { fg = c.red },
		["@markup.heading.5"] = { fg = c.yellow },
		["@markup.heading.6"] = { fg = c.fg },
		["@markup.quote"] = { fg = c.brteal },
		["@tag"] = { fg = c.brgreen },
		["@tag.attribute"] = { link = "@attribute" },
		["@tag.builtin"] = { fg = c.brgreen, italic = true },
	}
end

return M
