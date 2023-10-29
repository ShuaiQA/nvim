return {
	"folke/which-key.nvim",

	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		local n_opts = { mode = "n", prefix = "<leader>" }
		local normal_keymap = {
			q = { ":wa<cr>:qa<cr>", "Quit" },
			w = { ":wall<cr>", "Saving" },
			b = { name = "buffer" },
			g = { name = "git" },
			l = { name = "lsp" },
			s = { name = "search" },
			u = { name = "ui", l = { "<cmd>Lazy<cr>", "Lazy ui" } },
		}
		wk.register(normal_keymap, n_opts)
	end,
}
