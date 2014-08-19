set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'wting/rust.vim'

call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

" Colorscheme configuration.
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow

" Enable syntax highlighting.
syntax on
" Force .Rmd files to be highlighted as Markdown.
au BufReadPost *.Rmd set syntax=markdown

" Turn on line numbering.
set nu

" Airline config.
let g:airline_powerline_fonts=1
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='base16'

" Fix indentation settings to 4 space tabs.
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Ensure EOL.
set eol

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

highlight CustomError ctermbg=red ctermfg=white guibg=#592929
" Highlight the background of text that goes over the 80 column in red.
" Source: http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
call matchadd('CustomError', '\%81v.\+', -1)

" Highlight the background of extra white space text.
call matchadd('CustomError', '/^\t\+/', -1)
call matchadd('CustomError', '\s\+$', -1)

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Automatically strip trailing whitespace on write, without jumping the
" cursor.
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python,xml autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Map the exit insert mode command to jk
imap jk <c-c>

" Easier buffer navigation.
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Enable racer support
set hidden
let g:racer_cmd = "/home/ian/projects/lib/racer/bin/racer"
let $RUST_SRC_PATH="/home/ian/projects/lib/rust/src"
