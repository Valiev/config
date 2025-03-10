local builtin = require("telescope.builtin")
local actions = require('telescope.actions')

local telescope = require('telescope')
local fb_actions = require('telescope').extensions.file_browser.actions

local trouble = require("trouble.providers.telescope")
telescope.load_extension('file_browser')


telescope.setup{
  defaults = {
    wrap_results = true,
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-/>"] = "which_key",
        ["<C-l>"] = "select_default",
      }
    }
  },
  pickers = {
    find_files = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    git_files = {
      theme = "ivy"
    },
    file_browser = {
      theme = "ivy"
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    file_browser = {
      theme = "dropdown",
      mappings = {
        ["i"] = {
          ["<C-o>"] = fb_actions.goto_parent_dir,
          ["<C-g>"] = fb_actions.goto_home_dir,
        }
      }
    }
    -- project = {
    --   base_dirs = {
    --     "~/dev/",
    --   },
    --   order_by = "recent",
    --   search_by = "title",
    --   sync_with_nvim_tree = true,
    -- }
  }
}

telescope.load_extension("file_browser")

-- telescope.load_extension('fzf')
-- telescope.load_extension('project')
