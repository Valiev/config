" vim: tabstop=2 softtabstop=2 shiftwidth=2

" BASIC {
  syntax on
  filetype on
  filetype plugin on
" }

" PLUGINS {
" - init
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif
  call neobundle#rc(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'

" - Filetypes
  NeoBundle 'tejr/vim-nagios'

  NeoBundle "wting/rust.vim"

" - Coding features
  NeoBundle "bkad/CamelCaseMotion"

  NeoBundle "vim-gitgutter" " Git diff

  NeoBundle "scrooloose/syntastic"

  NeoBundle 'tpope/vim-surround'

  NeoBundle 'tpope/vim-commentary'

  NeoBundle 'tpope/vim-speeddating'

  NeoBundle 'tpope/vim-endwise'

  NeoBundle 'tpope/vim-repeat'

  NeoBundle 'tpope/vim-unimpaired'

  NeoBundle 'sheerun/vim-polyglot' " language packs

  NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
  let g:DeleteTrailingWhitespace=1
  let g:DeleteTrailingWhitespace_Action = 'delete'

  NeoBundle 'Townk/vim-autoclose'
  NeoBundle 'mattn/flappyvird-vim'

" - Python
  " NeoBundle 'mitechie/pyflakes-pathogen'
  " NeoBundle 'sontek/rope-vim'
  " NeoBundle 'pep8'
  " NeoBundle 'fs111/pydoc.vim'
  " NeoBundle 'Pydiction'
  " NeoBundle 'vim-scripts/pyflakes.vim'
  " NeoBundle 'davidhalter/jedi-vim.git'
  " let g:pylint_cwindow = 0 " Disable pylint window
  " let g:jedi#auto_vim_configuration = 0
  " let g:jedi#use_splits_not_buffers = "right"

" - JSON
  " NeoBundle 'pangloss/vim-javascript'
  " NeoBundle 'elzr/vim-json'
  " NeoBundle "leshill/vim-json"
  " let g:vim_json_syntax_conceal = 0
  " au! BufRead,BufNewFile *.json set filetype=json

" - Appearel
  NeoBundle 'junegunn/limelight.vim' " Highlight only piece of code

  NeoBundle 'junegunn/goyo.vim' " Distraction-free
  let g:goyo_width = 100

  NeoBundle 'kshenoy/vim-signature' " highlight marks

  NeoBundle 'mhinz/vim-startify'

  NeoBundle 'bling/vim-airline' " status bar
  set laststatus=2
  let g:airline#extensions#tabline#enabled = 1

  " set hidden
  let g:airline_theme='dark'
  let g:airline_exclude_preview = 1
  let g:airline#extensions#tabline#enabled = 0
  autocmd BufEnter, BufNewFile * silent! lcd %:p:h

  NeoBundle 'bling/vim-bufferline'

