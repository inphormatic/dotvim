require('lualine').setup {
  options = {
    globalstatus = true,
    section_separators = { left = '', right = '' },
  },

  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'branch' },
    lualine_c = {
      'diff',
      { 'filename', path = 1 },
    },
    lualine_x = { 'filetype' },
    lualine_y = { 'location' },
    lualine_z = {
      { function() return '  ' .. os.date('%H:%M:%S') end, separator = { right = '' }, left_padding = 2 },
    },
  },

  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_z = { 'location' },
  },
}

