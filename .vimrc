" disable VI compatibility
set nocompatible

" detect filetype and activate plugins and indent guides
filetype on
filetype plugin on
filetype indent on
syntax on

" line numbers
set number
set relativenumber

" cursor highlight
set cursorline

" Tab to 4 columns (and use spaces instead of tabs)
set tabstop=4
set expandtab

" While searching though a file incrementally highlight matching characters as you type.
set incsearch


" Ignore capital letters during search and make it smart
set ignorecase
set smartcase

" Set default substitution to be global (change all lines, not only the
" current)
" For /%s/foo/bar/ instead of /%s/foo/bar/g
set gdefault

" Show partial command you type in the last line of the screen.
set showcmd

" shows vim mode on last line
set showmode

" highlight search
set hlsearch

set history=1000

set ww=[,]

" enable autocomplete (akin to bash) for commands
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Replace :S with :s to avoid misspellings
command! -nargs=1 -range S execute '<line1>,<line2>s' <q-args>

set nowrap
augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType text,tex,plaintex,markdown setlocal wrap
    autocmd FileType tex,plaintex setlocal spell
    " Set wrap for files with no filetype
    autocmd BufRead,BufNewFile * if &filetype ==# '' | setlocal wrap | endif
    autocmd FileType tex,plaintex setlocal foldmethod=marker
    autocmd FileType tex,plaintex setlocal foldmarker=\\iffalse,\\fi
augroup END


" Disable movement with arrow keys
" nnoremap -> normal mode map, inoremap -> insert mode map, vnoremap -> visual
" mode map
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Disable F1 for help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"  -------------------------------------
"  --------------leader-----------------
"  -------------------------------------

let mapleader = " "
" remove default space behavior
nnoremap <space> <nop>

nnoremap <leader>w :noh<CR>
nnoremap <leader>c <C-W>c
nnoremap <leader><space> <C-W>w
nnoremap <leader><tab> <C-W>W
nnoremap <leader>bn :bn<CR> " Next Buffer
nnoremap <leader>bp :bp<CR> " Previous Buffer
nnoremap <leader>bd :bd<CR> " Delete Buffer
nnoremap <leader>v :vsplit<CR><C-w>w " Creates a new window, rotates, and swaps focus

" When indenting things in visual mode, keep the selection
vnoremap < <gv
vnoremap > >gv

" Delete line without ruining registers
nnoremap <leader>d "_dd
