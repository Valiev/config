
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
setting filetype explicitly with `:set filetype=nagios`.
- [vim-bamboo-log](https://github.com/Valiev/vim-bamboo-log) plugin provides
syntax highlight for Bamboo CI build logs.

### Text features

- [winrcent/ferret](https://github.com/wincent/ferret) plugin provides
extremlly useful bindings for quick search in project with `:Ack`
command: `<Leader>a` starts search, `<Leader>s` searches for the word under
cursor
- [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)
plugin incrementally highlights **all** pattern matches unlike
default `incsearch`
- [haya14busa/incsearch-fuzzy.vim](https://github.com/url_here) plugin
- [bkad/CamelCaseMotion](https://github.com/url_here) plugin
- [tpope/vim-speeddating](https://github.com/url_here) plugin
- [ntpeters/vim-better-whitespace](https://github.com/url_here) plugin
- [Townk/vim-autoclose](https://github.com/url_here) plugin
- [terryma/vim-expand-region](https://github.com/url_here) plugin

### Coding features

- `Plug 'epeli/slimux'` TODO
- [ludovicchabant/vim-gutentags](https://github.com/url_here) plugin
- [christoomey/vim-tmux-navigator](https://github.com/url_here) plugin
- [majutsushi/tagbar](https://github.com/url_here) plugin
- [tpope/vim-fugitive ] " Git managemet(https://github.com/url_here) pluginn
- [tpope/vim-surround](https://github.com/url_here) plugin
- [tpope/vim-commentary](https://github.com/url_here) plugin
- [tpope/vim-endwise](https://github.com/url_here) plugin
- [tpope/vim-repeat](https://github.com/url_here) plugin
- [tpope/vim-unimpaired](https://github.com/url_here) plugin
- [szw/vim-ctrlspace](https://github.com/url_here) plugin
- TODO Plug 'arecarn/fold-cycle.vim' " folds
- [tpope/vim-vinegar](https://github.com/url_here) plugin
- TODO Plug 'luochen1990/indent-detector.vim'
- [luochen1990/select-and-search](https://github.com/url_here) plugin
- [kien/ctrlp.vim](https://github.com/url_here) plugin
- [bkad/vim-terraform](https://github.com/url_here) plugin
- Haskell
NeoBundle 'Twinside/vim-haskellConceal'
- Python
[davidhalter/jedi-vim ], { 'for' : 'python'}(https://github.com/url_here)
plugin
UNSORTED
NeoBundle 'mitechie/pyflakes-pathogen'
NeoBundle 'sontek/rope-vim'
NeoBundle 'pep8'
NeoBundle 'fs111/pydoc.vim'
NeoBundle 'Pydiction'
NeoBundle 'vim-scripts/pyflakes.vim'
- JSON
[elzr/vim-json ], { 'for': 'json'}(https://github.com/url_here) plugin

### Appearel

- [chrisbra/vim-diff-enhanced ] " enhanced dif(https://github.com/url_here)
pluginf
- [scrooloose/nerdtree](https://github.com/url_here) plugin
- [jistr/vim-nerdtree-tabs](https://github.com/url_here) plugin
NeoBundle 'junegunn/limelight.vim' " Highlight only piece of code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'
NeoBundle 'junegunn/goyo.vim' " Distraction-free
let g:goyo_width = 100
- [kshenoy/vim-signature ] " highlight mars(https://github.com/url_here) plugink
- [mhinz/vim-signify ] "h(https://github.com/url_here) plugin
- unsorted

```
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

```

### Colors

- [google/vim-colorscheme-primary](https://github.com/url_here) plugin
- [vim-scripts/ScrollColors](https://github.com/url_here) plugin
Plug 'kien/rainbow_parentheses.vim'
- [luochen1990/rainbow](https://github.com/url_here) plugin
- [zefei/vim-colortuner](https://github.com/url_here) plugin
- [flazz/vim-colorschemes](https://github.com/url_here) plugin
- [godlygeek/csapprox](https://github.com/url_here) plugin
- [ervandew/supertab](https://github.com/url_here) plugin
- Unsorted stuff
```
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
```
- [ryanoasis/vim-devicons](https://github.com/url_here) plugin

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
## Mappings
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
set background=dark
Ugly hack to support both `.vimrc` syntax and `markdown`
```
[//]: # vim: tabstop=2 softtabstop=2 shiftwidth=2
```
