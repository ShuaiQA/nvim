return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	opts = {
		sections = {
			lualine_b = { 'branch', 'diagnostics' },
			lualine_c = { 'filename' },
			lualine_z = { 'location',
				function()
					return " " .. os.date("%R")
				end,
			},
		},

		tabline = {
			lualine_a = { 'buffers' },
			lualine_b = {},
			lualine_c = {},
			lualine_x = { "diff" },
			lualine_y = {},
			lualine_z = {
				{
					function() return require("nvim-navic").get_location() end,
					cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
				},
			}
		}
	},
}
