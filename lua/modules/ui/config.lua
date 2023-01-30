-- File: config.lua

local config = {}

function config.oxocarbon()
  vim.opt.background = 'dark'
  vim.cmd.colorscheme('oxocarbon')
end

function config.catppuccin()
  vim.opt.background = 'dark'

  local catppuccin = require('catppuccin')

  catppuccin.setup({
    flavour = "mocha",
  })

  vim.cmd.colorscheme('catppuccin')
end

function config.lualine()
  if not packer_plugins['nvim-web-devicons'].loaded then
    vim.cmd('packadd nvim-web-devicons')
  end

  local ll = require('lualine')

  ll.setup({
    extensions = {
      'nvim-tree',
    },
  })
end

function config.bufferline()
  if not packer_plugins['nvim-web-devicons'].loaded then
    vim.cmd('packadd nvim-web-devicons')
  end

  vim.opt.termguicolors = true

  local bl = require('bufferline')

  bl.setup({
    options = {
      modified_icon = '✥',
      buffer_close_icon = '',
      always_show_bufferline = false,
    },
  })
end

function config.nvim_tree()
  if not packer_plugins['nvim-web-devicons'].loaded then
    vim.cmd('packadd nvim-web-devicons')
  end

  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  vim.opt.termguicolors = true

  local nvim_tree = require('nvim-tree')

  local function open_nvim_tree(data)
    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then
      return
    end

    -- create a new, empty buffer
    vim.cmd.enew()

    -- wipe the directory buffer
    vim.cmd.bw(data.buf)

    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
  end

  nvim_tree.setup()
  vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
end

function config.dashboard()
  if not packer_plugins['telescope.nvim'].loaded then
    vim.cmd('packadd telescope.nvim')
  end

  local db = require('dashboard')

  db.setup({
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      packages = { enable = true },
      shortcut = {
        {
          desc = 'Update Plugins',
          action = 'PackerUpdate',
          key = 'u',
        },
        {
          desc = 'Old Files',
          action = 'Telescope oldfiles',
          key = 'h',
        },
        {
          desc = 'Files',
          action = 'Telescope find_files',
          key = 'f',
        },
      },
      footer = {},
    },
  })
end

function config.gitsigns()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd('packadd plenary.nvim')
  end

  local gs = require('gitsigns')

  gs.setup()
end

function config.nvim_notify()
  if not packer_plugins['telescope.nvim'].loaded then
    vim.cmd('packadd telescope.nvim')
  end
end

return config
