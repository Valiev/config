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
-- lsp.set_preferences({
--   configure_diagnostics = false,
--   configure_diagnostics2 = false
-- })
lsp.setup()

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
lspconfig["yamlls"].setup({
  settings = {
    yaml = {
      completion = true,
      trace = {
        server = "verbose"
      },
      schemas = {
        -- kubernetes = "globPattern",
        ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.20.13/all.json"] = "/*.yaml",
        -- ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        -- ["http://json.schemastore.org/kustomization"] = "kustomization.yaml",
      }
    }
  }
})

-- vim.diagnostic.config({
--   virtual_text = true,
--   signs = false,
--   update_in_insert = false,
--   underline = false,
--   severity_sort = false,
--   float = true,
-- })

-- vim.diagnostic.config({
--   signs = true,
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


-- vim.diagnostic.config({
  -- virtual_text = true
-- })
-- vim.diagnostic.config({
  -- virtual_text = true,
  -- signs = false,
--   update_in_insert = false,
--   underline = false,
--   severity_sort = false,
--   float = true,
-- })

-- local util = require('lspconfig.util')


-- local warn = {}
-- lsp.preset('recommended')
-- })


-- lsp.nvim_workspace()
-- lsp.setup()
-- require('lspconfig').terraformls.setup({
  -- root_dir = util.root_pattern('terragrunt.hcl')
-- })
-- require('lspconfig').tflint.setup({
  -- root_dir = util.root_pattern('terragrunt.hcl')
-- })
--
-- require('lspconfig').tflint.setup()

