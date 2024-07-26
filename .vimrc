" Systax highlight
syntax on
color peachpuff

" Status bar
set laststatus=2
set statusline=%{StatuslineGit()}
set statusline+=%=%m\ %c\ %P\ %f

" Autoindenting
set autoindent

"Highlight search
set hlsearch

"Searches are case insensitive unless they contain at least one capital letter
set ignorecase
set smartcase

"Display incomplete commands
set showcmd

"A better menu in command mode
set wildmenu
set wildmode=longest:full,full

"Display line numbers on the left side
set number

" Explorer settings
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_liststyle=3

" Get current branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
