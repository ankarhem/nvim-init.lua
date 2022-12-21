-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Install tokyonight and apply theme
  use({
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd('colorscheme tokyonight-storm')

    end
  })

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use({
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  })

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")

  -- Rust
  use('simrat39/rust-tools.nvim')
  use('nvim-lua/plenary.nvim') -- Debugging
  use('mfussenegger/nvim-dap') -- Debugging

  -- Comment toggler
  use({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  })

  use({
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {} end,
  })


  -- Navigation
  use('ggandor/lightspeed.nvim')

  -- LSP progress
  use({
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  })

  -- Minimap (requires code-minimap `cargo install --locked code-minimap`)
  use('wfxr/minimap.vim')

end)
