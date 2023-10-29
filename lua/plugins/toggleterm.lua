return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>lc",
			function()
				local filetype = vim.bo.filetype
				if filetype == 'c' then
					vim.api.nvim_command("TermExec cmd='gcc % -o %< && ./%<' direction='vertical' size=40")
				elseif filetype == 'cpp' then
					vim.api.nvim_command("TermExec cmd='g++ -std=c++11 % -o %< && ./%< < %<.txt' direction='vertical' size=40")
				elseif filetype == 'python' then
					vim.api.nvim_command("TermExec cmd='python3 %' direction='vertical' size=40")
				elseif filetype == 'go' then
					vim.api.nvim_command("TermExec cmd='go run main.go' direction='vertical' size=40")
				elseif filetype == 'markdown' then
					vim.api.nvim_command("MarkdownPreview")
				elseif filetype == 'tex' then
					vim.api.nvim_command("LLPStartPreview")
				elseif filetype == 'make' then
					vim.api.nvim_command("TermExec cmd='make run' direction='vertical' size=40")
				end
			end,
			desc = "Compile Run Code"
		},
	},
	opts = {
		open_mapping = [[<c-\>]],
		direction = "float", -- direction = 'vertical' | 'horizontal' | 'window' | 'float',
	},
}
