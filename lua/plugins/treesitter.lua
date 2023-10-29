return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	init = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldlevel = 99
	end,
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"json",
			"lua",
			"markdown",
			"python",
			"go",
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				node_incremental = "<cr>",
				node_decremental = "<bs>",
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
