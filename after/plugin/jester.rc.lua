local status, jester = pcall(require, "jester")

if not status then return end

jester.setup({
  cmd = "./node_modules/.bin/jest -t '$result' -- $file", -- run command
  identifiers = { "test", "it" },                         -- used to identify tests
  prepend = { "describe" },                               -- prepend describe blocks
  expressions = { "call_expression" },                    -- tree-sitter object used to scan for tests/describe blocks
  path_to_jest_run = 'jest',                              -- used to run tests
  path_to_jest_debug = './node_modules/.bin/jest',        -- used for debugging
  terminal_cmd = ":vsplit | terminal",                    -- used to spawn a terminal for running tests, for debugging refer to nvim-dap's config
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Space>tc', '<Cmd>lua require("jester").run()<CR>', opts)
vim.keymap.set('n', '<Space>ta', '<Cmd>lua require("jester").run_file()<CR>', opts)
