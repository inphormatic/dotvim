local UTILS = require('core.utils')


-- Automatically prints out available LSPs if no one is detected
-- for the current filetype
vim.api.nvim_create_autocmd("FileType", {
	callback = function(t)
		if vim.bo[t.buf].buftype ~= '' then
      return
    end

    -- You don't need an LSP for text
    if t.match == 'text' then
      return
    end

    local mason_lsp = require('mason-lspconfig')
		local available_servers = mason_lsp.get_available_servers({ filetype = t.match })
		local installed_servers = mason_lsp.get_installed_servers()

    if UTILS.tablelen(available_servers) == 0 then
      return
    end

    for _, available in ipairs(available_servers) do
			for _, installed in ipairs(installed_servers) do
				if available == installed then
          return
        end
			end
		end

		vim.schedule(vim.cmd.LspInstall)
	end,
})


-- Setup mason
require('mason').setup {
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
}


require('mason-lspconfig').setup {
  ensure_installed = { 'lua_ls' },
}

