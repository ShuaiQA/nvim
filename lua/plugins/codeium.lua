return {
	'Exafunction/codeium.vim',
	event = 'BufEnter',
	init = function()
		vim.g.codeium_disable_bindings = 1
	end,
	config = function()
		vim.keymap.set('i', '<Right>', function() return vim.fn['codeium#Accept']() end, { expr = true })
		vim.keymap.set('i', '<Left>', function() return vim.fn['codeium#Complete']() end, { expr = true })
		vim.keymap.set('i', '<Down>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
		vim.keymap.set('i', '<Up>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
		vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
	end
}
