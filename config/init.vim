if has('nvim')
  source $HOME/.config/nvim/config/options.vim
  source $HOME/.config/nvim/config/syntax.vim
  source $HOME/.config/nvim/config/pack.vim
  source $HOME/.config/nvim/config/keymap.vim
  source $HOME/.config/nvim/config/theme.vim
else
  source $HOME/.vim/config/options.vim
  source $HOME/.vim/config/syntax.vim
  source $HOME/.vim/config/pack.vim
  source $HOME/.vim/config/keymap.vim
  source $HOME/.vim/config/theme.vim
endif
