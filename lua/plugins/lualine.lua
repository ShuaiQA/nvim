local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed
		}
	end
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	opts = {
		sections = {
			lualine_b = { 'branch', 'diagnostics' },
			lualine_c = { 'filename',
				{
					"diff",
					symbols = {
						added = " ",
						modified = " ",
						removed = " ",
					},
					source = diff_source
				},
				{
					function() return require("nvim-navic").get_location() end,
					cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
				},
			},
			lualine_z = { 'location',
				function()
					return " " .. os.date("%R")
				end,
			},
		},
	},
}
