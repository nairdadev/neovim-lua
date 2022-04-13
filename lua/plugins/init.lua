local fn = vim.fn


local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]


local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Acá van los plugins
return packer.startup(function(use)
  
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim" 
  use 'rcarriga/nvim-notify'  
  use "lunarvim/darkplus.nvim" -- Tema de NVIM
  use "EdenEast/nightfox.nvim" -- Tema NVIM  


  use 'kyazdani42/nvim-web-devicons' --Iconos para nvim-tree
  use 'kyazdani42/nvim-tree.lua'     -- Explorador de archivos
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

  use 'nvim-treesitter/nvim-treesitter-refactor'

  use 'nvim-lualine/lualine.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'romgrk/barbar.nvim' 
  use 'neovim/nvim-lspconfig' --LSP CONFIG
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
}



  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter 
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use "akinsho/toggleterm.nvim"


  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

