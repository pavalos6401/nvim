if has('termguicolors')
  set termguicolors
endif

" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"
" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"
" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"
" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"
" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"
" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
if has('FocusGained')
  execute "set <FocusGained>=\<Esc>[I"
endif
if has('FocusLost')
  execute "set <FocusLost>=\<Esc>[O"
endif
" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color in terminals such as
" kitty that do not support background color erase.
let &t_ut=''

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

" Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm

set wildignorecase ignorecase smartcase infercase
set virtualedit=block
set redrawtime=1500
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
