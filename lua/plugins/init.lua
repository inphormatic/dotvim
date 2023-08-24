return {
  -- LSP
  {
    'neovim/nvim-lspconfig',
    build = ':MasonUpdate',
    cmd = {
      'LspInfo',
      'Mason',
    },
    config = function()
      require('plugins.configs.lsp')
    end,
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'folke/neodev.nvim',
    },
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { 'gD', desc = 'LSP declaration' },
      { 'gd', desc = 'LSP definition' },
      { 'gi', desc = 'LSP inplementation' },
      { 'gl', desc = 'LSP diagnostics' },
      { 'gr', desc = 'LSP references' },
      { 'K', desc = 'LSP documentation' },
    },
  },

  {
    'j-hui/fidget.nvim',
    event = 'LspAttach',
    opts = {},
    tag = 'legacy',
  },


  -- AUTOCOMPLETION
  {
    'hrsh7th/nvim-cmp',
    cmd = 'CmpStatus',
    config = function()
      require('plugins.configs.cmp')
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
    },
    event = 'LspAttach',
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },


  -- GIT
  {
    'lewis6991/gitsigns.nvim',
    config = true,
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    'tpope/vim-fugitive',
    cmd = 'Git',
  },


  -- UTILS
  {
    'numToStr/Comment.nvim',
    config = true,
    keys = {
      { mode = { 'n', 'v' }, 'gcc' },
      { mode = { 'n', 'v' }, 'gbc' },
    },
  },

  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    config = function()
      require('plugins.configs.telescope')
    end,
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      { '<leader>ci', desc = 'LSP incoming calls' },
      { '<leader>co', desc = 'LSP outgoing calls' },
      { '<leader>fb', desc = 'Telescope buffers' },
      { '<leader>ff', desc = 'Telescope find files' },
      { '<leader>fg', desc = 'Telescope live grep' },
      { '<leader>fh', desc = 'Telescope help tags' },
    },
    tag = '0.1.2',
  },

  {
    'ThePrimeagen/harpoon',
    config = function()
      require('plugins.configs.harpoon')
    end,
    keys = {
      { '<leader>a', desc = 'Harpoon add file' },
      { '<C-e>', desc = 'Harpoon open ui' },
      { '<A-1>', desc = 'Harpoon goto file 1' },
      { '<A-2>', desc = 'Harpoon goto file 2' },
      { '<A-3>', desc = 'Harpoon goto file 3' },
      { '<A-4>', desc = 'Harpoon goto file 4' },
      { '<leader>sc', desc = 'Harpoon send cmd to terminal' },
      { '<leader>s1', desc = 'Harpoon goto terminal 1' },
      { '<leader>s2', desc = 'Harpoon goto terminal 2' },
      { '<leader>s3', desc = 'Harpoon goto terminal 3' },
      { '<leader>s4', desc = 'Harpoon goto terminal 4' },
    },
  },

  {
    'Pocco81/auto-save.nvim',
    config = true,
    event = 'InsertLeave',
  },

  {
    'tpope/vim-surround',
    keys = {
      { 'cs', desc = 'Change first surround with the second' },
    }
  },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
  },


  -- UI
  {
    'sainnhe/sonokai',
    config = function()
      require('plugins.configs.colorscheme')
    end,
    lazy = false,
    priority = 1000,
  },

  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.configs.lualine')
    end,
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPre',
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('plugins.configs.treesitter')
    end,
    event = { "BufReadPre", "BufNewFile" },
  },
}

