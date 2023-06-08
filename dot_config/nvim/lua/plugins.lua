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
  {
    "williamboman/mason-lspconfig.nvim",
    config = function() require("mason-lspconfig").setup() end,
  },

  -- lines
  {
    "nvim-lualine/lualine.nvim",
    config = function() require("config.lualine") end,
  },

  -- coloschemes
  {
    "folke/tokyonight.nvim",
    config = function() vim.cmd("colorscheme tokyonight-night") end,
  },

  -- formatter
  {
    "mhartington/formatter.nvim",
    init = function() vim.keymap.set("n", "<Leader>f", "<cmd>Format<cr>") end,
    config = function() require("config.formatter") end,
    cmd = "Format",
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    config = function() require("config.lsp") end,
  },

  -- completion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function() require("config.completion") end,
  },

  -- syntax
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() require("config.treesitter") end,
  },
}
