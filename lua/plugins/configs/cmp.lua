local cmp = require('cmp')
local luasnip = require('luasnip')

require('luasnip.loaders.from_vscode').lazy_load()


cmp.setup {
  enabled = function()
    local context = require('cmp.config.context')

    if vim.api.nvim_get_mode().mode == 'c' then
      return true
    else
      return not context.in_treesitter_capture('comment') and not context.in_syntax_group('Comment')
    end
  end,

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    (" .. (strings[2] or "") .. ")"

      return kind
    end
  },

  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-q>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true },

    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {'i', 's'}),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {'i', 's'}),
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sources = {
    { name = 'buffer' },
    { name = 'nvim_lsp_document_symbol' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' },
  },

  view = {
    entries = {
      name = 'custom',
      selection_order = 'near_cursor',
    },
  },

  window = {
    completion = {
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      col_offset = -3,
      side_padding = 0,
    }
  },
}


-- PMenu customizazion
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#292733", fg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { fg = "#ACDDE2", bg = "#212128" })
