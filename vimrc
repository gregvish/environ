colorscheme slate
syntax on

set incsearch
set hlsearch
set hidden

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set wildmode=longest,list

set tags=tags;

highlight UnwantedSpaces ctermbg=red guibg=red
match UnwantedSpaces /\s\+\%#\@<!$\|^\t\+\%#\@<!$/
autocmd InsertLeave * redraw!

let clip_file = "/tmp/.my_clipboard"
nmap <silent> ,y :call writefile(split(@", "\n"), clip_file, "b")<CR>
nmap <silent> ,p :let @" = join(readfile(clip_file, "b"), "\n")<CR>

set rtp+=/usr/share/doc/fzf/examples/
set rtp+=/opt/fzf.vim/

highlight ColorColumn ctermbg=235
set cc=100

cd `findroot`
