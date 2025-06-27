return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason-null-ls").setup({
			ensure_installed = {
				"eslint_d",
				"prettier",
				"stylua",
			},
			automatic_installation = true,
		})
		local null_ls_status, null_ls = pcall(require, "null-ls")

		if not null_ls_status then
			return
		end

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports,
			},
		})
	end,
}
