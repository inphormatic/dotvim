vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>')


require('toggleterm').setup {
  size = function(term)
    if term.direction == 'horizontal' then
      return 18
    elseif term.direction == 'vertical' then
      return vim.o.columns * 0.4
    end
  end,
}

