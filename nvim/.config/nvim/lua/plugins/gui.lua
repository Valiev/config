return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'},
    config = function()
      require('lualine').setup({
        options = {
          disabled_filetypes = {
            packer = {},
            NVimTree = {},
          },
          -- theme = vim.g.lualine_theme,
          options = { fmt = string.lower },
          sections = {
            lualine_a = {
              {
                'diagnostics',
                sources = { 'nvim_diagnostic', 'nvim_lsp' },
                sections = { 'error', 'warn', 'info', 'hint' },
                symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                      colored = true,           -- Displays diagnostics status in color if set to true.
      update_in_insert = false, -- Update diagnostics in insert mode.
      always_visible = false,   -- Show diagnostics even if there are none.
              },
            },
          }
        }
      })
    end
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({
        options = {
          offsets = {
            {
              filetype = "NvimTree", text = "", padding = 1
            }
          }
        }
      })
    end
  },
  {'nvim-tree/nvim-web-devicons'},
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        update_cwd = true,
        view = {
          adaptive_size = true,
          -- FIXME
          -- mappings = {
            --   list = {
              --     { key = "u", action = "dir_up" },
              --     { key = "l", action = "edit" },
              --     { key = "h", action = "parent_node" },
              --   },
              -- },
            },
            renderer = {
              group_empty = true,
            },
            filters = {
              dotfiles = true,
            },
          })
        end
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    cmd = "Trouble",
    config = function()
      require("trouble").setup({
        auto_preview = true,
        auto_close = true,
        follow = true,
        position = "top",
        mode = "workspace_diagnostics",
        use_diagnostic_signs = true,
        -- multiline = true,
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      })
    end,
  }
}
