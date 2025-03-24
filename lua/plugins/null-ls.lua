return {
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		opts = {
			ensure_installed = nil,
			automatic_installation = true,
		},
	},
	{
		"nvimtools/none-ls.nvim",
		opts = function(_, opts)
			local nls = require("null-ls")
			-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			opts.root_dir = opts.root_dir
				or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")

			opts.sources = vim.list_extend(opts.sources or {}, {
				-- Sources goes Here --
				nls.builtins.formatting.stylua,
				nls.builtins.formatting.prettier,
				nls.builtins.formatting.cljfmt,
			})

			-- opts.on_attach = function(client, bufnr)
			-- 	if client.supports_method("textDocument/formatting") then
			-- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			-- 		vim.api.nvim_create_autocmd("BufWritePre", {
			-- 			group = augroup,
			-- 			buffer = bufnr,
			-- 			callback = function()
			-- 				vim.lsp.buf.format({ async = false })
			-- 				-- print message --
			-- 				vim.api.nvim_echo({ { "Formatting..." } }, false, {})
			-- 			end,
			-- 		})
			-- 	end
			-- end

			return opts
		end,
		keys = {
			{
				"<leader>nf",
				function()
					vim.lsp.buf.format()
				end,
				desc = "NullLs Format File",
			},
		},
	},
}
