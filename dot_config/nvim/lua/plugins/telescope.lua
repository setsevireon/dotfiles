return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	dependencies = { "nvim-lua/plenary.nvim" },
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
		}, { prefix = "<leader>", mode = "n", noremap = true })
	end,
}
