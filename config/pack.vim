" Check if vim-plug is installed. Install if not yet installed.
if has('nvim')
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
endif

" Install missing plugins.
autocmd VimEnter *
      \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | q
      \| endif

set nocompatible

" Plugins to install.
call plug#begin()

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'itchyny/lightline.vim'

Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'

Plug 'rafamadriz/friendly-snippets'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'sainnhe/everforest'

call plug#end()

" Additional plugin settings
if has('nvim')
  source $HOME/.config/nvim/config/plugs/nerdtree.vim
  source $HOME/.config/nvim/config/plugs/nerdcommenter.vim
  source $HOME/.config/nvim/config/plugs/everforest.vim
else
  source $HOME/.config/vim/plugs/nerdtree.vim
  source $HOME/.config/vim/plugs/nerdcommenter.vim
  source $HOME/.config/vim/plugs/everforest.vim
endif
