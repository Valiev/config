return {
  -- TELESCOPE
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
  },
  {'nvim-telescope/telescope-project.nvim',
    dependencies = { "nvim-telescope/telescope-file-browser.nvim" }
  },
  {"stevearc/dressing.nvim"},
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
    opts = function()
      require("telescope").load_extension("zoxide")
    end
  }
}
