return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		explorer = {
			enabled = true,
		},
		bufdelete = {
			enabled = true,
		},
		picker = {
			enabled = true,
		},
		quickfile = {
			enabled = true,
		},
	},
	keys = {
		-- explorer
		{ "<leader>e",       function() Snacks.explorer() end,                                       desc = "File Explorer" },
		-- Files
		{ "<leader>f",       "",                                                                     desc = "Files" },
		{ "<leader>fd",      function() Snacks.bufdelete() end,                                      desc = "Delete Buffer" },
		{ "<leader>ff",      function() Snacks.picker.files() end,                                   desc = "Find Files" },
		{ "<leader>fb",      function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
		{ "<leader>fc",      function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
		{ "<leader>fr",      function() Snacks.picker.recent() end,                                  desc = "Recent" },
		{ "<leader>f/",      function() Snacks.picker.lines() end,                                   desc = "Grep Lines" },
		-- picker
		{ "<leader>/",       function() Snacks.picker.grep() end,                                    desc = "Grep" },
		{ "<leader>:",       function() Snacks.picker.command_history() end,                         desc = "Command History" },
		-- -- Grep
		{ "<leader>sb",      function() Snacks.picker.lines() end,                                   desc = "Buffer Lines" },
		{ "<leader>sB",      function() Snacks.picker.grep_buffers() end,                            desc = "Grep Open Buffers" },
		{ "<leader>sg",      function() Snacks.picker.grep() end,                                    desc = "Grep" },
		{ "<leader>sw",      function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },
		-- -- search
		{ '<leader>sh',      function() Snacks.picker.search_history() end,                          desc = "Search History" },
		{ "<leader>sc",      function() Snacks.picker.command_history() end,                         desc = "Command History" },
		{ "<leader>sC",      function() Snacks.picker.commands() end,                                desc = "Commands" },
		{ "<leader>sD",      function() Snacks.picker.diagnostics() end,                             desc = "Diagnostics" },
		{ "<leader>sd",      function() Snacks.picker.diagnostics_buffer() end,                      desc = "Buffer Diagnostics" },
		{ "<leader>sH",      function() Snacks.picker.help() end,                                    desc = "Help Pages" },
		{ "<leader>si",      function() Snacks.picker.icons() end,                                   desc = "Icons" },
		{ "<leader>sm",      function() Snacks.picker.marks() end,                                   desc = "Marks" },
		{ "<leader>su",      function() Snacks.picker.undo() end,                                    desc = "Undo History" },
		{ "<leader>uC",      function() Snacks.picker.colorschemes() end,                            desc = "Colorschemes" },
		-- -- LSP
		{ "gd",              function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
		{ "gD",              function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
		{ "gr",              function() Snacks.picker.lsp_references() end,                          nowait = true,                     desc = "References" },
		{ "gi",              function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
		{ "gt",              function() Snacks.picker.lsp_type_definitions() end,                    desc = "Goto T[y]pe Definition" },
	}
}
