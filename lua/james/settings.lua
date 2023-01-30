vim = vim --makes the lsp happy for a bit

-- Shell Settings
	vim.opt.shell = "cmd.exe"
	vim.opt.shellquote= ""
	vim.opt.shellxquote = ""


-- Editor Settings

	-- Line Numbers
	vim.opt.number = true
	vim.opt.relativenumber = true

	-- Tab-Spacing
	vim.opt.tabstop = 4
	vim.opt.shiftwidth = 4
	vim.expandtab = true
	vim.opt.softtabstop = 4

	-- Auto-Indent
	vim.opt.smartindent = true

	-- Search Settings
	vim.opt.hlsearch = false
	vim.opt.incsearch = true

	-- Colours :D
	vim.opt.termguicolors = true

	-- Changes how many lines above/below to keep on the screen
	vim.opt.scrolloff = 8

	-- Why is the backup time 4s anyway?
	vim.opt.updatetime = 1000
