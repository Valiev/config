-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd("packadd packer.nvim")


return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
  use('nyoom-engineering/oxocarbon.nvim')
  use('Shatur/neovim-ayu')
  -- use({"juliosueiras/vim-terraform-completion",
  --   requires = {
  --     'hashivim/vim-terraform',
  --     'vim-syntastic/syntastic'
  --   }
  -- })
  use("tpope/vim-surround")
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
  use('ntpeters/vim-better-whitespace')

  use('rmagatti/alternate-toggler')

  use({
    "phaazon/hop.nvim",
    branch = "v2"
  })

  use {
    "windwp/nvim-autopairs",
  }

  use('gcmt/wildfire.vim')
  -- use {
  --   "folke/todo-comments.nvim",
  --   requires = "nvim-lua/plenary.nvim"
  -- }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }


  use('savq/melange-nvim')
  use("EdenEast/nightfox.nvim")
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use({'nvim-telescope/telescope-project.nvim',
    requires = { "nvim-telescope/telescope-file-browser.nvim" }
  })



  -- TODO play around with treesetter playground
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/undotree')
  use('tpope/vim-repeat')

  use('junegunn/vim-easy-align')
  use('junegunn/vim-after-object')

  -- Git
  use('lewis6991/gitsigns.nvim')
  use('tpope/vim-fugitive')
  use('tpope/vim-rhubarb')
  use('junegunn/gv.vim')

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

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }
end)
