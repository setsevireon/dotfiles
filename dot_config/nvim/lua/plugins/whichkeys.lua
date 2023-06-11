return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local builtin = require("telescope.builtin")

		require("which-key").register({
			f = {
				name = "Telescope",
				f = {
					function()
						builtin.find_files()
					end,
					"Find files",
				},
				g = {
					function()
						builtin.live_grep()
					end,
					"Live grep",
				},
				b = {
					function()
						builtin.buffers()
					end,
					"Buffers",
				},
				h = {
					function()
						builtin.help_tags()
					end,
					"Help tags",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
