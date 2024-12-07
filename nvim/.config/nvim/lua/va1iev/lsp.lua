local mason = require('mason')
mason.setup()
local builtin = require('telescope.builtin')
-- local telescope = require('telescope')

local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup({
  ensure_installed = {
    -- "terraformls",
    "tflint",
    "lua_ls"
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>co', vim.lsp.buf.code_action, {})
  -- vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local lsp = require('lsp-zero')
-- lsp.preset('recommended')
lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    source = "always"
  },
})

local lspconfig = require('lspconfig')
lspconfig["lua_ls"].setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      -- respect `vim` global object
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lspconfig['jedi_language_server'].setup({
  on_attach = on_attach
})

lspconfig['pyre'].setup({
  on_attach = on_attach
})

lspconfig['pylsp'].setup({
  on_attach = on_attach
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig["yamlls"].setup({
  capabilities = capabilities,
  settings = {
    yaml = {
      completion = true,
      trace = {
        server = "verbose"
      },
      schemas = {
        kubernetes = "/*.yaml",
        -- ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.20.13/all.json"] = "/*.yaml",
        -- ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        -- ["http://json.schemastore.org/kustomization"] = "kustomization.yaml",
      }
    }
  }
})
--
-- lspconfig["tflint"].setup({
--   root_dir = util.root_pattern('*.tf', 'terragrunt.hcl'),
--   cmd = {'tflint', '--langserver' },
--   -- git_dir .. '/.tflint.hcl'},
--   settings = {
--     terraform = {
--     }
--   }
-- })

-- local saga = require('lspsaga')
-- -- TODO
-- saga.setup({
--   move_in_saga = { prev = "<C-k>", next = "<C-j>" },
--   finder_action_keys = {
--     open = "<CR>"
--   },
--   definition_action_keys = {
--     edit = "<CR>"
--   }
-- })

-- local lspkind = require('lspkind')
-- lspkind.init({
--   mode = 'symbol',
--   preset = 'codicons',
-- })

-- lsp.nvim_workspace()
-- lsp.setup()

local util = require('lspconfig.util')
-- lspconfig["terraform_lsp"].setup({
--   on_attach = on_attach,
--   capabilities = capabilities
-- })
  -- root_dir = util.root_pattern('terragrunt.hcl')

lspconfig["terraformls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- root_dir = util.root_pattern('terragrunt.hcl')
})
-- })

-- require('lspconfig').terraformls.setup({
-- })
-- require('lspconfig').tflint.setup({
-- })
--
-- require('lspconfig').tflint.setup()

