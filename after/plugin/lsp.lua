local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

lsp.ensure_installed({
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('python-lsp-server', {
	settings = {
		Python = {
			ignore = {'E226', 'E303'}
		}
	}
})

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error= 'e',
    warn = 'w',
    hint = 'h',
    info = 'i'
  }
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
