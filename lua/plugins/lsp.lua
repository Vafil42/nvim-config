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
			-- Servers go here --
			local servers = { "lua_ls", "ts_ls", "clangd" }

			local lspconfig = require("lspconfig")
			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
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

		setup = function()
			local opts = require("lspconfig").default_config

			return opts
		end,
	},
}