" - Colors
  NeoBundle "noahfrederick/vim-noctu"

  NeoBundle 'gorodinskiy/vim-coloresque'

  NeoBundle 'godlygeek/csapprox' " gvim-only colorscheme support in terminal

  NeoBundle 'Colour-Sampler-Pack'

  NeoBundle 'flazz/vim-colorschemes'

  NeoBundle 'vim-scripts/ScrollColors'

  NeoBundle 'tpope/vim-vividchalk'

  NeoBundle 'tomasr/molokai'
  let g:molokai_original = 1
  let g:rehash256 = 1

  NeoBundle 'kien/rainbow_parentheses.vim'
  let g:rbpt_colorpairs = [
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
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
  let g:rbpt_max = 16
  let g:rbpt_loadcmd_toggle = 0

" - unsorted plugins
  " NeoBundle 'Shougo/vimproc'
  " NeoBundle 'Shougo/unite.vim'
  " NeoBundle 'Lokaltog/vim-easymotion'
  " NeoBundle 'ervandew/supertab'
  " NeoBundle 'taglist.vim'
  " NeoBundle 'scrooloose/nerdtree'
  " NeoBundle 'vim-ruby/vim-ruby'
  " NeoBundle 'airblade/vim-gitgutter'
  " NeoBundle 'Keithbsmiley/rspec.vim'
  " NeoBundle 'kien/ctrlp.vim'
  " NeoBundle 'Valloric/YouCompleteMe'
  " NeoBundle 'nelstrom/vim-textobj-rubyblock'
  " NeoBundle 'nelstrom/vim-textobj-user'
  " NeoBundle 'mbbill/undotree'
  " NeoBundle 'Rykka/colorv.vim'
  " NeoBundle "MarcWeber/vim-addon-mw-utils"
  " NeoBundle "tomtom/tlib_vim"
  " NeoBundle "vadv/vim-chef"
  " NeoBundle "suan/vim-instant-markdown"
  " NeoBundle "terryma/vim-expand-region"
  " NeoBundle 'q335r49/microviche'
  " NeoBundle 'vim-scripts/Align'
  " NeoBundle 'vim-scripts/ZoomWin'
  " NeoBundle 'ferranpm/vim-colorcode'
  " let g:colorcode_global=0
  " NeoBundle 'kbairak/TurboMark'
  " NeoBundle 'szw/vim-ctrlspace'
  " NeoBundle 'tpope/vim-fugitive'
  " let g:syntastic_enable_signs=1
  " let g:indent_guides_auto_colors=0
  " hi IndentGuidesOdd  ctermbg=black
  " hi IndentGuidesEven ctermbg=darkgrey

  filetype plugin indent on
  NeoBundleCheck
" }


" Text {
  set nowrap
  set smartindent
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set showbreak=‖
  set tw=80
  set backspace=indent,eol,start
  set clipboard+=unnamed " Yanks go on clipboard instead.
  set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
  set fo-=r " Do not automatically insert a comment leader after an enter


  " Highlight >80 chars
  "au! BufNewFile,BufRead * exec 'match Todo /\%>' . &textwidth . 'v.\+/'
" }

" Search {
  set noignorecase
  set incsearch       " Search during typing
  set hlsearch        " Highlight found strings
  set history=500
  set undolevels=50
  set completeopt=longest,menuone     " IDE-like autocomplete
" }


" Folds {
  set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
  set foldenable
  set foldmethod=manual
" }


" GUI features {
  set background=light
  set nocp
  set noerrorbells  " Silent
  set vb            " Even more silent
  set showmatch     " Highlight paired parentheses
  set matchtime=5   " Bracket blinking.
  set et            " Spaces instead of tabs
  set scrolloff=2
  set nonu          " Turn off line numeration. Really piss me off.
  set linespace=0
  set ruler         " Show cursor position info in the bottom if vim
  set t_Co=256
  set shortmess=atI " Shortens messages

  if has("autocmd") " resume last position in file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

  " colorscheme Mustang
  " colorscheme ekvoli
  " colorscheme anotherdark
  " colorscheme molokai
  " colorscheme railscasts
  colorscheme Molokai
  " colorscheme badwolf
  " colorscheme scame
  "colorscheme softblue
  "colorscheme jellybeans

  if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
  endif
" }


" GVim features {
" set guifont=DejaVu\ Sans\ Mono\ 9
  set guifont=Inconsolata\ 13
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=r  "remove right-hand scroll bar
" }

" Coding features {
  let c_space_errors = 1
  let python_highlight_space_errors = 1
  let python_highlight_all = 1
  " autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType ruby compiler ruby
  autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
  au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
  au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
  au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit
  " autocmd BufNewFile,BufRead *.json set ft=javascript
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  "autocmd FileType python set complete+=k~/.vim/syntax/python.vim
  "au FileType python set omnifunc=pythoncomplete#Complete
  "let g:SuperTabDefaultCompletionType = "context"
  "isk+=.,(
  "autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/
  set tags=~/dev/tags
  "set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags

" }

" let g:load_doxygen_syntax=1

" Key mapping {
  "map <F5> :!make<CR>
  "map <F2> :A<CR>

  let mapleader = "\<Space>"
  " save
  nnoremap <Leader>ww :w<CR>
  nnoremap <Leader>q :q<CR>
  nnoremap <Leader>wq :wq<CR>
  " copy to clipboard
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P

  vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
      \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
  omap s :normal vs<CR>

  " nmap <Leader><Leader> V
  nnoremap <Leader><Space> :Goyo<CR>
  map q: :q
  " Shortcut to rapidly toggle `set list`
  nmap <leader>l :set list!<CR>
  " Use the same symbols as TextMate for tabstops and EOLs
  set listchars=tab:▸\ ,eol:¬

  nnoremap <silent> <LocalLeader>rs :source ~/.vimrc<CR>
  nnoremap <silent> <C-J> gEa<CR><ESC>ew " Split line(opposite to S-J joining line)
  nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
  nnoremap * #
  nnoremap - :Switch<cr>

  noremap H ^
  noremap L $
  nnoremap U <C-r>

  " jk to leave insert mode
  inoremap jk <Esc>
  inoremap JK <Esc>
  inoremap Jk <Esc>
  inoremap jK <Esc>

  " reselect visual block after indent
  vnoremap < <gv
  vnoremap > >gv"

  " make Y consistent with C and D. See :help Y.
  nnoremap Y y$

" }
