return {
	'akinsho/bufferline.nvim',
	event = "VeryLazy",
	config = function()
		vim.o.showtabline = 2

		require("bufferline").setup({
			options = {
				mode = "buffers",
				always_show_bufferline = false,
				numbers = "none",
				diagnostics = "nvim_lsp",
				separator_style = "slant",
				show_buffer_close_icons = true,
				show_close_icon = false,
				close_command = function(n) Snacks.bufdelete(n) end,
				offsets = {
					{
						filetype = "snacks_layout_box",
					},
				}
			}
		})
	end,
	keys = {
		{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
		{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
	}
}
