vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-q>', '<C-w>q')

vim.api.nvim_create_autocmd('filetype', {
  callback = function()
    local opts = { buffer = true, remap = true }

    vim.keymap.set('n', 'h', '-', opts)
    vim.keymap.set('n', 'l', '<CR>', opts)

    vim.keymap.set('n', 'f', '%', opts)
    vim.keymap.set('n', 'r', 'R', opts)
    vim.keymap.set('n', 'x', 'D', opts)
  end,
  desc = 'Remapping for Netrw',
  pattern = 'netrw',
})

