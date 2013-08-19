" vim: tabstop=2 softtabstop=2 shiftwidth=2

" Basic {
  syntax on
  filetype on
  filetype plugin on
" }

" Pluging manager {
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif
  call neobundle#rc(expand('~/.vim/bundle/'))
  " Let NeoBundle manage NeoBundle
  NeoBundleFetch 'Shougo/neobundle.vim'
  " Recommended to install
  "  " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f
  "  your_machines_makefile
  "NeoBundle 'Shougo/vimproc'
  "NeoBundle 'mitechie/pyflakes-pathogen'
  "NeoBundle 'sontek/rope-vim'
  "NeoBundle 'pep8'
  "NeoBundle 'snipMate'
  "NeoBundle 'UltiSnips'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Lokaltog/vim-easymotion'
  NeoBundle 'davidhalter/jedi-vim.git'
  NeoBundle 'ervandew/supertab'
  NeoBundle 'taglist.vim'
  NeoBundle 'fs111/pydoc.vim'
  NeoBundle 'Pydiction'
  NeoBundle 'Colour-Sampler-Pack'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-vividchalk'
  NeoBundle 'tpope/vim-endwise'
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'tejr/vim-nagios'
  NeoBundle 'vim-scripts/pyflakes.vim'
  NeoBundle 'Keithbsmiley/rspec.vim'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
  NeoBundle 'tpope/vim-surround'

  filetype plugin indent on
  NeoBundleCheck
" }

" Text {
  set nowrap
  set smartindent
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set tw=80
  set backspace=indent,eol,start
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
  set background=dark
  set nocp
  set noerrorbells  " Silent
  set vb            " Even more silent
  set showmatch     " Highlight paired parentheses
  set et            " Spaces instead of tabs
  set scrolloff=2
  set nonu          " Turn off line numeration. Really piss me off.
  set linespace=0
  set ruler         " Show cursor position info in the bottom if vim
  set t_Co=256

  if has("autocmd") " resume last position in file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif
  "colorscheme anotherdark
  colorscheme molokai

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
  autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.json set ft=javascript
  autocmd FileType ruby compiler ruby
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  "autocmd FileType python set complete+=k~/.vim/syntax/python.vim
  "au FileType python set omnifunc=pythoncomplete#Complete
  "let g:SuperTabDefaultCompletionType = "context"
  "isk+=.,(
  "autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/
  set tags=~/dev/tags
  let g:pylint_cwindow = 0 " Disable pylint window
  let g:jedi#auto_vim_configuration = 0
  let g:airline_theme='dark'
  set laststatus=2
  let g:DeleteTrailingWhitespace = 1
  let g:DeleteTrailingWhitespace_Action = 'delete'

" }

" let g:load_doxygen_syntax=1

" Key mapping {
  "map <F5> :!make<CR>
  "map <F2> :A<CR>

  " Shortcut to rapidly toggle `set list`
  nmap <leader>l :set list!<CR>
  " Use the same symbols as TextMate for tabstops and EOLs
  set listchars=tab:▸\ ,eol:¬

  map <F3> :TlistToggle<CR>
  map <F4> :GitBlame<CR>
  map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
  map \ :NERDTreeToggle<CR>

" }
