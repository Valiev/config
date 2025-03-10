return {
  -- TREESITTER
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        -- A list of parser names, or "all"
        ensure_installed = { "c", "lua", "rust", "python", "json"},
        -- ensure_installed = "maintained",
        enable = true,
        line_number = true,
        mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
        indent = {
          enable = false,
        },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,
        highlight = {
          -- `false` will disable the whole extension
          enable = true,
          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
        -- rainbow = {
          --   enable = true,
          --   -- list of languages you want to disable the plugin for
          --   disable = { 'jsx', 'cpp' },
          --   -- Which query to use for finding delimiters
          --   query = 'rainbow-parens',
          --   -- Highlight the entire buffer all at once
          --   strategy = require('ts-rainbow').strategy.global,
          -- },
          playground = {
            enable = true,
            disable = {},
            updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
            persist_queries = false, -- Whether the query persists across vim sessions
            keybindings = {
              toggle_query_editor = 'o',
              toggle_hl_groups = 'i',
              toggle_injected_languages = 't',
              toggle_anonymous_nodes = 'a',
              toggle_language_display = 'I',
              focus_language = 'f',
              unfocus_language = 'F',
              update = 'R',
              goto_node = '<cr>',
              show_help = '?',
            }
          }
        }

      end
 },
 {'nvim-treesitter/playground'},
 {'HiPhish/nvim-ts-rainbow2'},

 -- LSP
 { "nvimtools/none-ls.nvim" },
 {
      'hrsh7th/nvim-cmp',
      config = function ()
        -- start
        local cmp = require('cmp')
        -- local lspkind = require('lspkind')
        local M = cmp.mapping
        vim.opt.completeopt = "menu,menuone,noselect"
        cmp.setup({
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            -- { name = 'fuzzy_buffer' },
            {
              name = 'buffer',
              option = {
                get_bufnrs = function()
                  return vim.api.nvim_list_bufs()
                end
              }
            },
            { name = 'path' },
          }),
          mapping = M.preset.insert({
            ["<C-k>"] = M.select_prev_item(),
            ["<C-j>"] = M.select_next_item(),
            ["<C-p>"] = M.complete(),
            ["<C-h>"] = M.abort(),
            ["<C-l>"] = M.confirm({ select = true })
          }),
          -- formatting = {
            --   format = lspkind.cmp_format({
              --     mode = 'symbol', -- show only symbol annotations
              --     maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
              --     ellipsis_char = '...',
              --     -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
              --   })
              -- }
            })


            -- end
          end
 },
 {
   'VonHeikemen/lsp-zero.nvim',
   dependencies = {
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
  },
  {
    'romgrk/fzy-lua-native',
    build = 'make'
  },
  { 'hrsh7th/nvim-cmp' },
  {
    'tzachar/cmp-fuzzy-buffer',
    dependencies = {
      'hrsh7th/nvim-cmp',
      'tzachar/fuzzy.nvim'
    }
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup({})
    end
  },
  {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python"
    }
  },
}
