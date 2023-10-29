return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require("mini.comment").setup()
		require("mini.indentscope").setup()
		require('mini.pairs').setup()
		require("mini.surround").setup()
	end
}
