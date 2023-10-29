return {
	-- disable alpha
	{ "goolord/alpha-nvim", enabled = false },
	{
		"echasnovski/mini.starter",
		opts = function()
			local logo = table.concat({
				"            ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z",
				"            ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    ",
				"            ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       ",
				"            ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         ",
				"            ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           ",
				"            ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           ",
			}, "\n")
			local pad = string.rep(" ", 22)
			local new_section = function(name, action, section)
				return { name = name, action = action, section = pad .. section }
			end

			local starter = require("mini.starter")
			--stylua: ignore
			local config = {
				evaluate_single = true,
				header = logo,
				items = {
					new_section("Files", "Files", "Find"),
					new_section("Text", "RG", "Find"),
					new_section("Lazy", "Lazy", "Config"),
					new_section("New file", "ene | startinsert", "Built-in"),
					new_section("Quit", "qa", "Built-in"),
				},
				content_hooks = {
					starter.gen_hook.adding_bullet(pad .. "░ ", false),
					starter.gen_hook.aligning("center", "center"),
				},
			}
			return config
		end,
	},
}
