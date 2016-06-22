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
- [jaxbot/semantic-highlight](https://github.com/jaxbot/semantic-highlight.vim) plugin brings
  every variable is a different color;
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
- [Shougo/deoplete.nvim](https://github.com/Shougo/deoplete.nvim) plugin
  provides great auto-completion for most of the scripting languages.
- [osyo-manga/vim-monster](https://github.com/osyo-manga/vim-monster) plugin
  provides auto-completion ruby scripts.
- [rizzatti/dash.vim](https://github.com/rizzatti/dash.vim) plugin
  provides documentation using Dash application.
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
- FIXME
- [godlygeek/csapprox](https://github.com/url_here) makes GVim-only
  colorschemes Just Work in terminal Vim
- [ervandew/supertab](https://github.com/ervandew/supertab) allows you to use
  `<Tab>` for all your insert completion needs
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) adds
  filetype glyphs (icons) to other plugins

## Configuration


- `nowrap` disables word wrapping. Easily toggled with `cow` mapping
- `smartindent` enables smart indentation after `{` and others
- `showbreak=⁻` starts wrapped lines with this symbol
- `breakindent` shows wrapped line will continue visually indented
- `linebreak` wraps long lines at a character in `'breakat'`
   rather than at the last character that fits on the screen.
- `textwidth=80` sets maximum width of text that is being inserted to 80
- `backspace=indent,eol,start` enables `backspace`
- `clipboard+=unnamed` yanks go on clipboard instead.
- `fo+=o` automatically inserts the current comment leader after hitting 'o' or 'O' in Normal mode.
- `fo-=r` disables automatically insertion of a comment leader after an enter
colorscheme atom-dark-256
colorscheme camo

## Mappings
nnoremap <Leader><Leader> :Goyo<CR>
save
Movement in insert mode
Hard mode
Switching windows and close window
