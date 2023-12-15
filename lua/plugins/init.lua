return {
  -- LSP
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugins.configs.lsp')
    end,
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      '<leader>r', desc = 'Rename word',
      'gd', desc = 'LSP definition',
      'gi', desc = 'LSP implementation',
      'gr', desc = 'LSP references',
      'gw', desc = 'LSP diagnostics',
      'K', desc = 'LSP documentation',
    },
  },

  {
    'numToStr/Comment.nvim',
    config = function()
      require('plugins.configs.comment')
    end,
    keys = {
      '<leader>cb', 'n', desc = "Comment blockwise",
      '<leader>cc', 'n', desc = "Comment linewise",
      '<leader>rc', 'v', desc = "Comment region linewise",
      '<leader>rv', 'v', desc = "Comment region blockwise",
    },
  },


  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins.configs.cmp')
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    event = 'LspAttach',
  },

  {
    'windwp/nvim-autopairs',
    config = function()
      require('plugins.configs.autopairs')
    end,
    event = 'InsertEnter',
  },


  -- Utils
  {
    'ggandor/leap.nvim',
    config = function()
      require('plugins.configs.leap')
    end,
    dependencies = 'tpope/vim-repeat',
    keys = {
      's', desc = 'Leap search',
    },
  },

  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins.configs.telescope')
    end,
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      '<leader>fa', desc = 'Autocommands',
      '<leader>fb', desc = 'Telescope buffers',
      '<leader>fc', desc = 'Commands history',
      '<leader>ff', desc = 'Telescope find files',
      '<leader>fg', desc = 'Telescope live grep',
      '<leader>fh', desc = 'Help tags',
      '<leader>fk', desc = 'Normal mode keymappings',
      '<leader>fm', desc = 'Find marks',
      '<leader>fs', desc = 'Telescope grep string',
      '<leader>ft', desc = 'Buffer tags',
      '<leader>fz', desc = 'Buffer fuzzy search',
      '<leader>gb', desc = 'Git branches',
      '<leader>gc', desc = 'Git commits',
      '<leader>gf', desc = 'Git ls-files',
      '<leader>gs', desc = 'Git status',
      '<leader>li', desc = 'LSP incoming calls',
      '<leader>lo', desc = 'LSP outgoing calls',
      '<leader>lr', desc = 'LSP references',
      '<leader>ls', desc = 'LSP document symbols',
      '<leader>lw', desc = 'LSP workspace symbols',
      '<leader>tst', desc = 'Treesitter functions and vars',
    },
    tag = '0.1.5',
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('plugins.configs.treesitter')
    end,
    event = 'BufReadPre',
  },

  {
    'Pocco81/auto-save.nvim',
    config = true,
    event = { 'InsertLeave', 'TextChanged' },
  },

  {
    'ThePrimeagen/harpoon',
    config = function()
      require('plugins.configs.harpoon')
    end,
    keys = {
      '<leader>h', desc = 'Harpoon open',
      '<leader>a', desc = 'Harpoon add file',
      '1', desc = 'Harpoon goto file 1',
      '2', desc = 'Harpoon goto file 2',
      '3', desc = 'Harpoon goto file 3',
      '4', desc = 'Harpoon goto file 4',
    },
  },

  {
    'tpope/vim-fugitive',
    cmd = { 'G', 'Git' },
  },


  -- UI
  {
    'lewis6991/gitsigns.nvim',
    config = true,
    event = { 'BufReadPre', 'BufNewFile' },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPre',
    opts = {},
  },

  {
    'sainnhe/edge',
    config = function()
      require('plugins.configs.colorscheme')
    end,
    lazy = false,
    opts = {},
    priority = 1000,
  },
}

