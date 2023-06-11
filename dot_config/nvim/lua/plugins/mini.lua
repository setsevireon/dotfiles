return {
	{
		"echasnovski/mini.basics",
		config = function()
			require("mini.basics").setup()
		end,
	},
	{
		"echasnovski/mini.cursorword",
		event = "VeryLazy",
		config = function()
			require("mini.cursorword").setup()
		end,
	},
	{
		"echasnovski/mini.indentscope",
		event = "VeryLazy",
		config = function()
			require("mini.indentscope").setup()
		end,
	},
}
