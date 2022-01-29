local tree_sitter_status, tree_sitter = pcall(require, "nvim-treesitter")
if not tree_sitter_status then
  return
end

tree_sitter.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "javascript",
    "typescript",
    "jsonc",
    "json5",
    "lua",
    "vim",
    "go"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
