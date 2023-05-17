-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd("packadd packer.nvim")


return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- COLORS
  use('christoomey/vim-tmux-navigator')
  use('nyoom-engineering/oxocarbon.nvim')
  use('Shatur/neovim-ayu')
  use('shaunsingh/solarized.nvim')
  use('savq/melange-nvim')
  use("EdenEast/nightfox.nvim")
  use('folke/tokyonight.nvim')

  -- PRETTY VIM ENHANCEMENTS
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })
  use({'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'})
  use('kyazdani42/nvim-web-devicons')
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })
  use({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })
  use({
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  })

  -- use({"juliosueiras/vim-terraform-completion",
  --   requires = {
  --     'hashivim/vim-terraform',
  --     'vim-syntastic/syntastic'
  --   }
  -- })

  -- GENERAL EDITOR FEATURES
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup({})
      -- todo: check integration with
      -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end
    })
  use('ntpeters/vim-better-whitespace')
  use('rmagatti/alternate-toggler')
  use('windwp/nvim-autopairs')
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use('karb94/neoscroll.nvim')
  use('mbbill/undotree')
  use('tpope/vim-repeat')
  use('tpope/vim-obsession')
  use('junegunn/vim-easy-align')
  use('junegunn/vim-after-object')
  -- use {
  --   "folke/todo-comments.nvim",
  --   requires = "nvim-lua/plenary.nvim"
  -- }

  -- MOVEMENTS
  use({
    "phaazon/hop.nvim",
    branch = "v2"
  })

  -- TELESCOPE
  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  })
  use({
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
    -- run = 'make -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && make --build build --config Release && make --install build --prefix build'
  })
  use({'nvim-telescope/telescope-project.nvim',
    requires = { "nvim-telescope/telescope-file-browser.nvim" }
  })

  -- TODO play around with treesetter playground
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('HiPhish/nvim-ts-rainbow2')
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- GIT
  use('lewis6991/gitsigns.nvim')
  use('tpope/vim-fugitive')
  use('tpope/vim-rhubarb')
  use('junegunn/gv.vim')

  -- LSP
  use("jose-elias-alvarez/null-ls.nvim")
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      -- {'glepnir/lspsaga.nvim'},
      {'onsails/lspkind.nvim'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use {'romgrk/fzy-lua-native', run = 'make'}
  use("hrsh7th/nvim-cmp")
  use {'tzachar/cmp-fuzzy-buffer', requires = {'hrsh7th/nvim-cmp', 'tzachar/fuzzy.nvim'}}

  -- CODING: PY
  use({
    'linux-cultist/venv-selector.nvim',
    requires = {
      "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim"
    }
  })

end)
