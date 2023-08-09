local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
  return
end


treesitter.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "scss",
    "go",
    "typescript",
    "javascript",
    "tsx",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  highlight = {
    enable = true,
    disable = {},

    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
    disable = {},
  },

  autotag = {
    enable = true,
  }
}


local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

local tsContextStatus, tsContext = pcall(require, 'treesitter-context')

if not tsContextStatus then return end

tsContext.setup {
  enable = true,        -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0,        -- How many lines the window should span. Values <= 0 mean no limit.
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  patterns = {          -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
    -- For all filetypes
    -- Note that setting an entry here replaces all other patterns for this entry.
    -- By setting the 'default' entry below, you can control which nodes you want to
    -- appear in the context window.
    default = {
      'class',
      'function',
      'method',
      'for',
      'while',
      'if',
      'switch',
      'case',
    },
    -- Patterns for specific filetypes
    -- If a pattern is missing, *open a PR* so everyone can benefit.
    tex = {
      'chapter',
      'section',
      'subsection',
      'subsubsection',
    },
    rust = {
      'impl_item',
      'struct',
      'enum',
    },
    scala = {
      'object_definition',
    },
    vhdl = {
      'process_statement',
      'architecture_body',
      'entity_declaration',
    },
    markdown = {
      'section',
    },
    elixir = {
      'anonymous_function',
      'arguments',
      'block',
      'do_block',
      'list',
      'map',
      'tuple',
      'quoted_content',
    },
    json = {
      'pair',
    },
    yaml = {
      'block_mapping_pair',
    },
  },
  exact_patterns = {
    -- Example for a specific filetype with Lua patterns
    -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
    -- exactly match "impl_item" only)
    -- rust = true,
  },

  -- [!] The options below are exposed but shouldn't require your attention,
  --     you can safely ignore them.

  zindex = 20,     -- The Z-index of the context window
  mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
}
