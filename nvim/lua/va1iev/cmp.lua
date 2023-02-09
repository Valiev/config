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
