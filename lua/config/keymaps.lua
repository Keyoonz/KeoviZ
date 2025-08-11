vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>c", "", { desc = "lsp" })
vim.keymap.set("n", "<leader>cd", function()
	vim.diagnostic.open_float()
end, { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>cf", function()
	vim.lsp.buf.format()
end, { desc = "Format buffer" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code actions" })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "go to left window" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "go to left window" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "go to left window" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "go to left window" })

vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = "Swap with above line" })
vim.keymap.set('n', '<A-j>', ':m .1<CR>==', { desc = "Swap with above line" })

vim.keymap.set('n', '<esc>', function()
	vim.cmd("nohlsearch")
end, { desc = "Clear search result" })
