return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)
	end,
}
