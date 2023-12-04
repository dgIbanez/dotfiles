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
  -- essentials
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'  -- required by others plugins

  -- color scheme
  use 'bluz71/vim-nightfly-guicolors'

  -- tmux comatibility and pane focus for nvim
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
 
  -- nvim-tree and icons
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- lualine for bottom status line
  use("nvim-lualine/lualine.nvim")
  
  -- fuzzy finding w/ telescope (search)
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder, require BurntSushi/ripgrep for live_grep 

  -- syntax highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- utilities
  use 'tpope/vim-surround' -- add, delete, change surroundings
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
 
  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  if packer_bootstrap then
    require('packer').sync()
  end
end)
