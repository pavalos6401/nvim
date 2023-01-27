# nvim

My (neo)vim configuration files.

The `vimscript` branch allows for a more backwards-compatible and simpler version of my neovim configuration. Since I almost entirely use neovim, the intent behind my `vimscript` branch is to have a version that works on the older versions of vim and neovim that my university's lab machines have installed.

## Installation

Neovim or vim may show a lot of warnings after installation. Simply press enter
as the warnings mention. They will not appear after the plugins are
auto-installed.

### Neovim

For older versions of neovim that do not support a lua-based configuration, use
the `vimscript` branch.

1. Clone the repository to `~/.config/nvim`.
2. Open neovim. All the plugins will auto-install.

<details>
<summary>Installation of lua-based configuration.</summary>

```sh
$ git clone https://gitlab.com/pavalos6401/nvim.git ~/.config/nvim
$ nvim
```

</details>

<details>
<summary>Installation of vimscript-based configuration.</summary>

```sh
$ git clone https://gitlab.com/pavalos6401/nvim.git ~/.config/nvim --branch=vimscript
$ nvim
```

</details>

### Vim

1. Clone the repository to `~/.vim`.
2. Symlink (or copy) `~/.vim/init.vim` to `~/.vimrc`.
3. Open vim. All the plugins will auto-install.

<details>
<summary>Installation of vim configuration.</summary>

```sh
$ git clone https://gitlab.com/pavalos6401/nvim.git ~/.vim --branch=vimscript
$ ln -Tsf ~/.vim/init.vim ~/.vimrc
$ vim
```

</details>
