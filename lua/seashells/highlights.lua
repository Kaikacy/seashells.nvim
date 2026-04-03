local M = {}

function M.get()
	local c = require("seashells.colors")
	return {
		Normal = { bg = c.bg, fg = c.fg },
		NormalFloat = { bg = (vim.g.seashells_float_bg == false) and c.bg or c.altbg, fg = c.fg },
		FloatBorder = { bg = (vim.g.seashells_float_bg == false) and c.bg or c.altbg, fg = c.blue },
		ColorColumn = { bg = c.altbg },
		Conceal = { fg = c.brback },
		CurSearch = { bg = c.yellow, fg = c.bg },
		Search = { bg = c.blue, fg = c.brwhite },
		Cursor = { bg = c.curfg, fg = c.curbg },
		CursorLine = { bg = c.altbg },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = c.yellow },
		DiffAdd = { fg = c.green, bg = c.altbg },
		DiffChange = { bg = c.altbg },
		DiffDelete = { bg = c.altbg, fg = c.red, bold = true },
		DiffText = { bg = c.black, fg = c.teal },
		NonText = { fg = c.black },
		TermCursor = { fg = c.curbg, bg = c.curfg },
		ErrorMsg = { fg = c.bg, bg = c.red, bold = true },
		WarningMsg = { fg = c.yellow, bold = true },
		WinSeparator = { fg = c.altbg },
		Folded = { bg = c.bg, fg = c.brblack, underline = true },
		-- SignColumn
		LineNr = { fg = c.brblack },
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
		SpecialKey = { fg = c.brblack, underline = true },
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
			fg = c.blue,
			italic = vim.g.seashells_italic_comments == nil and true or vim.g.seashells_italic_comments,
		},
		Function = { fg = c.brteal },
		String = { fg = c.green },
		Identifier = { fg = c.bryellow },
		Type = { fg = c.teal },
		Keyword = { fg = c.brgreen },
		Constant = { fg = c.red },
		Boolean = { link = "Constant" },
		Character = { link = "String" },
		Number = { link = "Constant" },
		Label = { fg = c.brred, italic = true },
		Operator = { fg = c.brwhite },
		Delimiter = { fg = c.brwhite },
		Special = { fg = c.cyan }, -- todo
		Statement = { fg = c.bryellow },
		Structure = { fg = c.brcyan },
		Todo = { fg = c.green, bold = true },
		PreProc = { fg = c.brgreen, bold = true },
		Error = { fg = c.bg, bg = c.red },
		Added = { fg = c.green },
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
		LspCodeLens = { fg = c.brblack },
		LspCodeLensSeparator = { fg = c.black },
		LspInlayHint = { fg = c.brblack },
		LspReferenceText = { bg = c.altbg, bold = true },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		LspSignatureActiveParameter = { bg = c.black },

		--- Man pages ---
		manReference = { fg = c.green },

		--- Treesitter ---
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.yellow },
		["@variable.parameter.builtin"] = { fg = c.yellow },
		["@constructor"] = { fg = c.teal },
		["@module.builtin"] = { fg = c.brcyan, italic = true },
		["@constant.builtin"] = { fg = c.yellow },
		["@type.builtin"] = { fg = c.teal, italic = true },
		["@string.regexp"] = { fg = c.brblue },
		["@string.escape"] = { fg = c.brblue },
		["@function.builtin"] = { italic = true, fg = c.brteal },
		["@keyword.modifier"] = { fg = c.brgreen, italic = true },
		["@keyword.directive"] = { fg = c.brgreen, bold = true },
		["@keyword.directive.define"] = { fg = c.brgreen, bold = true },
		["@keyword.debug"] = { fg = c.brgreen, bold = true },
		["@keyword.conditional.ternary"] = { link = "Operator" },
		["@attribute"] = { italic = true, fg = c.brred },
		["@attribute.builtin"] = { italic = true, fg = c.brred },
		["@punctuation.special"] = { link = "@punctuation" },
		["@markup.heading.2"] = { fg = c.teal, bold = true },
		["@markup.heading.3"] = { fg = c.green, bold = true },
		["@markup.heading.4"] = { fg = c.brgreen, bold = true },
		["@markup.heading.5"] = { fg = c.brteal, bold = true },
		["@markup.heading.6"] = { fg = c.fg, bold = true },
		["@markup.quote"] = { fg = c.brgreen },
		["@tag"] = { fg = c.brgreen },
		["@tag.attribute"] = { link = "@attribute" },
		["@tag.builtin"] = { fg = c.brgreen, italic = true },

		--- LSP semantic highlight ---
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },

		--- PLUGINS ---
		-- blink.cmp
		BlinkCmpLabelMatch = { link = "PmenuMatch" },
		-- mini.icons
		MiniIconsAzure = { fg = c.teal },
		MiniIconsBlue = { fg = c.brblue },
		MiniIconsCyan = { fg = c.cyan },
		MiniIconsGreen = { fg = c.green },
		MiniIconsGray = { fg = c.brteal },
		MiniIconsOrange = { fg = c.yellow },
		MiniIconsPurple = { fg = c.brred },
		MiniIconsRed = { fg = c.red },
		MiniIconsYellow = { fg = c.bryellow },
	}
end

return M
