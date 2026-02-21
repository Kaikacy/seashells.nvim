local M = {}

function M.load()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "seashells"

	local hls = require("seashells.highlights").get()
	for hl, val in pairs(hls) do
		vim.api.nvim_set_hl(0, hl, val)
	end
end

return M
