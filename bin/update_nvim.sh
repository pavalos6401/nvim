#!/usr/bin/env sh
# Updates neovim repository and plugins

git -C ~/.config/nvim pull
nvim --headless +PackerSync +PackerUpdate +PackerCompile +qa
