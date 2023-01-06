" File: init.vim

if has('nvim')
  source $HOME/.config/nvim/config/options.vim
  source $HOME/.config/nvim/config/pack.vim
  source $HOME/.config/nvim/config/keymap.vim
else
  source $HOME/.vim/config/options.vim
  source $HOME/.vim/config/pack.vim
  source $HOME/.vim/config/keymap.vim
endif
