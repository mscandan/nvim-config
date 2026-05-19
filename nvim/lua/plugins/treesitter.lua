return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false, -- new nvim-treesitter does not support lazy loading
	build = ":TSUpdate",
	config = function()
		-- setup() only accepts install_dir in the new rewrite; no configs/highlight/indent here
		require("nvim-treesitter").setup()

		-- Install parsers (no-op if already installed)
		require("nvim-treesitter").install({
			"vimdoc", "c", "rust", "tsx", "toml", "json", "yaml",
			"css", "html", "lua", "scss", "go", "typescript", "javascript", "templ",
		})

		-- Highlighting is now opt-in per filetype via vim.treesitter.start()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"typescript", "typescriptreact", "javascript", "javascriptreact",
				"lua", "go", "rust", "c", "html", "css", "scss",
				"json", "yaml", "toml", "vimdoc", "markdown", "templ",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})

		-- Treesitter-based indentation
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"typescript", "typescriptreact", "javascript", "javascriptreact",
				"lua", "go", "rust", "c", "html", "css", "scss",
				"json", "yaml", "toml", "templ",
			},
			callback = function()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
