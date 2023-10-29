return {
	"junegunn/fzf.vim",
	dependencies = {
		"junegunn/fzf",
		"tpope/vim-fugitive",
	},
	cmd = { "RG", "Files" },
	keys = {
		{
			"<leader>/",
			function()
				vim.g.fzf_preview_window = 'down:50%'
				vim.api.nvim_command("RG")
			end,
			desc = "Search Text"
		},
		{
			"<leader>f",
			function()
				vim.g.fzf_preview_window = 'right:40%'
				vim.api.nvim_command("Files")
			end,
			desc = "Search Files"
		},
		{ "<leader>ba", "<cmd>Buffers<cr>",  desc = "All Buffers" },
		{ "<leader>gb", "<cmd>BCommits<cr>", desc = "Buffers Commit" },
	},
	config = function()
		vim.g.fzf_layout = { window = { width = 0.95, height = 0.95 } }
	end
}
