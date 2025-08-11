return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async", -- required by nvim-ufo
		"nvim-treesitter/nvim-treesitter"
	},
	config = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "v:lua.require('ufo').foldexpr()"
		vim.opt.foldlevel = 99   -- open all folds initially
		vim.opt.foldlevelstart = 99  -- set foldlevel when buffer loads


		local ufo = require('ufo')

		-- Optional: keymaps for folding
		vim.keymap.set('n', 'zR', ufo.openAllFolds)
		vim.keymap.set('n', 'zM', ufo.closeAllFolds)
		vim.keymap.set('n', 'K', function()
			local winid = ufo.peekFoldedLinesUnderCursor()
			if not winid then
				vim.lsp.buf.hover()
			end
		end)

		ufo.setup()
	end,
}
