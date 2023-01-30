local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    }
})

vim.keymap.set("n", "<leader>a", mark.add_file ) -- a to [a]dd file to harpoon
vim.keymap.set("n", "<leader>d", mark.rm_file ) -- d to [d]elete file from harpoon
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu ) -- h to see [h]arpoon

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end )
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end )
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end )
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end )
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end )
vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end )
vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end )
vim.keymap.set("n", "<leader>8", function() ui.nav_file(8) end )
vim.keymap.set("n", "<leader>9", function() ui.nav_file(9) end )
vim.keymap.set("n", "<leader>0", function() ui.nav_file(10) end )
