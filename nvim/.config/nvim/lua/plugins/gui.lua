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
          theme = vim.g.lualine_theme
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
  },
}
