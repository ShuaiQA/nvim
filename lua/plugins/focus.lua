function Goyo_enter()
	vim.cmd('set norelativenumber')
	vim.cmd('Limelight')
	vim.cmd [[ lua require('lualine').hide() ]]
end

function Goyo_leave()
	vim.cmd('set relativenumber')
	vim.cmd('Limelight!')
	vim.cmd [[ lua require('lualine').hide({unhide=true}) ]]
end

vim.cmd [[ autocmd! User GoyoEnter lua Goyo_enter() ]]
vim.cmd [[ autocmd! User GoyoLeave lua Goyo_leave() ]]

return {
	"junegunn/goyo.vim",
	lazy = false,
	dependencies = {
		"junegunn/limelight.vim",
	},
	config = function()
		vim.g.goyo_width = 80
		vim.g.goyo_height = 100
		vim.g.goyo_linenr = 10
	end,
	keys = {
		{ "<leader>a", "<cmd>Goyo<cr>", desc = "Focus Write" },
	}
}
