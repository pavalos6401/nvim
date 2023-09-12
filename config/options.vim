if has('termguicolors')
  set termguicolors
endif

if !has('nvim')
  if empty($XDG_DATA_HOME)
    let $XDG_DATA_HOME=$HOME.'/.local/share'
  endif

  if !isdirectory($XDG_DATA_HOME.'/vim/swap')
    call mkdir($XDG_DATA_HOME.'/vim/swap', "p", 0700)
  endif
  if !isdirectory($XDG_DATA_HOME.'/vim/backup')
    call mkdir($XDG_DATA_HOME.'/vim/backup', "p", 0700)
  endif
  if !isdirectory($XDG_DATA_HOME.'/vim/undo')
    call mkdir($XDG_DATA_HOME.'/vim/undo', "p", 0700)
  endif

  set directory=$XDG_DATA_HOME/vim/swap/
  set backupdir=$XDG_DATA_HOME/vim/backup/
  set undodir=$XDG_DATA_HOME/vim/undo
  set undofile
endif

set wildignorecase ignorecase smartcase infercase
set virtualedit=block
set redrawtime=1500
set mouse=a
syntax on

set noshowmode noruler list
set completeopt=menu
set completeopt+=menuone
try
  set completeopt+=noselect
catch
endtry
set scrolloff=2
set showtabline=1
set winwidth=30
set pumheight=15
set cmdheight=1
set laststatus=2
set listchars=tab:\ \ ,nbsp:+,trail:·,extends:→,precedes:←

" tab
set smarttab noexpandtab autoindent  smartindent shiftround
set tabstop=2 shiftwidth=2 softtabstop=2

" wrap
set linebreak
set whichwrap=h,l,<,>,[,],~
set breakindentopt=shift:2,min:20
set showbreak=↳
set foldlevelstart=99
set foldmethod=syntax

set number
if has('signcolumn')
  set signcolumn=yes
endif

set textwidth=100
set colorcolumn=80
set background=dark
