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
- [wting/rust.vim](https://github.com/wting/rust.vim) plugin brings `rust`
  support to vim.
- [vim-bamboo-log](https://github.com/Valiev/vim-bamboo-log) plugin provides
  syntax highlight for Bamboo CI build logs.
- [bkad/vim-terraform](https://github.com/bkad/vim-terraform) plugin brings
  `terraform` support for vim


### Text features

- [winrcent/ferret](https://github.com/wincent/ferret) plugin provides
  extremlly useful bindings for quick search in project with `:Ack`
  command: `<Leader>a` starts search, `<Leader>s` searches for the word under
  cursor
- [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)
  plugin incrementally highlights **all** pattern matches unlike
  default `incsearch`
- [haya14busa/incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim)
  plugin provides fuzzy search support.
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align) plugin
  provides extremlly easy text alignment. One of my favorite plugins.
- [bkad/CamelCaseMotion](https://github.com/bkad/CamelCaseMotion) provides
  operations on words with `CamelCases` or `this_kind_of_words`
- [tpope/vim-speeddating](https://github.com/tpope/vim-speeddating) plugin
  bring `<C-A>`/`<C-X>` increment/decrement combinations work for various
  types of dates
- [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
  plugin highlights all whitespaces and moreover provides whitespace stripping.
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs) plugin
  provides auto-closing brackets
- [terryma/vim-expand-region](https://github.com/erryma/vim-expand-region) plugin allows
  to visually select increasingly larger regions of text using the same key
  combination


### Coding features

- [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) plugin
  brings seamless and not irritating tags creation.
- [majutsushi/tagbar](https://github.com/majutsushi/tagbar) plugin bring
  tagbar for vim.
- [junegunn/vim-after-object](https://github.com/junegunn/vim-after-object)
  plugin brings `ca=`/`da=` and other vim-motions.
- [scrooloose/syntastic](https://github.com/scrooloose/syntastic) plugin
  provides syntax support for vast programming languages and/or filetypes.
- [tmux-plugins/vim-tmux](https://github.com/tmux-plugins/vim-tmux) plugin
  provides tmux configuration files syntax highlighting
- [benmills/vimux](https://github.com/benmills/vimux) plugin provides
  integration between `vim` and `tmux`
- [tpope/vim-surround](https://github.com/tpope/vim-surround) plugin manages
  parentheses, brackets, quotes, XML tags, and more.
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary) plugin
  provides universal binding to manage comments for various filetypes
- [tpope/vim-endwise](https://github.com/tpope/vim-endwise) plugin helps to end
  certain structures automatically
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat) plugin provides
  repeat for custom plugin actions
- [tpope/vim-unimpaired](https://github.com/url_here) plugin provides neat
  paired mappings, like:
    * `[<Space>`/`]<Space>` to paste blank lines
    * `cos` to toggle spell checking
    * `col` to toggle `list` command
    * `cos` to toggle cursor highlight
    * `cow` to toggle word wrapping
    * `con` to toggle line numbering
- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) a collection
  on language packs
- [luochen1990/select-and-search](https://github.com/luochen1990/select-and-search)
  plugin's feature is to select text in v mode, then press n to search next one
  (N for prev one)
- [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim) is fuzzy finder for
  files, buffers and MRUs
- [neco-ghc](https://github.com/eagletmt/neco-ghc) is nice autocompletion for
  `haskell`
- [davidhalter/jedi-vim ](https://github.com/davidhalter/jedi-vim) is
  autocompletion for `python`
- [elzr/vim-json ](https://github.com/elzr/vim-json) brings better `json`
  highlighting


### Appearel

- [bling/vim-airline](https://github.com/bling/vim-airline) is a status bar, tabline
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) is a file
  explorer for vim
- [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs) is an
  externsion for nerdtree to support tabs
- [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature) highlights
  marks
- [mhinz/vim-signify ] "h(https://github.com/url_here) highlights changes


### Colors

- [vim-scripts/ScrollColors](https://github.com/vim-scripts/ScrollColors) provides
  `:COLORSCROLL` command to walk thought colorschemes
- [luochen1990/rainbow](https://github.com/luochen1990/rainbow) highlights
  brackets regaring nested levels
- [zefei/vim-colortuner](https://github.com/zefei/vim-colortuner) allows you
  tuning your color scheme using sliders
- [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes) yet
  another colorschemes pack
- [godlygeek/csapprox](https://github.com/url_here) makes GVim-only
  colorschemes Just Work in terminal Vim
- [ervandew/supertab](https://github.com/ervandew/supertab) allows you to use
  `<Tab>` for all your insert completion needs
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) adds
  filetype glyphs (icons) to other plugins

## Text

Highlight >80 chars
  "au! BufNewFile,BufRead * exec 'match Todo /\%>' . &textwidth . 'v.\+/'

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
  "utocmd FileType python set colorscheme= autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'
autocmd BufRead,BufNewFile *
      \  if expand('%:p:h') =~# '.*/cookbooks/.*'
      \|   setlocal makeprg=foodcritic\ $*\ %
      \|   setlocal errorformat=%m:\ %f:%l
      \| endif
au BufRead,BufNewFile {*.erb}     set ft=ruby,eruby.chef
Words completion
faster redrawing
  "autocmd FileType python set complete+=k~/.vim/syntax/python.vim
  "
  "au FileType python set omnifunc=pythoncomplete#Complete
  "let g:SuperTabDefaultCompletionType = "context"
  "isk+=.,(
  "autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/
  "
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
  "vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
   \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
  "omap s :normal vs<CR>
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
  "
Git Gutter
  "
  "
  "
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
