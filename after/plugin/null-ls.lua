local mason_status, mason_null_ls = pcall(require, "mason-null-ls")

if not mason_status then
	return
end

mason_null_ls.setup({
	ensure_installed = {
		"eslint_d",
		"prettierd",
		"stylua",
	},
	automatic_installation = true,
	-- automatic_setup = false,
})

local null_ls_status, null_ls = pcall(require, "null-ls")

if not null_ls_status then
	return
end

local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = true,
	sources = {
		code_actions.eslint_d,
		formatting.prettierd,
		formatting.eslint_d,

		formatting.stylua,
		formatting.rustfmt,
	},
})
