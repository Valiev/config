return {
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({})
      -- todo: check integration with
      -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end
  },
  {'ntpeters/vim-better-whitespace'},
  {'rmagatti/alternate-toggler'},
  {'powerman/vim-plugin-ruscmd'},
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({
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
    'folke/todo-comments.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    -- TODO
    -- HACK
  },

  -- movement

  {
    'phaazon/hop.nvim',
    config = function()
      require('hop').setup({
        keys = 'qweroiuasdflkjghvn'
      })
    end
  },
  {
    'karb94/neoscroll.nvim',
    config = function ()
      require('neoscroll').setup({})
    end
  },
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup({})
    end
  },
}
