local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  use 'bluz71/vim-nightfly-guicolors'
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround' -- add, delete, change surroundings
  
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-tree/nvim-web-devicons'
  use("nvim-lualine/lualine.nvim")
  
  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  if packer_bootstrap then
    require('packer').sync()
  end
end)
