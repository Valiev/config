return {
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
      -- todo: check integration with
      -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end
  },
  {'ntpeters/vim-better-whitespace'},
  {'rmagatti/alternate-toggler'},
  {"powerman/vim-plugin-ruscmd"},
  -- {
  --   'Wansmer/langmapper.nvim',
  --   lazy = false,
  --   priority = 1, -- High priority is needed if you will use `autoremap()`
  --   config = function()
  --     require('langmapper').setup({--[[ your config ]]})
  --   end,
  -- },
  {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
      })
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {'karb94/neoscroll.nvim'},
  {'mbbill/undotree'},
  {'tpope/vim-repeat'},
  {'tpope/vim-obsession'},
  {'junegunn/vim-easy-align'},
  {'junegunn/vim-after-object'},
  {
    "folke/todo-comments.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    -- TODO
    -- HACK
  },

    -- movement

    {
      "phaazon/hop.nvim",
      config = function()
        require('hop').setup({
          keys = "qweroiuasdflkjghvn"
        })
      end
    },
    {
      "karb94/neoscroll.nvim",
      config = function ()
        require('neoscroll').setup({})
      end
    }
  }
