return {
  -- sane defalts
  {
    "echasnovski/mini.nvim",
    config = function() require("mini.basics").setup() end,
  },

  -- package manage
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function() require("mason").setup() end,
  },

  -- lines
  {
    "nvim-lualine/lualine.nvim",
    config = function() require("config.lualine") end,
  },

  -- formatter
  {
    "mhartington/formatter.nvim",
    config = function() require("config.formatter") end,
  },
}
