local telescope = require("telescope.builtin")
local Func = require('va1iev.func')
-- local map = Func.map
local nmap = Func.nmap
local imap = Func.imap
local vmap = Func.imap
local xmap = Func.xmap


vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- quick exit from imput mode

imap("jk", "<Esc>", opts)
imap("JK", "<Esc>", opts)
imap("Jk", "<Esc>", opts)
imap("jK", "<Esc>", opts)

-- movement in insert mode
imap("<C-h>", "<C-o>h", opts)
imap("<C-l>", "<C-o>a", opts)
imap("<C-j>", "<C-o>j", opts)
imap("<C-k>", "<C-o>k", opts)

-- Keep visual indent
-- TODO: fix it

-- vmap("<", '<gv' )
-- vmap(">", '>gv\"' )

-- vmap("<leader>y", '"+y')
nmap("<leader>y",  '"+yg_')
nmap("<leader>yy",  '"+yy')
xmap("<leader>y",  '"*y')


-- vnoremap  <leader>y  "+y

-- `x` not change buffer
nmap("x", "_x")

-- No operation / Hard-mode
nmap("Q", "<Nop>")
nmap("<UP>", "<Nop>")
nmap("<DOWN>", "<Nop>")
nmap("<LEFT>", "<Nop>")
nmap("<RIGHT>", "<Nop>")
nmap("<Leader>ww", ":w<CR>")
nmap("<Leader>wq", ":wq<CR>")
nmap("<Leader>q", ":q<CR>")
nmap("<Leader>hh", ":set cursorline!<CR>")
nmap("<Tab>", ":NvimTreeToggle<CR>")
nmap("<Leader>t", ":TroubleToggle<CR>")

-- buffers
nmap("<Leader>d", ":bdelete<CR>")
nmap("H", ":bprev<CR>")
nmap("L", ":bnext<CR>")
-- Change search order
nmap("#", "*")
nmap("*", "#")

-- Telescope
vim.keymap.set("n", "<leader>pf", telescope.find_files, {})
vim.keymap.set("n", "<C-p>", telescope.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	telescope.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader><leader>", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
vim.keymap.set("n", "<leader>gg", telescope.git_files, {})
vim.keymap.set("n", "<leader>gb", telescope.git_branches, {})
vim.keymap.set("n", "<leader>gc", telescope.git_commits, {})
vim.keymap.set("n", "<leader>gs", telescope.git_status, {})
vim.keymap.set("n", "<leader>bb", telescope.buffers, {})

-- Diagnostic
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})

-- Happy Hopping
nmap('<Leader>hw', ":HopWord<CR>")
nmap('<Leader>hl', ":HopLine<CR>")
nmap('<Leader>k', ":HopVerticalBC<CR>")
nmap('<Leader>j', ":HopVerticalAC<CR>")

-- Undo
vim.keymap.set("n", "<leader>u" , vim.cmd.UndotreeToggle, {})

-- Toggler
nmap('-', ":ToggleAlternate<CR>")

