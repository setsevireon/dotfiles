return {
	"phaazon/hop.nvim",
	dependencies = { "folke/which-key.nvim" },
	branch = "v2", -- optional but strongly recommended
	config = function()
		require("hop").setup({ keys = "asdfghjklqwertyuiopzxcvbnm" })

		local directions = require("hop.hint").HintDirection

		require("which-key").register({
			l = {
				[""] = {
					function()
						require("hop").hint_lines()
					end,
					"Hop lines",
				},
			},
			w = {
				[""] = {
					function()
						require("hop").hint_words()
					end,
					"Hop words",
				},
			},
		}, { prefix = "<leader>", mode = "n", noremap = false })

		require("which-key").register({
			f = {
				[""] = {
					function()
						require("hop").hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
					end,
					"Hop characters after cursor",
				},
			},
			F = {
				[""] = {
					function()
						require("hop").hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
					end,
					"Hop characters before cursor",
				},
			},
		}, { mode = "n", noremap = false })
	end,
}
