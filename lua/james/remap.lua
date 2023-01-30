vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

-- Primeagen's highlight + move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Centering the cursor while moving
--Moveing Half-Pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--Searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Leader p pastes over current line but preserves yank register
vim.keymap.set("n", "<leader>p", "pkddyy")

-- Leader y begins yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")

-- Ctrl+Q maps to visual block mode.
vim.keymap.set("n", "<C-Q>", "<C-v>")



