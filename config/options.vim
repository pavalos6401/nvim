" File: options.vim

if has('termguicolors')
  set termguicolors
endif

set virtualedit=block
" set clipboard=unnamed
set wildignorecase
set redrawtime=1500
set ignorecase
set smartcase
set infercase
syntax on
set mouse=a

set completeopt=menu
set completeopt+=menuone
try
  set completeopt+=noselect
catch
endtry
set noshowmode
set scrolloff=2
set noruler
set showtabline=1
set winwidth=30
set pumheight=15
set cmdheight=1
set laststatus=2
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

" tab
set smarttab
set expandtab
set autoindent
set smartindent
set smartindent
set shiftround
set tabstop=2
set shiftwidth=2
set softtabstop=2

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
