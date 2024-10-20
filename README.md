# nvim

My (neo)vim configuration files.

I use the `vimscript` branch for my Vim configuration and for lab machines
that have an older version of Neovim. This configuration should be fairly
compatible with any system.

## Installation

You can install this configuration for Vim, along with the rest of my dotfiles,
using my [dotfiles repo](https://gitlab.com/pedro-avalos/dotfiles).

Otherwise, if you want to just install this configuration for Vim:

```shell
git clone https://gitlab.com/pedro-avalos/nvim.git --branch vimscript ~/.vim
ln -s ~/.vim/init.vim ~/.vimrc
```

If you want to install it for Neovim:

```shell
git clone https://gitlab.com/pedro-avalos/nvim.git --branch vimscript ~/.config/nvim
```
