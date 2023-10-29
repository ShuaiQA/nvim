return {
	'simrat39/symbols-outline.nvim',
	keys = {
		{ "<leader>lp", "<cmd>SymbolsOutline<cr>", desc = "SymbolsOutline" },
	},
	config = function()
		require("symbols-outline").setup()
	end
}
