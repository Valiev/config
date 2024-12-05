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
    {'windwp/nvim-autopairs'},
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
  -- {
  --   "folke/todo-comments.nvim",
  --   requires = "nvim-lua/plenary.nvim"
  -- }
}
