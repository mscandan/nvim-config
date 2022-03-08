local tree_sitter_status, tree_sitter = pcall(require, "nvim-treesitter.configs")
if not tree_sitter_status then
  return
end

tree_sitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = false,
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
    "go",
    "ruby"
  },
}

