return {
	"Keyoonz/nvim-kolorz",
	name = "nvim-kolorz",
	lazy = false,
	priority = 1000,
	config = function()
		require("nvim-kolorz").setup({
			konfiz_integrated = true,
		})
		vim.cmd("colorscheme nvim-kolorz")
	end,
}
