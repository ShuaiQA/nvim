local ensure_installed = { "clangd", "lua_ls", "texlab", "gopls", "pyright", "bashls", "jsonls" }
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
		keys = {
			{ "<leader>um", "<cmd>Mason<cr>", desc = "Mason" },
		}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup {
				ensure_installed = ensure_installed,
			}
		end
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"SmiteshP/nvim-navic"
		},
		keys = {
			{ "gd",         vim.lsp.buf.definition,     desc = "go to definition" },
			{ "gD",         vim.lsp.buf.declaration,    desc = "go to declaration" },
			{ "gi",         vim.lsp.buf.implementation, desc = "go to implementation" },
			{ "gr",         vim.lsp.buf.references,     desc = "go to references" },
			{ 'gk',         vim.diagnostic.goto_prev,   desc = "goto_prev" },
			{ 'gj',         vim.diagnostic.goto_next,   desc = "goto_next" },
			{ 'K',          vim.lsp.buf.hover,          desc = "show_docs" },
			{ '<leader>ll', vim.diagnostic.setloclist,  desc = "diagnostic list" },
			{ '<leader>lr', vim.lsp.buf.rename,         desc = "buf rename" },
			{ '<leader>lf', vim.lsp.buf.format,         desc = "buffer format" },
		},
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require('lspconfig')
			local navic = require("nvim-navic")
			for _, server in ipairs(ensure_installed) do
				lspconfig[server].setup {
					capabilities = capabilities,
					on_attach = function(client, bufnr)
						navic.attach(client, bufnr)
					end,
				}
			end
		end
	},
}
