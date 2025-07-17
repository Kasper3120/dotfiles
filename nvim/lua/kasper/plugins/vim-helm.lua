vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.tpl,*.yaml",
	callback = function()
		if vim.fn.search("{{.*}}", "nw") ~= 0 then
			vim.bo.filetype = "helm"
		end
	end,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "templates/*.yaml", "templates/*.tpl", "charts/**/*.yaml" },
	callback = function()
		vim.bo.filetype = "helm"
	end,
})
return {
	"towolf/vim-helm",
	ft = { "helm" },
}
