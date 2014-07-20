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
" Force .Rmd files to be registered as Markdown files (for snipmate).
au BufNewFile,BufRead *.Rmd set filetype=markdown

" Change snipMate trigger mapping from <Tab> to <C-J>
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Turn on line numbering.
set nu

" Airline config.
let g:airline_powerline_fonts=1
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='base16'

" syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" LaTeX-Box
let g:LatexBox_latexmk_preview_continuously=1

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

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show all trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Highlight the background of text that goes over the 80 column in red.
" Source: http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Automatically strip trailing whitespace on write, without jumping the
" cursor.
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Map the exit insert mode command to jk
imap jk <c-c>

" Easier buffer navigation.
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

