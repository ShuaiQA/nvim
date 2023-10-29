return {
	"voldikss/vim-translator",
	event = "VeryLazy",
	keys = {
		{ "<leader>t", ":TranslateW<cr>",                  mode = "v",        desc = "Translate" },
		{ "<leader>t", ":TranslateW --engines=google<cr>", desc = "Translate" },
	},
}
