local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({

  -- file explorer
  'kyazdani42/nvim-tree.lua',

  -- indent line
  'lukas-reineke/indent-blankline.nvim',

  -- autopair
  'windwp/nvim-autopairs',

  -- icons
  'kyazdani42/nvim-web-devicons',

  -- tagviewer
  'liuchengxu/vista.vim',

  -- treesitter interface
  'nvim-treesitter/nvim-treesitter',

  -- colorschemes
  'tanvirtin/monokai.nvim',
  'folke/tokyonight.nvim',
  
  -- bufferline
  {'akinsho/bufferline.nvim', dependencies = 'kyazdani42/nvim-web-devicons'},
  
  -- LSP
  'neovim/nvim-lspconfig',
  -- nvim-lsp-installer
  'williamboman/nvim-lsp-installer',
  -- toogleterm
  'akinsho/toggleterm.nvim',

  -- autocomplete
  {'hrsh7th/nvim-cmp',
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
    },
  },

  -- statusline
  {
    'famiu/feline.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
  },

  -- git labels
  {
    'lewis6991/gitsigns.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
  },
  -- copilot
  {
    'zbirenbaum/copilot.lua'
  },

  'alexghergh/nvim-tmux-navigation',

  'Mofiqul/vscode.nvim',
})

