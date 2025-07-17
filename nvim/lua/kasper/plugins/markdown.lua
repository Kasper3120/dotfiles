return {
	"MeanderingProgrammer/render-markdown.nvim",
	-- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	config = function()
		local render_markdown = require("render-markdown")
		render_markdown.setup({})

		-- togle render markdown in a buffer
		vim.keymap.set("n", "<leader>mt", render_markdown.buf_toggle())
		-- togle render markdown globally
		vim.keymap.set("n", "<leader>mT", render_markdown.toggle())
	end,
}
