return {
  -- TELESCOPE
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  {
    "stevearc/dressing.nvim"
  },
  {
    "ziontee113/icon-picker.nvim",
    opts = function()
      require("icon-picker").setup({
        -- disable_legac_commands = true
      })
    end,
  },
  {
     'jvgrootveld/telescope-zoxide',
      dependencies = { "nvim-telescope/telescope.nvim" },
  }
}
