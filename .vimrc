"
" global vim settings
"
set nocompatible

" for signify faster refresh
set updatetime=500

let g:plug_shallow = 1

call plug#begin('~/.vim/plugged')

" Iosvkem colour scheme
" Terraform
" javascript
" lusty
" sparkup
" supertab
" supertab
" vim-ipython
" vim-latex-suite
" vim-virtualenv
"Plug 'Shougo/echodoc.nvim'
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
"Plug 'jremmen/vim-ripgrep'
"Plug 'scrooloose/syntastic'
"Plug 'xavierchow/vim-swagger-preview'
Plug '5long/pytest-vim-compiler', {'for': 'python'}
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'PieterjanMontens/vim-pipenv'
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'airblade/vim-rooter'
Plug 'alok/notational-fzf-vim'
Plug 'chrisbra/NrrwRgn'
"Plug 'cjrh/vim-conda', {'for': 'python'}
Plug 'cocopon/iceberg.vim'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'dense-analysis/ale'
Plug 'dhruvasagar/vim-open-url'
Plug 'fatih/vim-go'
Plug 'flowtype/vim-flow', {'for': 'javascript'}
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'hashivim/vim-terraform'
Plug 'jamessan/vim-gnupg'
Plug 'jez/vim-github-hub'
Plug 'jiangmiao/auto-pairs'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'junegunn/fzf', {'dir': '~/.zplug/repos/junegunn/fzf', 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'python-mode/python-mode', {'for': 'python', 'branch': 'develop'}
"Plug 'plytophogy/vim-virtualenv'|Plug 'lambdalisue/vim-pyenv'
Plug 'ludovicchabant/vim-gutentags'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-signify'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neutaaaaan/iosvkem'
Plug 'nvie/vim-flake8', {'for': 'python'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'prettier/vim-prettier'
"Plug 'psf/black', {'branch': 'stable', 'for': 'python'}
Plug 'rking/ag.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wincent/command-t', {'do': 'rake make'}
Plug 'wokalski/autocomplete-flow', {'for': 'javascript'}
Plug 'yssl/QFEnter'

call plug#end()

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo+='10,\"100,:20,%,n~/.viminfo

" local dirs
set directory=~/.local/share/vim/swap/
set backupdir=~/.local/share/vim/backup/
set undodir=~/.local/share/vim/undo/

" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" keep indents chars
set copyindent

" file settings
set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8,latin1
set noeol

" wildmenu settings
set wildmode=list:longest
set wildignore+=*.o,*.obj,*.class,*~,*.lo,*.bak,*.pyc

" hidden buffers
set hidden

" avoid intro prompt and abbreviate modified message
set shortmess+=Im

" enable backups
set backup

" search settings
set hlsearch
set ignorecase
set smartcase

" line settings
set number
set nowrap
set linebreak
set breakat=\ \ !@*-+;:,.?

" enable mouse
set mouse=a

" print
set printoptions+=syntax:y,number:y

" don't fsync on save
set nofsync

" visual bell
set vb t_vb=

"
" Customizations
"

" change leader
let mapleader = ","
let g:mapleader = ","

" fast saving
map <leader>w :w!<CR>
" fast vimrc reload
map <leader>r :source ~/.vimrc<CR>
" fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<CR>
" when vimrc is edited, reload it
autocmd! BufWritePost vimrc source ~/.vimrc

" sudo save
cmap w!! w !sudo tee % > /dev/null

" remember last cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" cursor column (highlight CursorColumn)
autocmd insertLeave * set nocursorcolumn
autocmd insertEnter * set cursorcolumn

" tab navigation
noremap <leader>n <esc>:tabnext<cr>
noremap <leader>m <esc>:tabprevious<cr>

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" nohl shortcut
nmap <silent> ,/ :nohl<CR>

" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{v:progname}                               " program name
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif

" 8 colors: torte desert delek koehler peachpuff zellner
" 256 colors: darkburn desert256 inkpot zenburn graywh
if &t_Co >= 256
  "colorscheme Iosvkem
  colorscheme inkpot
else
  colorscheme graywh
endif

" column dark grey
highlight ColorColumn ctermbg=8

set colorcolumn=80

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" gui-only stuff
if has('gui_running')
  " remove menu & toolbar from gui
  set guioptions+=mT guioptions-=mT
  " better font
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
  " this colorscheme looks good on gui
  colorscheme inkpot
  " better color column
  highlight ColorColumn guibg=grey20
endif

" enable dictionary and completion on func call
function! EnableWordsCompletion()
  set dictionary+=/usr/share/dict/american-english
  set dictionary+=/usr/share/dict/spanish
  set complete+=k
endfunction

" strip tailing whitespaces in all lines
function! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  if line("'Z") != line(".")
    echo "Stripped whitespace\n"
  endif
  normal `Z
endfunction

noremap <silent> <f2> :call StripTrailingWhitespace()<cr>

" notification on DOS-style line endings
autocmd BufReadPost * nested
  \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc', 0, 100)) |
  \   let b:reload_dos = 1 |
  \   redir => s:num_dos_ends |
  \   silent %s#\r$##n |
  \   redir END |
  \   e ++ff=dos |
  \   echomsg "File has ".
  \     substitute(s:num_dos_ends, '^\_.\{-}\(\d\+\).*', '\1', '').
  \     " DOS-style line endings out of ".line('$')." lines." |
  \ endif
autocmd BufReadPost * if exists('b:reload_dos') | unlet b:reload_dos | endif

" highlight >80 chars columns, error msg on >100 chars.
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>88v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>100v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

" complete default opts
set complete=.,w,b,u,i
"set completeopt=longest,menuone,preview
set completeopt=longest,menu,menuone,preview,noselect,noinsert

" folding shortcuts
nnoremap  <space> za
vnoremap  <space> zf

" autoclose quickfix window
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" pate toggle
set pastetoggle=<f12>


"
" Plugins settings
"

"notational-fzf-vim
let g:nv_main_directory=['~/Dropbox/Notes']
let g:nv_search_paths=['~/Dropbox/Notes']
let g:nv_default_extension='.md'
let g:nv_create_note_key='ctrl-x'
let g:nv_keymap={
                  \ 'ctrl-s': 'split ',
                  \ 'ctrl-v': 'vertical split ',
                  \ 'ctrl-t': 'tabedit ',
                  \ }
let g:nv_create_note_window='vertical split'

" Taglist
let g:Tlist_Process_File_Always = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Auto_Highlight_Tag = 1

noremap <f4> :TlistToggle<cr><c-w>h
noremap <silent><a-right> <c-]>
noremap <silent><a-left> <c-T>

" tex-setup
let g:tex_flavor='latex'

" vim-powerline
let g:Powerline_symbols='compatible'

" syntastic
let g:syntastic_disabled_filetypes=['python']

" jedi-vim
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
"let g:jedi#autocompletions_command = '<c-space>'
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#show_call_signatures_delay = 0
let g:jedi#show_call_signatures_modes = "i"
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#enable_speed_debugging = 0

" supertab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-p>'
let g:SuperTabMappingTabLiteral = '<c-tab>'

" terraform
let g:terraform_align = 1
let g:terraform_fold_sections = 1
let g:terraform_fmt_on_save = 1

" nv notes
let g:nv_search_paths = ['~/Dropbox/Notes', 'TODO.md', 'README.md', './docs']

" gutentags
let g:gutentags_ctags_tagfile = '.tags'

set tags=./.tags,.tags;

ca tn tabnew
ca th tabprev
ca tl tabnext

let g:netrw_gx="<cWORD>"

nmap <F1> <nop>
map <F1> <Esc>
imap <F1> <Esc>
vmap <F1> <Esc>
cmap <F1> <Esc>
omap <F1> <Esc>

set clipboard=unnamed

" vim-swagger-preview
nmap <unique> <leader>g <Plug>GenerateDiagram

set cmdheight=2
let g:echodoc#enable_at_startup=1

let g:black_fast = 1
let g:black_linelength = 100
let g:black_skip_string_normalization = 100
