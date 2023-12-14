return {
  -- UTILS
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins.configs.telescope')
    end,
    dependencies = 'nvim-lua/plenary.nvim',
    tag = '0.1.5',
  },
}

