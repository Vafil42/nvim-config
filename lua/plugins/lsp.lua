return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
		},

		init = function()
			local lspconfig = require("lspconfig")
			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = require("config.servers").lspServers
			local init_options = require("config.servers").lspInitOptions

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					init_options = init_options[lsp],
					-- on_attach = my_custom_on_attach,
					capabilities = lsp_capabilities,
				})
			end

			for _, diag in ipairs({ "Error", "Warn", "Info", "Hint" }) do
				vim.fn.sign_define("DiagnosticSign" .. diag, {
					text = "",
					texthl = "DiagnosticSign" .. diag,
					linehl = "",
					numhl = "DiagnosticSign" .. diag,
				})
			end

			vim.diagnostic.config({
				update_in_insert = true,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = " ",
						[vim.diagnostic.severity.WARN] = " ",
						[vim.diagnostic.severity.INFO] = " ",
						[vim.diagnostic.severity.HINT] = "󰌵",
					},
				},
				float = {
					header = nil,
					border = "rounded",
					focusable = true,
				},
			})
		end,
	},
}
