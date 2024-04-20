" part of https://gist.github.com/miguelgrinberg/527bb5a400791f89b3c4da4bd61222e4

" filetype detection 
filetype on

" syntax highlighting
syntax on

" status bar 
set laststatus=2

" numbered lines
set number

" file format
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" default editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80,120
highlight ColorColumn ctermbg=23
set expandtab
set viminfo='25,\"50,n~/.viminfo
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

" highligt trailing spaces
highlight TrailingSpace ctermbg=red
match TrailingSpace /\s\+$/

" indent/unindent with tab/shift-tab 
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv
