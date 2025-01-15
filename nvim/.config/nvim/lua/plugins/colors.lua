-- FIXME: color depends on scheme
return {
  {'nyoom-engineering/oxocarbon.nvim'},
  {'marko-cerovac/material.nvim'},
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
  {'EdenEast/nightfox.nvim'},
  {'folke/tokyonight.nvim'},
  {
    'sheharyarn/werewolf.nvim',
    config = function()
      require('werewolf').setup({
        system_theme = {
          on_change = function(theme)
            -- Apply custom config based on new `theme` value
            if theme == 'Dark' then
              -- vim.g.material_style = 'oceanic'
              vim.o.background = 'dark'
              vim.cmd.colorscheme('ayu-mirage')
              vim.g.lualine_theme = 'solarized_dark'
            else
              vim.g.material_style = 'lighter'
              vim.o.background = 'light'
              vim.g.solarized_termcolors = 256
              vim.g.lualine_theme = 'solarized_light'
              vim.cmd.colorscheme('solarized')
            end
          end,
          -- Change the check interval (optional)
          period = 1000,
        }
      })
    end
  },
  {
    'loctvl842/monokai-pro.nvim',
    opts = function()
      require("monokai-pro").setup({
        filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
      })
    end
  },
  {'catppuccin/nvim'},
}
