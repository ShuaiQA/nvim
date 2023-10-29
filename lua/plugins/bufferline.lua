return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			{ "<tab>",      "<cmd>BufferLineCycleNext<cr>",  desc = "Buffer Next" },
			{ "<S-tab>",    "<cmd>BufferLineCyclePrev<cr>",  desc = "Buffer Prev" },
			{ "<leader>bh", "<cmd>BufferLineCloseLeft<cr>",  desc = "Buffer Close Left" },
			{ "<leader>bl", "<cmd>BufferLineCloseRight<cr>", desc = "Buffer Close Right" }
		},
		opts = {
			options = {
				close_command = function(n)
					require("mini.bufremove").delete(n, false)
				end,
				right_mouse_command = function(n)
					require("mini.bufremove").delete(n, false)
				end,
				diagnostics = "coc",
			},
		},
	},
	{
		"echasnovski/mini.bufremove",
		keys = {
			{
				"<leader>bd",
				function()
					require("mini.bufremove").delete(0, false)
				end,
				desc = "Delete Buffer",
			},
		},
	},
}
