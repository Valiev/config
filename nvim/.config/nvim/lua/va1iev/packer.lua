-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd("packadd packer.nvim")


return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')


  -- PRETTY VIM ENHANCEMENTS
  -- use({'mhinz/vim-startify'})
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })
  use({'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'})
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
    }
    -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })
  use({
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  })
  -- use({'kevinhwang91/nvim-bqf'})

  -- use({"juliosueiras/vim-terraform-completion",
  --   requires = {
  --     'hashivim/vim-terraform',
  --     'vim-syntastic/syntastic'
  --   }
  -- })

  -- MOVEMENTS
  use({
    "phaazon/hop.nvim",
    branch = "v2"
  })


  -- TODO play around with treesetter playground
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('HiPhish/nvim-ts-rainbow2')
  use {"akinsho/toggleterm.nvim", tag = '*'}


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
  use({'romgrk/fzy-lua-native', run = 'make'})
  use("hrsh7th/nvim-cmp")
  use({
    'tzachar/cmp-fuzzy-buffer',
    requires = {
      'hrsh7th/nvim-cmp',
      'tzachar/fuzzy.nvim'
    }
  })


  use {'kevinhwang91/nvim-bqf', ft = 'qf'}
  use {'junegunn/fzf',
    run = function()
      vim.fn['fzf#install']()
    end
  }
  use({
    "stevearc/oil.nvim",
    -- config = function()
    --   require("oil").setup()
    -- end,
  })

  -- use({"ten3roberts/qf.nvim",
  --   config = function()
  --     require'qf'.setup{}
  --   end
  -- })

  -- CODING: PY
  -- use({
  --   'linux-cultist/venv-selector.nvim',
  --   requires = {
  --     "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim"
  --   }
  -- })
  use {
    "klen/nvim-test",
    config = function()
      require('nvim-test').setup()
    end
  }
  -- AI

  use { "David-Kunz/gen.nvim" }

  -- SESSION
  use {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false
      }
    }
  end
}

end)
