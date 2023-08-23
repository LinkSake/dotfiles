-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(user)
  -- packer
  use('wbthomason/packer.nvim')

  -- misc shared lua functions
  use('nvim-lua/plenary.nvim')

  -- tmux and window nav
  use('christoomey/vim-tmux-navigator')

  -- maximize focused window
  use('szw/vim-maximizer')

  -- block and line commenting
  use('numToStr/Comment.nvim')

  -- file explorer / tree
  use{
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    } 
  }

  -- status line
  use('nvim-lualine/lualine.nvim')

  -- lsp config for elixir-ls support
  use ('neovim/nvim-lspconfig')

  -- cmp framework for auto-completion support
  use ('hrsh7th/nvim-cmp')

  -- install different completion source
  use ('hrsh7th/cmp-nvim-lsp')
  use ('hrsh7th/cmp-buffer')
  use ('hrsh7th/cmp-path')
  use ('hrsh7th/cmp-cmdline')

  -- you need a snippet engine for snippet support
  -- here I'm using vsnip which can load snippets in vscode format
  use ('hrsh7th/vim-vsnip')
  use ('hrsh7th/cmp-vsnip')

  -- treesitter for syntax highlighting and more
  use ('nvim-treesitter/nvim-treesitter')

  -- colorscheme
  use {
    'nobbmaestro/nvim-andromeda',
    requires = { 'tjdevries/colorbuddy.nvim', branch = 'dev' }
  } 

  if packer_bootstrap then
    require('packer').sync()
  end
end)
