-- Auto-save
vim.api.nvim_create_autocmd({ 'InsertLeave', 'TextChanged' }, {
  group = vim.api.nvim_create_augroup('AutoSave', {}),
  callback = function()
    if vim.api.nvim_buf_get_name(0) == 0 or vim.bo.buflisted == false then
      return
    end

    vim.cmd 'silent w'
    vim.api.nvim_echo(
      {
        { '󰄳 ', 'LazyProgressDone' },
        { ' file autosaved at ' .. os.date('%I:%M %p') }
      },
      false,
      {}
    )
    vim.defer_fn(function()
      vim.api.nvim_echo({}, false, {})
    end, 800)
  end,
})
