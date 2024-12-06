local telescope = require("telescope.builtin")
local telescope_ext = require("telescope").extensions
-- local ts_jump = require('va1iev.ts_jump')
-- local IconPicker = require('icon-picker')
local Func = require('helpers.func')
-- local map = Func.map
local nmap = Func.nmap
local imap = Func.imap
-- local vmap = Func.imap
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

-- Leader mappings
nmap("<Leader>ww", ":w<CR>")
nmap("<Leader>wq", ":wq<CR>")
nmap("<Leader>bd", ":bd<CR>")
nmap("<Leader>qq", ":q<CR>")
nmap("<Leader>hh", ":set cursorline!<CR>")
nmap("<Leader><Tab>", ":NvimTreeToggle<CR>")
nmap("<Leader>tt", ":Trouble diagnostics toggle filter.buf=0<CR>")
nmap("<Leader>ta", ":Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>cf", function()
  vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end)
-- buffers
-- nmap("<Leader>d", ":bdelete<CR>")
nmap("H", ":bprev<CR>")
nmap("L", ":bnext<CR>")
-- Change search order
nmap("#", "*")
nmap("*", "#")

-- Telescope
vim.keymap.set("n", "<C-p>", telescope_ext.project.project, {})
vim.keymap.set("n", "<leader>cd", telescope_ext.zoxide.list, {})
vim.keymap.set("n", "<leader>ps", function()
	telescope.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
-- vim.keymap.set("n", "<leader>fl", telescope.find_files, {
--   cwd = vim.fn.expand('%:p')
-- })
vim.keymap.set("n", "<leader><leader>", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
vim.keymap.set("n", "<leader>dd", telescope.diagnostics, {})
vim.keymap.set("n", "<leader>fw", function()
  telescope.live_grep({default_text = vim.fn.expand("<cword>")})
end, {})
vim.keymap.set("n", "<leader>gg", telescope.git_files, {})
vim.keymap.set("n", "<leader>gb", telescope.git_branches, {})
-- vim.keymap.set("n", "<leader>gc", telescope.git_commits, {})
vim.keymap.set("n", "<leader>gs", telescope.git_status, {})
vim.keymap.set("n", "<leader>bb", telescope.buffers, {})
vim.keymap.set("n", '<C-">', telescope.buffers, {})

-- AI
vim.keymap.set({ 'n', 'v'}, '<leader>aa', ':Gen<CR>')

-- Git hunks
nmap('<Leader>gj', ":Gitsigns next_hunk<CR>")
nmap('<Leader>gk', ":Gitsigns prev_hunk<CR>")
nmap('<Leader>ga', ":Gitsigns stage_hunk<CR>")
nmap('<Leader>gr', ":Git rebase -i master<CR>")
nmap('<Leader>gz', ":Git reset<CR>")
nmap('<Leader>gc', ":Git commit<CR>")
nmap('<Leader>gp', ":Git push<CR>")

-- Align
nmap('ga', "<Plug>(EasyAlign)")
xmap('<Enter>', "<Plug>(EasyAlign)")

-- Diagnostic
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {})
-- si

-- Happy Hopping
nmap('<Leader>hw', ":HopWord<CR>")
nmap('<Leader>hl', ":HopLine<CR>")
nmap('<Leader>hv', ":HopVertical<CR>")

-- Sessions
-- vim.keymap.set("n", "<Leader>ss",
--   require("auto-session.session-lens").search_session, { noremap = true }
-- )

-- Undo
vim.keymap.set("n", "<leader>u" , vim.cmd.UndotreeToggle, {})

-- Toggler
nmap('-', ":ToggleAlternate<CR>")
-- vim.keymap.set("n", "gj", ts_jump.next, {})
-- vim.keymap.set("n", "gk", ts_jump.prev, {})
-- vim.keymap.set("n", "gh", ts_jump.prev, {})
-- vim.keymap.set("n", "gj", ts_jump.test, {})

-- icons
vim.keymap.set("n", "<Leader>i", "<cmd>IconPickerNormal emoji symbols nerd_font alt_font<cr>", opts)
vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<bufferscr>", opts)
