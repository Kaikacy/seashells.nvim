local M = {}

function M.get()
	local c = require("seashells.colors")
	return {
		Normal = { bg = c.bg, fg = c.fg },
		NormalFloat = { bg = vim.g.seashells_float_bg and c.altbg or c.bg, fg = c.fg },
		FloatBorder = { bg = vim.g.seashells_float_bg and c.altbg or c.bg, fg = c.brblack },
		ColorColumn = { bg = c.black },
	}
end

return M
