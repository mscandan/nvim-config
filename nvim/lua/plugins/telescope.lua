return {
  "nvim-telescope/telescope.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "kyazdani42/nvim-web-devicons" },
  },

  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')
    local fb_actions = require("telescope").extensions.file_browser.actions

    local function telescope_buffer_dir()
      return vim.fn.expand("%:p:h")
    end

    telescope.setup({
      defaults = {
        preview = {
          treesitter = false,
        },
        mappings = {
          n = {
            ["q"] = actions.close,
          },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          hidden = true,
          no_ignore = false,
          respect_gitignore = true,
          grouped = true,
          initial_mode = "normal",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            -- your custom insert mode mappings
            ["i"] = {
              ["<C-w>"] = function()
                vim.cmd("normal vbd")
              end,
            },
            ["n"] = {
              -- your custom normal mode mappings
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")

    vim.keymap.set("n", ";f", function()
      builtin.find_files({
        no_ignore = false,
        respect_gitignore = true,
        hidden = true,
        grouped = true,
      })
    end)
    vim.keymap.set("n", ";r", function()
      builtin.live_grep()
    end)
    vim.keymap.set("n", "\\\\", function()
      builtin.buffers()
    end)
    vim.keymap.set("n", ";t", function()
      builtin.help_tags()
    end)
    vim.keymap.set("n", ";;", function()
      builtin.resume()
    end)
    vim.keymap.set("n", ";e", function()
      builtin.diagnostics()
    end)
    vim.keymap.set("n", "sf", function()
      telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = true,
        hidden = true,
        grouped = true,
        initial_mode = "normal",
      })
    end)
  end
}
