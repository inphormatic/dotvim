local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fa', builtin.autocommands, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ hidden=true }) end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>ft', builtin.current_buffer_tags, {})
vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, {})

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})

vim.keymap.set('n', '<leader>li', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>lo', builtin.lsp_outgoing_calls, {})
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>lw', builtin.lsp_workspace_symbols, {})

vim.keymap.set('n', '<leader>tst', builtin.treesitter, {})


require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      '.git',
      'build',
      'dist',
      'node_modules',
      '*.lock*',
    },
    prompt_prefix = '   ',
    selection_caret = '🠮  ',
  }
}

