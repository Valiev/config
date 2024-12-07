local autocmd = vim.api.nvim_create_autocmd

local config = {
  guicursor = "",
  -- numbers
  number = true,
  relativenumber = true,
  signcolumn = 'yes',

  -- indent
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  ignorecase = true,
  smartcase = true,


  wrap = false,
  -- this is a very very very long line, please disreguad it it was wrapped after 80 symboles
  showbreak='‣',
  breakindent = true,
  linebreak = true,
  textwidth = 80,

  swapfile = false,
  backup = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,
  hlsearch = true,
  incsearch = true,
  showmatch = true,

  --
  clipboard = "unnamed",

  -- gui
  termguicolors = true,

  -- margin
  scrolloff = 4,

  -- what?
  updatetime = 50,
  ruler = true,

  -- what?
  colorcolumn = "80"
}

for key, value in pairs(config) do
  vim.opt[key] = value
end

vim.g.lualine_theme = 'solarized'
-- consider "-" a part of "word"
vim.opt.iskeyword:append("-")

local Buffers = {"BufNewFile", "BufRead"}

-- autocmd("CursorHold", {
  -- pattern = "*",
  -- command = "lua vim.diagnostic.show_line_diagnostics()"
-- })

vim.g.strip_whitespace_confirm = 0
autocmd("FileType", {
  pattern = "*" ,
  command = "EnableStripWhitespaceOnSave"
})

autocmd("FileType", {
  pattern="python",
  command = "setlocal tabstop=4"
})

-- Enabled spell checker for commit messages
autocmd(Buffers, {
  pattern = "COMMIT_EDITMSG" ,
  command = "setlocal spell"
})

autocmd(Buffers, {
  pattern = "COMMIT_EDITMSG" ,
  command = "set ft=gitcommit"
})

autocmd(Buffers, {
  pattern = {
    "Jenkinsfile",
    "Jenkinsfile.*",
    "*.jenkinsfile"
  },
  command = "set ft=groovy"
})

-- Save and restore cursor position
autocmd("BufWinLeave", {
  pattern = "*.*" ,
  command = "mkview"
})

autocmd("BufWinEnter", {
  pattern = "*.*" ,
  command = "silent! loadview"
})

-- autocmd("BufWritePre", {
--   pattern = {"*.tf", "*.tfvars"},
--   callback = vim.lsp.buf.format(),
-- })

-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
--   pattern = {"*.tf", "*.tfvars"},
--   callback = function() vim.lsp.buf.format() end,
-- })

