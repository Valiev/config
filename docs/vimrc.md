
VIM configuration
=================
## Plugins
Vim is really great editor. But to extend it to fit my into personal needs I
use plugin manager. I used to use [NeoBundle](https://github.com/Shougo/neobundle.vim),
but migrated to [vim-plug](https://github.com/junegunn/vim-plug) recently.
And I really enjoy it.

[Installation](https://github.com/junegunn/vim-plug#installation) is easy.
To enable plugin-manager it requires to add `call plug#begin('~/.vim/plugged')` to your `.vimrc` file.


### Filetypes

- [vim-nagios](https://github.com/tejr/vim-nagios) plugin provides syntax
highlight for [Nagios](https://www.nagios.org/) monitoring configuration
files. `Plug 'tejr/vim-nagios', { 'for': 'nagios' }` line is used to provide
this plugin to be enabled only for `nagios` files. Could be enabled by
setting filetype explicitly.
- Text features
- Coding features
[comment]: <> Plug 'epeli/slimux'
Plug 'arecarn/fold-cycle.vim' " folds
Plug 'luochen1990/indent-detector.vim'
Plug 'gastonsimone/vim-dokumentary'
- Terraform
- Haskell
NeoBundle 'Twinside/vim-haskellConceal'
- Python
UNSORTED
NeoBundle 'mitechie/pyflakes-pathogen'
NeoBundle 'sontek/rope-vim'
NeoBundle 'pep8'
NeoBundle 'fs111/pydoc.vim'
NeoBundle 'Pydiction'
NeoBundle 'vim-scripts/pyflakes.vim'
- JSON
, { 'for': 'json' }
let g:indentLine_noConcealCursor=""
Plug 'othree/yajs.vim', { 'for' : 'javascript' }
let g:vim_json_syntax_conceal = 0
- Appearel
NeoBundle 'junegunn/limelight.vim' " Highlight only piece of code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'
NeoBundle 'junegunn/goyo.vim' " Distraction-free
let g:goyo_width = 100
Plug 'vim-gitgutter' " Git diff
set laststatus=2 " To show menubar
set noshowmode
let g:airline#extensions#tabline#enabled = 1
NeoBundle 'reedes/vim-thematic'
set hidden
let g:airline_theme='light'
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#enabled = 0
autocmd BufEnter, BufNewFile * silent! lcd %:p:h
NeoBundle 'bling/vim-bufferline'

- Colors
Plug 'godlygeek/csapprox' " gvim-only colorscheme support in terminal
Plug 'kien/rainbow_parentheses.vim'
UNSORTED
NeoBundle "noahfrederick/vim-noctu"
let g:seoul256_background = 256
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'Colour-Sampler-Pack'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1
let g:rbpt_colorpairs = [
\ ['brown',       'RoyalBlue3'],
\ ['Darkblue',    'SeaGreen3'],
\ ['darkgray',    'DarkOrchid3'],
\ ['darkgreen',   'firebrick3'],
\ ['darkcyan',    'RoyalBlue3'],
\ ['darkred',     'SeaGreen3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['brown',       'firebrick3'],
\ ['gray',        'RoyalBlue3'],
\ ['black',       'SeaGreen3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['Darkblue',    'firebrick3'],
\ ['darkgreen',   'RoyalBlue3'],
\ ['darkcyan',    'SeaGreen3'],
\ ['darkred',     'DarkOrchid3'],
\ ['red',         'firebrick3'],
\ ]
\ ['black',       'SeaGreen3'],
\ ['brown',       'RoyalBlue3'],
\ ['Darkblue',    'SeaGreen3'],
\ ['darkgray',    'DarkOrchid3'],
\ ['darkgreen',   'firebrick3'],
\ ['darkcyan',    'RoyalBlue3'],
\ ['darkred',     'SeaGreen3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['brown',       'firebrick3'],
\ ['darkmagenta', 'DarkOrchid3'],
\ ['darkred',     'DarkOrchid3'],
\ ['gray',        'RoyalBlue3'],
\ ['darkcyan',    'SeaGreen3'],
\ ['Darkblue',    'firebrick3'],
\ ['darkgreen',   'RoyalBlue3'],
\ ['red',         'firebrick3']
\ ]
colorscheme zephyr
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
- unsorted plugins
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'taglist.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'nelstrom/vim-textobj-user'
NeoBundle 'mbbill/undotree'
NeoBundle 'Rykka/colorv.vim'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "vadv/vim-chef"
NeoBundle "suan/vim-instant-markdown"
NeoBundle "terryma/vim-expand-region"
NeoBundle 'q335r49/microviche'
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/ZoomWin'
NeoBundle 'ferranpm/vim-colorcode'
let g:colorcode_global=0
NeoBundle 'kbairak/TurboMark'
NeoBundle 'szw/vim-ctrlspace'
let g:syntastic_enable_signs=1
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

## Text
Highlight >80 chars
au! BufNewFile,BufRead * exec 'match Todo /\%>' . &textwidth . 'v.\+/'

## Search

## Folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set foldenable
set foldmethod=manual

## GUI features
colorscheme 256-jungle
colorscheme Mustang
colorscheme symfony
colorscheme anotherdark
colorscheme molokai
colorscheme railscasts
colorscheme badwolf
colorscheme scame
colorscheme summerfruit256
colorscheme softblue
colorscheme jellybeans
colorscheme 256-grayvim
colorscheme zephyr

## GVim features
set guifont=DejaVu\ Sans\ Mono\ 9

## Coding features
utocmd FileType python set colorscheme= autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'
autocmd BufRead,BufNewFile *
\  if expand('%:p:h') =~# '.*/cookbooks/.*'
\|   setlocal makeprg=foodcritic\ $*\ %
\|   setlocal errorformat=%m:\ %f:%l
\| endif
au BufRead,BufNewFile {*.erb}     set ft=ruby,eruby.chef
Words completion
autocmd FileType python set complete+=k~/.vim/syntax/python.vim

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
isk+=.,(
autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/

Always show line numbers, but only in current window.
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber "set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags
Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =
let g:load_doxygen_syntax=1
Key mapping {
map <F5> :!make<CR>
map <F2> :A<CR>
nnoremap <Leader><Leader> :Goyo<CR>
save
map <Leader>r :SmargfRefreshTags<CR>
copy to clipboard
Tabs
map <Leader>0 :tablast<CR>
NerdTree
Close vim if NerdTree is the only tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
Start NerdTree if no files at start up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
Tabs
let g:nerdtree_tabs_open_on_console_startup=1
Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
\:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
nmap <Leader><Leader> V
Shortcut to rapidly toggle `set list`
Use the same symbols as TextMate for tabstops and EOLs
Buffers
nnoremap - :Switch<cr>
noremap  H ^
noremap  L $
jk to leave insert mode
reselect visual block after indent
Movement in insert mode
make Y consistent with C and D. See :help Y.
Hard mode
Switching windows and close window
folds
let g:fold_cycle_default_mapping = 1 "disable default mappings
nmap <Tab><Tab> <Plug>(fold-cycle-open)
nmap <S-Tab><S-Tab> <Plug>(fold-cycle-close)

Git Gutter



nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
Ugly hack to support both `.vimrc` syntax and `markdown`
```
[//]: # vim: tabstop=2 softtabstop=2 shiftwidth=2
```
