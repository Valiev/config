" vim: tabstop=2 softtabstop=2 shiftwidth=2

" Basic {
  syntax on
  filetype on
  filetype plugin on
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
  set incsearch       " Искать по мере ввода символов
  set hlsearch        " Подсвечивать все найденные строки
  set history=500
  set undolevels=50
  set completeopt=longest,menuone     " автодополнение как в нормальном IDE
" }


" Folds {
  set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
  set foldenable
  set foldmethod=manual
" }


" GUI features {
  set background=light
  set nocp
  set noerrorbells  " Тихо.
  set vb            " Еще тише. :)
  set showmatch     " Подсвечивать парные скобки 
  set et            " Пробелы вместо табов.
  set scrolloff=2
  set nonu          " Выключить нумерацию строк.
  set linespace=0
  set ruler         " Показывать в нижней строке позицию курсора.
  set t_Co=256

  if has("autocmd") " resume last position in file 
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif
  colorscheme koehler

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
  autocmd FileType python set complete+=k~/.vim/syntax/python.vim 
  "isk+=.,(
  "autocmd FileType python setlocal noet tabstop=8 softtabstop=8 shiftwidth=8
  autocmd FileType python au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/ | syn match Error /^\t*\zs \+/
  set tags=~/git/work/tests/tags
  let g:pylint_cwindow = 0 " Disable pylint window
" }

" let g:load_doxygen_syntax=1

" Key mapping {
  map <F5> :!make<CR>
  map <F2> :A<CR>
  map <F3> :TlistToggle<CR>
  map <F4> :GitBlame<CR>
  map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" }
