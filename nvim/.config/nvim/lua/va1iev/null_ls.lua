local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
-- local completion = null_ls.builtins.completion
local ca = null_ls.builtins.code_actions


null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,
    -- Terraform
    formatting.terraform_fmt,
    -- JS
    diagnostics.eslint,
    -- Yaml
    formatting.yamlfmt,
    -- Python
    diagnostics.flake8,
    formatting.black,
    -- ca.flake8,
    -- null_ls.builtins.formatting.black,
    -- null_ls.builtins.formatting.hclfmt,
    -- formatting.black.with({
    --   extra_args = { "--fast" }
    -- }),
    -- Spelling
    -- completion.spell,
  }
})
