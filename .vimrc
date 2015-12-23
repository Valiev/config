" VIM configuration
" =================
syntax on
filetype on
filetype plugin on

"
" ## Plugins
"
" Vim is really great editor. But to extend it to fit my into personal needs I
" use plugin manager. I used to use [NeoBundle](https://github.com/Shougo/neobundle.vim),
" but migrated to [vim-plug](https://github.com/junegunn/vim-plug) recently.
" And I really enjoy it.
"
" [Installation](https://github.com/junegunn/vim-plug#installation) is easy.
" To enable plugin-manager it requires to add `call plug#begin('~/.vim/plugged')` to your `.vimrc` file.
"
  call plug#begin('~/.vim/plugged')

"
"
" ### Filetypes
"
" - [vim-nagios](https://github.com/tejr/vim-nagios) plugin provides syntax
"   highlight for [Nagios](https://www.nagios.org/) monitoring configuration
"   files. `Plug 'tejr/vim-nagios', { 'for': 'nagios' }` line is used to provide
"   this plugin to be enabled only for `nagios` files. Could be enabled by
"   setting filetype explicitly with `:set filetype=nagios`.
  Plug 'tejr/vim-nagios', { 'for': 'nagios' }

" - [wting/rust.vim](https://github.com/wting/rust.vim) plugin brings `rust`
"   support to vim.
  Plug 'wting/rust.vim', { 'for': 'rust' }

" - [vim-bamboo-log](https://github.com/Valiev/vim-bamboo-log) plugin provides
"   syntax highlight for Bamboo CI build logs.
  Plug 'Valiev/vim-bamboo-log'

"
"
" ### Text features
"
" - [winrcent/ferret](https://github.com/wincent/ferret) plugin provides
"   extremlly useful bindings for quick search in project with `:Ack`
"   command: `<Leader>a` starts search, `<Leader>s` searches for the word under
"   cursor
  Plug 'wincent/ferret'

" - [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)
"   plugin incrementally highlights **all** pattern matches unlike
"   default `incsearch`
  Plug 'haya14busa/incsearch.vim'

" - [haya14busa/incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim)
"   plugin provides fuzzy search support.
  Plug 'haya14busa/incsearch-fuzzy.vim'

" - [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align) plugin
"   provides extremlly easy text alignment. One of my favorite plugins.
  Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }

" - [bkad/CamelCaseMotion](https://github.com/bkad/CamelCaseMotion) provides
"   operations on words with `CamelCases` or `this_kind_of_words`
  Plug 'bkad/CamelCaseMotion'

" - [tpope/vim-speeddating](https://github.com/tpope/vim-speeddating) plugin
"   bring `<C-A>`/`<C-X>` increment/decrement combinations work for various
"   types of dates
  Plug 'tpope/vim-speeddating'

" - [ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
"   plugin highlights all whitespaces and moreover provides whitespace stripping.
  Plug 'ntpeters/vim-better-whitespace'

" - [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs) plugin
"   provides auto-closing brackets
  Plug 'https://github.com/jiangmiao/auto-pairs'

" - [terryma/vim-expand-region](https://github.com/erryma/vim-expand-region) plugin allows
"   to visually select increasingly larger regions of text using the same key
"   combination
  Plug 'terryma/vim-expand-region'


"
"
" ### Coding features
"
" - [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) plugin
"   brings seamless and not irritating tags creation.
  Plug 'ludovicchabant/vim-gutentags'
  let g:gutentags_cache_dir = '~/dev/tags'

" - [majutsushi/tagbar](https://github.com/majutsushi/tagbar) plugin bring
"   tagbar for vim.
  Plug 'majutsushi/tagbar'

" - [junegunn/vim-after-object](https://github.com/junegunn/vim-after-object)
"   plugin brings `ca=`/`da=` and other vim-motions.
  Plug 'junegunn/vim-after-object'
  silent! if has_key(g:plugs, 'vim-after-object')
    autocmd VimEnter * silent! call after_object#enable('=', ':', '-', '#', ' ', '*', '.', '|')
  endif

