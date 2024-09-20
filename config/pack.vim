" Check if vim-plug is installed. Install if not yet installed.
let data_dir = has('nvim') ? stdpath('data').'/site' : '~/.vim'
if empty(glob(data_dir.'/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install missing plugins.
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $VIMRC
      \| endif

set nocompatible

" Plugins to install.
call plug#begin()

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'mhinz/vim-startify'

Plug 'itchyny/lightline.vim'

Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'psf/black', { 'branch': 'stable' }

Plug 'rafamadriz/friendly-snippets'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Themes
Plug 'sainnhe/everforest'
Plug 'tomasiser/vim-code-dark'

call plug#end()

" Additional plugin settings
if has('nvim')
  source $HOME/.config/nvim/config/plugs/nerdtree.vim
  source $HOME/.config/nvim/config/plugs/nerdcommenter.vim
  source $HOME/.config/nvim/config/plugs/everforest.vim
  source $HOME/.config/nvim/config/plugs/startify.vim
  source $HOME/.config/nvim/config/plugs/vimtex.vim
else
  source $HOME/.vim/config/plugs/nerdtree.vim
  source $HOME/.vim/config/plugs/nerdcommenter.vim
  source $HOME/.vim/config/plugs/everforest.vim
  source $HOME/.vim/config/plugs/startify.vim
  source $HOME/.vim/config/plugs/vimtex.vim
endif
