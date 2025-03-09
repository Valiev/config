local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
-- local completion = null_ls.builtins.completion
local ca = null_ls.builtins.code_actions


null_ls.setup({
  sources = {
    ca.gitsigns,
    diagnostics.eslint,
    diagnostics.flake8,
    diagnostics.ruff,
    formatting.prittier,
    formatting.ruff,
    formatting.yamlfmt,

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
