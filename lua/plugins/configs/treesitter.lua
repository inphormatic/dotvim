require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'c',
    'lua',
    'vim',
    'vimdoc',
    'query',
  },

  auto_install = true,

  ignore_install = {
    'd',
    'git_config',
    'git_rebase',
    'gitignore',
    'gosum',
    'gomod',
    'gowork',
    'gpg',
    'ini',
    'ninja',
    'passwd',
    'rasi',
    'ron',
    'todotxt',
    'ungrammar',
    'v',
    'vala',
    'yang',
    'yuck',
  },

  highlight = { enable = true },
}

