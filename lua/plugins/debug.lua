return {
	"ravenxrz/nvim-dap",
	config = function()
		local dap = require('dap')
		dap.adapters.lldb = {
			type = 'executable',
			command = '/opt/homebrew/opt/llvm/bin/lldb-vscode',
			name = 'lldb'
		}
		dap.configurations.cpp = {
			{
				name = 'Launch',
				type = 'lldb',
				request = 'launch',
				program = function()
					return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
				end,
				cwd = '${workspaceFolder}',
				stopOnEntry = false,
				args = {},
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
