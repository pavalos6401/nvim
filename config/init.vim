if has('nvim')
  source $HOME/.config/nvim/config/options.vim
  source $HOME/.config/nvim/config/pack.vim
  source $HOME/.config/nvim/config/keymap.vim
  source $HOME/.config/nvim/config/theme.vim
else
  source $HOME/.config/vim/options.vim
  source $HOME/.config/vim/pack.vim
  source $HOME/.config/vim/keymap.vim
  source $HOME/.config/vim/theme.vim
endif
