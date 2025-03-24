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
				{
					"<leader>lj",
					function()
						vim.diagnostic.goto_prev()
					end,
					desc = "LSP go to prev diagnostic",
				},
				{
					"<leader>lk",
					function()
						vim.diagnostic.goto_next()
					end,
					desc = "LSP go to next diagnostic",
				},
				{
					"<leader>g",
					group = "Codeium",
				},
				{
					"<leader>e",
					group = "Nrepl",
				},
        {
          "<leader>n",
          group = "NullLs"
        },
        {
          "<leader>o",
          group = "NeoTree",
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
