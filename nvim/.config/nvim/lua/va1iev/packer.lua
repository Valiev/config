-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd("packadd packer.nvim")


return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')


  -- PRETTY VIM ENHANCEMENTS
  -- use({'mhinz/vim-startify'})
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
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


  use {"akinsho/toggleterm.nvim", tag = '*'}
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


end)
