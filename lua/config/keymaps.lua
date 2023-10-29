-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { desc = desc })
end

map("n", "<Left>", "<cmd>vertical resize -2<CR>")
map("n", "<Down>", "<cmd>resize -2<CR>")
map("n", "<Right>", "<cmd>vertical resize +2<CR>")
map("n", "<Up>", "<cmd>resize +2<CR>")

map("n", "so", "<cmd>only<cr>")
map("n", "sc", "<cmd>close<cr>")
map("i", "jj", "<esc>")
map("i", "kk", "<esc>%%a")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<tab>", "<cmd>bnext<cr>")
map("n", "<S-tab>", "<cmd>bprevious<cr>")
map("n", "<leader>bd", "<cmd>bd<cr>", "delete buffer")
map("n", "<leader>ls", "<cmd>SendMess<cr>", "SendMess To Termal")
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
