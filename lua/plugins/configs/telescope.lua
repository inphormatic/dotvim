local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ci', builtin.lsp_incoming_calls)
vim.keymap.set('n', '<leader>co', builtin.lsp_outgoing_calls)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)


require('telescope').setup {
  defaults = {
    prompt_prefix = '   ',
    selection_caret = '🠮  ',
  }
}

