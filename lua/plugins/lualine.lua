return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local lualine = require("lualine")
		local icons = require("assets.icons")
		local default_config = {
			options = {
				theme = "nightfly",
				globalstatus = true,
				section_separators = '',
				component_separators = '',
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch' },
				lualine_c = {
					"filename",
					{
						"diagnostics",
						symbols = {
							error = icons.diagnostics.Error,
							warn = icons.diagnostics.Warn,
							info = icons.diagnostics.Info,
							hint = icons.diagnostics.Hint,
						},
					}
				},
				lualine_x = { 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			},
			extensions = {
				'lazy',
				'mason',
			},
		}
		-- Minimal config for Snacks Explorer
		local explorer_config = {
			sections = {
				lualine_a = { 'mode' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					function() return "Explorer" end
				}
			}
		}
		-- Setup default lualine on startup
		lualine.setup(default_config)
		-- Autocommand to switch layout when Snacks Explorer is open
		vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
			callback = function()
				local filetype = vim.bo.filetype
				if filetype:match("snacks_picker_list") then
					require("lualine").setup(explorer_config)
				else
					require("lualine").setup(default_config)
				end
			end
		})
	end,
}
