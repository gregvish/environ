colorscheme slate
syntax on

set incsearch
set hlsearch

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set autochdir
set tags=tags;

if has("gui_running")
    set guioptions=
endif

let clip_file = "/tmp/.my_clipboard"
nmap <silent> ,y :call writefile(split(@", "\n"), clip_file, "b")<CR>
nmap <silent> ,p :let @" = join(readfile(clip_file, "b"), "\n")<CR>

