-- error
return {
	"ravenxrz/nvim-dap",
	config = function()
		local dap = require('dap')
		dap.adapters.codelldb = {
			type = 'server',
			port = "${port}",
			host = "localhost",
			executable = {
				command = '/Users/shuai/.local/share/nvim/mason/bin/codelldb',
				args = { "--port", "${port}" },
			}
		}
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
				end,
				cwd = '${workspaceFolder}',
				stopOnEntry = false,
			},
		}
		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp

		dap.adapters.go = {
			type = 'executable',
			command = 'node',
			args = { "/Users/shuai/.local/share/nvim/mason/bin/go-debug-adapter" },
		}
		dap.configurations.go = {
			{
				type = 'go',
				name = 'Debug',
				request = 'launch',
				showLog = false,
				program = "${file}",
				dlvToolPath = vim.fn.exepath('dlv') -- Adjust to where delve is installed
			},
		}
	end
}
