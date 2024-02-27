-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- fuzzy finding
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{ "kyazdani42/nvim-web-devicons" },
		},
	})

	-- git
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")
	use("tpope/vim-fugitive")

	-- colorschema
	use("navarasu/onedark.nvim")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			{ "lukas-reineke/lsp-format.nvim" },
			{ "nvim-treesitter/nvim-treesitter-context" },
			{ "jose-elias-alvarez/null-ls.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})

	-- comments
	use("numToStr/Comment.nvim")

	-- autopairs
	use("windwp/nvim-autopairs")

	--golang
	use("fatih/vim-go")

	-- debug
	use("mfussenegger/nvim-dap")

	-- testing
	use("David-Kunz/jester")

	use("dmmulroy/ts-error-translator.nvim")
end)
