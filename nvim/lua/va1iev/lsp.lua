local mason = require('mason')
mason.setup()

local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup({
  ensure_installed = {
    "pyright",
    "terraformls",
    "tflint",
    "sumneko_lua"
  }
})

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

local lspconfig = require('lspconfig')
lspconfig["sumneko_lua"].setup({
  settings = {
    Lua = {
      -- respect `vim` global object
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
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

-- local util = require('lspconfig.util')
lspconfig["terraform_lsp"].setup({
  capabilities = capabilities,
  -- root_dir = util.root_pattern('terragrunt.hcl')
})

-- lspconfig["terraformls"].setup({
--   capabilities = capabilities,
--   root_dir = util.root_pattern('terragrunt.hcl')
-- })

-- require('lspconfig').terraformls.setup({
-- })
-- require('lspconfig').tflint.setup({
-- })
--
-- require('lspconfig').tflint.setup()

