return {
	{
		'mason-org/mason.nvim',
		opts = {},
	},
	{
		'mason-org/mason-lspconfig.nvim',
		opts = {
			ensure_installed = {
				'lua_ls',
				'clangd',
				'harper_ls',
			},
			automatic_enable = {
				exclude = {
					'harper_ls',
				},
			},
		},
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			-- local lspconfig = require 'lspconfig'
			vim.lsp.config('harper_ls', { filetypes = { 'markdown' }})
			vim.lsp.config('rust_analyser', { filetypes = { 'rust' }})
		end,
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			-- options
		},
	}
}