" - [scrooloose/syntastic](https://github.com/scrooloose/syntastic) plugin
"   provides syntax support for vast programming languages and/or filetypes.
  Plug 'scrooloose/syntastic', { 'for' : ['python', 'javascript', 'ruby'] }

" - [tmux-plugins/vim-tmux](https://github.com/tmux-plugins/vim-tmux) plugin
"   provides tmux configuration files syntax highlighting
  Plug 'tmux-plugins/vim-tmux'

" - [benmills/vimux](https://github.com/benmills/vimux) plugin provides
"   integration between `vim` and `tmux`
  Plug 'benmills/vimux'

" - [tpope/vim-surround](https://github.com/tpope/vim-surround) plugin manages
"   parentheses, brackets, quotes, XML tags, and more.
  Plug 'tpope/vim-surround'

" - [tpope/vim-commentary](https://github.com/tpope/vim-commentary) plugin
"   provides universal binding to manage comments for various filetypes
  Plug 'tpope/vim-commentary'

" - [tpope/vim-endwise](https://github.com/tpope/vim-endwise) plugin helps to end
"   certain structures automatically
  Plug 'tpope/vim-endwise'

" - [tpope/vim-repeat](https://github.com/tpope/vim-repeat) plugin provides
"   repeat for custom plugin actions
  Plug 'tpope/vim-repeat'

" - [tpope/vim-unimpaired](https://github.com/url_here) plugin provides neat
"   paired mappings, like:
"     * `[<Space>`/`]<Space>` to paste blank lines
"     * `cos` to toggle spell checking
"     * `col` to toggle `list` command
"     * `cos` to toggle cursor highlight
"     * `cow` to toggle word wrapping
"     * `con` to toggle line numbering
  Plug 'tpope/vim-unimpaired'

  Plug 'sheerun/vim-polyglot', { 'for': ['ruby', 'python', 'haskell'] }

" - [szw/vim-ctrlspace](https://github.com/url_here) plugin
  Plug 'szw/vim-ctrlspace'

" - [tpope/vim-vinegar](https://github.com/url_here) plugin
  Plug 'tpope/vim-vinegar'


" - [luochen1990/select-and-search](https://github.com/url_here) plugin
  Plug 'luochen1990/select-and-search'

" - [kien/ctrlp.vim](https://github.com/url_here) plugin
  Plug 'kien/ctrlp.vim'
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'dir2':  '\v[\/]vendor$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
  set hidden

" - TODO Plug 'luochen1990/indent-detector.vim'
" - TODO Plug 'tpope/vim-fugitive' " Git management
" - TODO Plug 'arecarn/fold-cycle.vim' " folds
" - TODO `Plug 'epeli/slimux'`
" - TODO Plug 'christoomey/vim-tmux-navigator'

" - [bkad/vim-terraform](https://github.com/url_here) plugin
  Plug 'bkad/vim-terraform'

" - Haskell
  Plug 'neco-ghc', { 'for' : 'haskell' }
  setlocal omnifunc=necoghc#omnifunc
  " NeoBundle 'Twinside/vim-haskellConceal'

" - Python
" [davidhalter/jedi-vim ], { 'for' : 'python'}(https://github.com/url_here)
" plugin
  Plug 'davidhalter/jedi-vim', { 'for' : 'python' }
  let g:pylint_cwindow = 0 " Disable pylint window
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#use_splits_not_buffers = "right"

  " UNSORTED
  " NeoBundle 'mitechie/pyflakes-pathogen'
  " NeoBundle 'sontek/rope-vim'
  " NeoBundle 'pep8'
  " NeoBundle 'fs111/pydoc.vim'
  " NeoBundle 'Pydiction'
  " NeoBundle 'vim-scripts/pyflakes.vim'

" - JSON
" [elzr/vim-json ], { 'for': 'json'}(https://github.com/url_here) plugin
  Plug 'elzr/vim-json', { 'for': 'json' }
  hi! def link jsonKeyword Identifier

"
"
" ### Appearel
"
  Plug 'bling/vim-airline' " status bar
  set noshowmode
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#whitespace#enabled = 0

  " Plug 'jszakmeister/vim-togglecursor'
