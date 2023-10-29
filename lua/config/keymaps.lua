-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { desc = desc })
end

map("n", "<Left>", ":vertical resize -2<CR>")
map("n", "<Down>", ":resize -2<CR>")
map("n", "<Right>", ":vertical resize +2<CR>")
map("n", "<Up>", ":resize +2<CR>")

map("n", "so", ":only<cr>")
map("i", "jj", "<esc>")
map("i", "kk", "<esc>%%a")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<tab>", ":BufferLineCycleNext<cr>")
map("n", "<S-tab>", ":BufferLineCyclePrev<cr>")
map("n", "<leader>ls", ":SendMess<cr>", { desc = "SendMess To Termal" })
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
