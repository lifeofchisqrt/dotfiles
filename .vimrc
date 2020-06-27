" non compatible with old vi version
set nocompatible
" turn on syntax highlighting
syntax on
" recognize plugins
filetype plugin on
" onmicompletion - autocomplete
set omnifunc=syntaxcomplete#Complete
colorscheme nord
filetype indent on
" display linenumbers as relativenumber to current line
set relativenumber
set number
set wrap
set modelines=0
set encoding=utf-8
set showmode
set showcmd
set matchpairs+=<:>
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25
" open splitpanes to right
set splitbelow
set splitright
" Search down into subfolders
" Provides tab-completion for file search
set path+=**
" Display all matching files when we tab complete
set wildmenu
" indentation and spacing to match standard python
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
let python_highlight_all = 1

" Statusline
set laststatus=2
" Functions for git
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#ToolbarButton#
set statusline+=%{StatuslineGit()}\|
set statusline+=%#StatusLine#
set statusline+=\ %t
set statusline+=%m\ 
set statusline+=%=
set statusline+=%#StatusLine#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

