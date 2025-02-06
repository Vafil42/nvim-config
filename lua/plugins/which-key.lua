return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		init = function()
			require("which-key").add({
				{
					"<leader>f",
					group = "Telescope",
				},
				{
					"<leader>l",
					group = "LSP",
				},
				{
					"<leader>la",
					function()
						vim.lsp.buf.code_action()
					end,
					desc = "LSP code actions",
				},
				{
					"<leader>ld",
					function()
						vim.diagnostic.open_float()
					end,
					desc = "LSP diagnostic",
				},
			})
		end,
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