" - [chrisbra/vim-diff-enhanced ] " enhanced dif(https://github.com/url_here)
" pluginf
  Plug 'chrisbra/vim-diff-enhanced' " enhanced diff

" - [scrooloose/nerdtree](https://github.com/url_here) plugin
  Plug 'scrooloose/nerdtree'

" - [jistr/vim-nerdtree-tabs](https://github.com/url_here) plugin
  Plug 'jistr/vim-nerdtree-tabs'

  " NeoBundle 'junegunn/limelight.vim' " Highlight only piece of code
  " let g:limelight_conceal_ctermfg = 'gray'
  " let g:limelight_conceal_guifg = 'DarkGray'

  " NeoBundle 'junegunn/goyo.vim' " Distraction-free
  " let g:goyo_width = 100

" - [kshenoy/vim-signature ] " highlight mars(https://github.com/url_here) plugink
  Plug 'kshenoy/vim-signature' " highlight marks

" - [mhinz/vim-signify ] "h(https://github.com/url_here) plugin
  Plug 'mhinz/vim-signify' " h

" - unsorted
"
" ```
    " Plug 'vim-gitgutter' " Git diff

  " set laststatus=2 " To show menubar
  " set noshowmode
  " let g:airline#extensions#tabline#enabled = 1

  " NeoBundle 'reedes/vim-thematic'

  " set hidden
  " let g:airline_theme='light'
  " let g:airline_exclude_preview = 1
  " let g:airline#extensions#tabline#enabled = 0
  " autocmd BufEnter, BufNewFile * silent! lcd %:p:h

  " NeoBundle 'bling/vim-bufferline'
  "
" ```

"
"### Colors
"
" - [google/vim-colorscheme-primary](https://github.com/url_here) plugin
  Plug 'google/vim-colorscheme-primary'

" - [vim-scripts/ScrollColors](https://github.com/url_here) plugin
  Plug 'vim-scripts/ScrollColors'

  " Plug 'kien/rainbow_parentheses.vim'
" - [luochen1990/rainbow](https://github.com/url_here) plugin
  Plug 'luochen1990/rainbow'
  let g:rainbow_conf = {
  \   'ctermfgs': ['blue', 'cyan', 'green', 'yellow', 'red']
  \ }

" - [zefei/vim-colortuner](https://github.com/url_here) plugin
  Plug 'zefei/vim-colortuner'

" - [flazz/vim-colorschemes](https://github.com/url_here) plugin
  Plug 'flazz/vim-colorschemes'

" - [godlygeek/csapprox](https://github.com/url_here) plugin
  Plug 'godlygeek/csapprox'
  let g:CSApprox_hook_post = [
    \ 'highlight Normal            ctermbg=NONE',
    \ 'highlight LineNr            ctermbg=NONE',
    \ 'highlight SignifyLineAdd    cterm=bold ctermbg=NONE ctermfg=green',
    \ 'highlight SignifyLineDelete cterm=bold ctermbg=NONE ctermfg=red',
    \ 'highlight SignifyLineChange cterm=bold ctermbg=NONE ctermfg=yellow',
    \ 'highlight SignifySignAdd    cterm=bold ctermbg=NONE ctermfg=green',
    \ 'highlight SignifySignDelete cterm=bold ctermbg=NONE ctermfg=red',
    \ 'highlight SignifySignChange cterm=bold ctermbg=NONE ctermfg=yellow',
    \ 'highlight SignColumn        ctermbg=NONE',
    \ 'highlight CursorLine        ctermbg=NONE cterm=underline',
    \ 'highlight Folded            ctermbg=NONE cterm=bold',
    \ 'highlight FoldColumn        ctermbg=NONE cterm=bold',
    \ 'highlight NonText           ctermbg=NONE',
    \ 'highlight clear LineNr'
  \]

" - [ervandew/supertab](https://github.com/url_here) plugin
  Plug 'ervandew/supertab'

" - Unsorted stuff
" ```
  " UNSORTED
  " NeoBundle "noahfrederick/vim-noctu"
  " let g:seoul256_background = 256
  " NeoBundle 'junegunn/seoul256.vim'
  " NeoBundle 'gorodinskiy/vim-coloresque'
  " NeoBundle 'Colour-Sampler-Pack'
  " NeoBundle 'flazz/vim-colorschemes'
  " NeoBundle 'tpope/vim-vividchalk'
  " NeoBundle 'tomasr/molokai'
  " let g:molokai_original = 1
  " let g:rehash256 = 1
  " let g:rbpt_colorpairs = [
    " \ ['brown',       'RoyalBlue3'],
    " \ ['Darkblue',    'SeaGreen3'],
    " \ ['darkgray',    'DarkOrchid3'],
    " \ ['darkgreen',   'firebrick3'],
    " \ ['darkcyan',    'RoyalBlue3'],
    " \ ['darkred',     'SeaGreen3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['brown',       'firebrick3'],
    " \ ['gray',        'RoyalBlue3'],
    " \ ['black',       'SeaGreen3'],
    " \ ['darkmagenta', 'DarkOrchid3'],
    " \ ['Darkblue',    'firebrick3'],
    " \ ['darkgreen',   'RoyalBlue3'],
    " \ ['darkcyan',    'SeaGreen3'],
    " \ ['darkred',     'DarkOrchid3'],
    " \ ['red',         'firebrick3'],
    " \ ]
      " \ ['black',       'SeaGreen3'],
      " \ ['brown',       'RoyalBlue3'],
      " \ ['Darkblue',    'SeaGreen3'],
      " \ ['darkgray',    'DarkOrchid3'],
      " \ ['darkgreen',   'firebrick3'],
      " \ ['darkcyan',    'RoyalBlue3'],
      " \ ['darkred',     'SeaGreen3'],
      " \ ['darkmagenta', 'DarkOrchid3'],
      " \ ['brown',       'firebrick3'],
      " \ ['darkmagenta', 'DarkOrchid3'],
      " \ ['darkred',     'DarkOrchid3'],
      " \ ['gray',        'RoyalBlue3'],
      " \ ['darkcyan',    'SeaGreen3'],
      " \ ['Darkblue',    'firebrick3'],
      " \ ['darkgreen',   'RoyalBlue3'],
      " \ ['red',         'firebrick3']
      " \ ]
  " colorscheme zephyr

  " au VimEnter * RainbowParenthesesToggle
  " au Syntax * RainbowParenthesesLoadRound
  " au Syntax * RainbowParenthesesLoadSquare
  " au Syntax * RainbowParenthesesLoadBraces
  " let g:rbpt_max = 16
  " let g:rbpt_loadcmd_toggle = 0

" - unsorted plugins
  " NeoBundle 'Shougo/vimproc'
  " NeoBundle 'Shougo/unite.vim'
  " NeoBundle 'Lokaltog/vim-easymotion'
  " NeoBundle 'taglist.vim'
  " NeoBundle 'vim-ruby/vim-ruby'
  " NeoBundle 'Keithbsmiley/rspec.vim'
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
  " let g:syntastic_enable_signs=1
  " let g:indent_guides_auto_colors=0
  " hi IndentGuidesOdd  ctermbg=black
  " hi IndentGuidesEven ctermbg=darkgrey
" ```

" - [ryanoasis/vim-devicons](https://github.com/url_here) plugin
  Plug 'ryanoasis/vim-devicons'

  filetype plugin indent on
  call plug#end()


"
" ## Text
"
  set nowrap
  set smartindent
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set showbreak=⁻
  set breakindent
  set linebreak
  set tw=80
  set backspace=indent,eol,start
  set clipboard+=unnamed " Yanks go on clipboard instead.
  set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
  set fo-=r " Do not automatically insert a comment leader after an enter

  " Highlight >80 chars
  "au! BufNewFile,BufRead * exec 'match Todo /\%>' . &textwidth . 'v.\+/'

"
" ## Search
  set noignorecase
  set incsearch       " Search during typing
  set hlsearch        " Highlight found strings
  set history=500
  set undolevels=50
  set completeopt=longest,menuone     " IDE-like autocomplete
  set hlsearch
  let g:incsearch#auto_nohlsearch = 1
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
  map n  <Plug>(incsearch-nohl-n)
  map N  <Plug>(incsearch-nohl-N)
  map *  <Plug>(incsearch-nohl-*)
  map #  <Plug>(incsearch-nohl-#)
  map g* <Plug>(incsearch-nohl-g*)
  map g# <Plug>(incsearch-nohl-g#)
  map z/ <Plug>(incsearch-fuzzy-/)


"
" ## Folds
  " set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
  " set foldenable
  " set foldmethod=manual
  set nofoldenable


"
" ## GUI features
  set background=dark
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
  function s:SetCursorLine()
    hi cursorline cterm=none ctermbg=darkblue ctermfg=white
  endfunction
  autocmd VimEnter * call s:SetCursorLine()

  if has("autocmd") " resume last position in file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

  colorscheme Monokai
  " colorscheme 256-jungle
  " colorscheme Mustang
  " colorscheme symfony
  " colorscheme anotherdark
  " colorscheme molokai
  " colorscheme railscasts
  " colorscheme badwolf
  " colorscheme scame
  " colorscheme summerfruit256
  " colorscheme softblue
  " colorscheme jellybeans
  " colorscheme 256-grayvim
  " colorscheme zephyr


  if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
  endif


"
" ## GVim features
" set guifont=DejaVu\ Sans\ Mono\ 9
  set guifont=Inconsolata\ 13
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=r  "remove right-hand scroll bar


"
" ## Coding features
  set encoding=utf8
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
  let c_space_errors = 1
  let python_highlight_space_errors = 1
  let python_highlight_all = 1
  "utocmd FileType python set colorscheme= autocmd FileType python let g:pydiction_location ='~/.vim/bundle/Pydiction/complete-dict'
  " autocmd BufRead,BufNewFile *
  "       \  if expand('%:p:h') =~# '.*/cookbooks/.*'
  "       \|   setlocal makeprg=foodcritic\ $*\ %
  "       \|   setlocal errorformat=%m:\ %f:%l
  "       \| endif
  autocmd FileType * autocmd BufWritePre <buffer> StripWhitespace " strip whitespaces
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType ruby compiler ruby
  autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
  " au BufRead,BufNewFile {*.erb}     set ft=ruby,eruby.chef
  autocmd BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
  autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
  autocmd BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
  autocmd BufNewFile,BufRead *.json set ft=json
  autocmd BufNewFile,BufRead *.json set foldmethod=syntax
  autocmd BufNewFile,BufRead *.cfg set ft=nagios
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2

  " Words completion
  set complete-=k
  set complete+=k
  set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
  " faster redrawing
  set ttyfast
  set nolazyredraw " don't redraw while executing macros"
  set magic " Set magic on, for regex"
  set mat=2 " how many tenths of a second to blink"


  "autocmd FileType python set complete+=k~/.vim/syntax/python.vim
  "
  "au FileType python set omnifunc=pythoncomplete#Complete
  "let g:SuperTabDefaultCompletionType = "context"
  "isk+=.,(
  "autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/
  set tags=~/dev/tags
  au FocusLost * :wa
  "
 " Always show line numbers, but only in current window.
  " set number
  " :au WinEnter * :setlocal number
  " :au WinLeave * :setlocal nonumber "set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags

  " Automatically resize vertical splits.
  " :au WinEnter * :set winfixheight
  " :au WinEnter * :wincmd =

" let g:load_doxygen_syntax=1

" ## Mappings

  let mapleader = "\<Space>"
  " nnoremap <Leader><Leader> :Goyo<CR>
  nnoremap <Leader><Leader> :CtrlP<CR>
  " save
  nnoremap <Leader>ww :w<CR>
  nnoremap <Leader>q :q<CR>
  nnoremap <Leader>wq :wq<CR>
  " map <Leader>r :SmargfRefreshTags<CR>
  nnoremap <Leader>h :set cursorline!<CR>

  " copy to clipboard
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P

  " Tabs
  map <Leader>1 1gt
  map <Leader>2 2gt
  map <Leader>3 3gt
  map <Leader>4 4gt
  map <Leader>5 5gt
  map <Leader>6 6gt
  map <Leader>7 7gt
  map <Leader>8 8gt
  map <Leader>9 9gt
  " map <Leader>0 :tablast<CR>
  map <Leader>] :tabnext<CR>
  map <Leader>[ :tabprevious<CR>
  let g:lasttab = 1
  nmap <Leader>0 :exe "tabn ".g:lasttab<CR>
  autocmd TabLeave * let g:lasttab = tabpagenr()

  " NerdTree
  map <Leader><Tab> :NERDTreeToggle<CR>
  " Close vim if NerdTree is the only tab
  " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  " Start NerdTree if no files at start up
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " Tabs
  " let g:nerdtree_tabs_open_on_console_startup=1

  " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
  vmap <Enter> <Plug>(EasyAlign)
  xmap <Enter> <Plug>(EasyAlign)

  "vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
  "    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
  "omap s :normal vs<CR>

  " nmap <Leader><Leader> V
  map q: :q
  " Shortcut to rapidly toggle `set list`
  nmap <leader>l :set list!<CR>
  " Use the same symbols as TextMate for tabstops and EOLs
  set listchars=tab:▸\ ,eol:¬

  nmap <Leader>t :TagbarToggle<CR>
  nmap <Leader>b :CtrlPBuffer<CR>
  nmap <Leader>r :CtrlPMRU<CR>

  " Buffers
  nmap <Leader>bn :bnext<CR>
  nmap <Leader>bp :bprevious<CR>
  noremap H :bprev<CR>
  noremap L :bnext<CR>
  nmap <Leader>d :bd<CR>

  nnoremap <silent> <LocalLeader>rs :source ~/.vimrc<CR>

  nnoremap <silent> <C-J> gEa<CR><ESC>ew " Split line(opposite to S-J joining line)
  nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
  nnoremap * #
  " nnoremap - :Switch<cr>

  " noremap  H ^
  " noremap  L $
  nnoremap U <C-r>

  " jk to leave insert mode
  inoremap jk <Esc>
  inoremap JK <Esc>
  inoremap Jk <Esc>
  inoremap jK <Esc>

  " reselect visual block after indent
  vnoremap < <gv
  vnoremap > >gv"
  " Movement in insert mode
  inoremap <C-h> <C-o>h
  inoremap <C-l> <C-o>a
  inoremap <C-j> <C-o>j
  inoremap <C-k> <C-o>k

  " make Y consistent with C and D. See :help Y.
  nnoremap Y y$

  " Hard mode
  map <UP> <NOP>
  map <DOWN> <NOP>
  map <LEFT> <NOP>
  map <RIGHT> <NOP>
  " Switching windows and close window
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
  map <C-q> <C-W>q " check this mapping

  " folds
  " let g:fold_cycle_default_mapping = 1 "disable default mappings
  " nmap <Tab><Tab> <Plug>(fold-cycle-open)
  " nmap <S-Tab><S-Tab> <Plug>(fold-cycle-close)

  let NERDTreeHijackNetrw=1
  let g:netrw_liststyle=3
  "
  vmap v <Plug>(expand_region_expand)
  vmap <C-v> <Plug>(expand_region_shrink)
  let g:rainbow_active = 1
  let g:select_and_search_active = 1

  " Git Gutter
  "
  nmap <leader>gj <Plug>(signify-next-hunk)
  nmap <leader>gk <Plug>(signify-prev-hunk)
  omap ic <plug>(signify-motion-inner-pending)
  xmap ic <plug>(signify-motion-inner-visual)
  omap ac <plug>(signify-motion-outer-pending)
  xmap ac <plug>(signify-motion-outer-visual)
  "
  "

  nmap <Leader>gs :Gstatus<CR>
  nmap <Leader>gc :Gcommit<CR>
  " nmap ]h <Plug>GitGutterNextHunk
  " nmap [h <Plug>GitGutterPrevHunk
  " nmap <Leader>ha <Plug>GitGutterStageHunk
  " nmap <Leader>hu <Plug>GitGutterRevertHunk
  " nmap <Leader>hv <Plug>GitGutterPreviewHunk

  " set background=dark

" Ugly hack to support both `.vimrc` syntax and `markdown`
" ```
" [//]: # vim: tabstop=2 softtabstop=2 shiftwidth=2
" ```
