-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	pattern = { "*.go", "*.cpp", "*.c", "*.lua", "*.c" },
	callback = function()
		vim.api.nvim_command("w")
		vim.lsp.buf.format({ async = true })
	end,
})

vim.api.nvim_create_user_command('SendMess', function()
	local mess = vim.fn.input('Send Mess To Termal: ')
	vim.api.nvim_command("TermExec cmd='" .. mess .. "' direction='vertical' size=40")
end, { desc = "SendMess" })
