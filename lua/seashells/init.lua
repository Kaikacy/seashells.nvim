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

	-- enabled by default
	if vim.g.seashells_terminal_colors ~= false then
		local c = require("seashells.colors")
		vim.g.terminal_color_0 = c.black
		vim.g.terminal_color_1 = c.red
		vim.g.terminal_color_2 = c.green
		vim.g.terminal_color_3 = c.yellow
		vim.g.terminal_color_4 = c.blue
		vim.g.terminal_color_5 = c.cyan -- terminal purple
		vim.g.terminal_color_6 = c.teal -- terminal cyan
		vim.g.terminal_color_7 = c.white
		vim.g.terminal_color_8 = c.brblack
		vim.g.terminal_color_9 = c.brred
		vim.g.terminal_color_10 = c.brgreen
		vim.g.terminal_color_11 = c.bryellow
		vim.g.terminal_color_12 = c.brblue
		vim.g.terminal_color_13 = c.brcyan
		vim.g.terminal_color_14 = c.brteal
		vim.g.terminal_color_15 = c.brwhite
	end
end

return M
