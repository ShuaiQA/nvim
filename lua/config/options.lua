-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.whichwrap = "<,>,[,],h,l" -- 光标跨行
vim.g.mapleader = " "
vim.o.scrolloff = 8             -- 上下移动8行
vim.o.sidescrolloff = 8
vim.o.tgc = true
vim.o.relativenumber = true
vim.o.cursorline = true -- 高亮所在行
vim.o.tabstop = 2       --tab 设置
vim.o.shiftwidth = 2
vim.o.fileencoding = "utf-8"
vim.o.timeoutlen = 500          -- 设置快捷键的时间
vim.o.swapfile = false
vim.o.ignorecase = true         -- 提示忽视大小写
vim.o.mouse = "a"               -- 鼠标设置
vim.o.clipboard = "unnamedplus" -- 与外部剪切一致
vim.o.undofile = true           -- enable persistent undo
vim.o.background = "dark"       -- or "light" for light mode
vim.o.termguicolors = true
vim.o.conceallevel = 3
vim.o.updatetime = 200
vim.cmd [[ set colorcolumn=80 ]]
vim.cmd [[ set undodir=~/.vim/undodir ]]
