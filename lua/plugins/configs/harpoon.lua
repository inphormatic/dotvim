local mark = require('harpoon.mark')
local term = require('harpoon.term')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<A-1>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<A-2>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<A-3>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<A-4>', function() ui.nav_file(4) end)


local function get_command()
  vim.ui.input({prompt = 'Input command: '}, function(input)
    term.sendCommand(1, input .. '\n')
  end)
end

vim.keymap.set('n', '<leader>sc', get_command)

vim.keymap.set('n', '<leader>s1', function() term.gotoTerminal(1) end)
vim.keymap.set('n', '<leader>s2', function() term.gotoTerminal(2) end)
vim.keymap.set('n', '<leader>s3', function() term.gotoTerminal(3) end)
vim.keymap.set('n', '<leader>s4', function() term.gotoTerminal(4) end)

