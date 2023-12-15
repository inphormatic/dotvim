require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'c',
    'css',
    'go',
    'html',
    'javascript',
    'lua',
    'rust',
    'typescript',
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
    'gomod',
    'gosum',
    'gowork',
    'gpg',
    'ini',
    'ninja',
    'passwd',
    'rasi',
    'robot',
    'ron',
    'todotxt',
    'ungrammar',
    'v',
    'vala',
    'yang',
    'yuck',
  },

  highlight = {
    disable = function(_, buf)
      local max_filesize = 100 * 1024
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,

    enable = true,
  },
}

