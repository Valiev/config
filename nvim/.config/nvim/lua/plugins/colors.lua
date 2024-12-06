-- FIXME: color depends on scheme
return {
	{'christoomey/vim-tmux-navigator'},
  	{'nyoom-engineering/oxocarbon.nvim'},
  	{
      'Shatur/neovim-ayu',
      config = function()
        require("ayu").setup({
          mirage = false,
          terminal = true,
        })
       end
  },
  	{'shaunsingh/solarized.nvim'},
  	{'savq/melange-nvim'},
  	{"EdenEast/nightfox.nvim"},
  	{'folke/tokyonight.nvim'},
  	{'jonstoler/werewolf.vim'},
  {
    "loctvl842/monokai-pro.nvim",
    opts = function()
      require("monokai-pro").setup({
       filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
      })
    end
  }
}
