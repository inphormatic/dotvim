require('lualine').setup {
  options = {
    globalstatus = true,
    section_separators = { left = '', right = '' },
  },

  sections = {
    lualine_a = {
      { 'mode', right_padding = 2 },
    },
    lualine_b = { 'location' },
    lualine_c = {
      { 'filename', path = 1 },
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ' }
      },
    },
    lualine_x = {
      {
        'diff',
        diff_color = {
          added =  { fg = '#98BE65' },
          modified =  { fg = '#FFA726' },
          removed =  { fg = '#EC5f67' },
        },
        symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
      },
    },
    lualine_y = { 'filetype' },
    lualine_z = { 'branch' },
  },

  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_z = { 'location' },
  },
}
