vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(_)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
    vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, {})
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {})
    vim.keymap.set('n', 'gw', vim.diagnostic.open_float, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  end,
})


require('plugins.configs.mason')


local lsp = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local get_servers = require('mason-lspconfig').get_installed_servers

for _, server in ipairs(get_servers()) do
  lsp[server].setup {
    capabilities = lsp_capabilities,
  }
end

-- Styling
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded',
  }
)

vim.diagnostic.config {
  float = { border = "rounded" },
}
