return {
	"phaazon/hop.nvim",
	event = "VeryLazy",
	config = function()
		require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	end,
	keys = {
		{ "t", "<cmd>HopWord<cr>", desc = "To Word" },
	},
}
