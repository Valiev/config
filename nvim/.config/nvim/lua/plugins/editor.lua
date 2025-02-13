return {
  {
    'echasnovski/mini.nvim', version = '*',
    config = function()
      require('mini.ai').setup();
      require('mini.indentscope').setup();
      require('mini.cursorword').setup();
      require('mini.surround').setup()
      -- require('mini.animate').setup();
    end
  },
  {'christoomey/vim-tmux-navigator'},
  -- {
  --   'kylechui/nvim-surround',
  --   config = function()
  --     require('nvim-surround').setup({})
  --     -- todo: check integration with
  --     -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  --   end
  -- },
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
  {'mbbill/undotree'},
  {'tpope/vim-repeat'},
  {'tpope/vim-obsession'},
  {'tpope/vim-speeddating'},
  {'junegunn/vim-easy-align'},
  {'junegunn/vim-after-object'},
  {
    'folke/todo-comments.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    opts = {
      signs = true,
      highlight = {
        pattern = { [[.*<(KEYWORDS)\s*:]], [[.*(KEYWORDS)\s*]] },
      },
      search = {
        pattern = [[\b(KEYWORDS):\b]]
      },
    },
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
