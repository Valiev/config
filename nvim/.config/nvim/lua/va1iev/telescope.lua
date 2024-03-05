-- local builtin = require("telescope.builtin")
local actions = require('telescope.actions')
local telescope = require('telescope')
-- local trouble = require("trouble.providers.telescope")
-- telescope.load_extension('file_browser')


telescope.setup{
  defaults = {
    wrap_results = true,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown"
    },
    live_grep = {
      theme = "ivy"
    },
    git_files = {
      theme = "dropdown"
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
    project = {
      base_dirs = {
        "~/dev/",
	      {"~/dev/joom", max_depth = 5}
      },
      order_by = "recent",
      search_by = "title",
      sync_with_nvim_tree = true,
    }
  }
}

telescope.load_extension('fzf')
telescope.load_extension('project')
