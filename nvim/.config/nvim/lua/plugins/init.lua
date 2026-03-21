return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("configs.treesitter"),
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			view = {
				side = "right", -- Set nvim-tree to the right side
			},
		},
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},

	{
		"windwp/nvim-ts-autotag",
	},
}
