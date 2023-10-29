return {
	"xuhdev/vim-latex-live-preview",
	ft = "latex",
	init = function()
		vim.g.livepreview_previewer = 'open -a Preview'
	end,
	cmd = "LLPStartPreview",
}
