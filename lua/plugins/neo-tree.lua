local defaultFocusOptions = {
	action = "focus",
	reveal = true,
	reveal_force_cwd = true,
}

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		lazy = false,
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = function()
			return {
				close_if_last_window = true,
				filesystem = {
					filtered_items = {
						visible = true,
					},
				},
				sources = {
					"filesystem",
					"buffers",
					"git_status",
				},
				source_selector = {
					winbar = true,
					sources = {
						{ source = "filesystem" },
						{ source = "buffers" },
						{ source = "git_status" },
					},
				},
				window = {
					width = 30,
					mappings = {
						["o"] = "open",
						["l"] = "open",
						["h"] = "close_node",
					},
				},
				default_component_configs = {
					modified = { symbol = "" },
					git_status_status = {
						symbols = {
							added = "",
							modified = "",
							deleted = "",
							renamed = "➜",
							untracked = "★",
							ignored = "◌",
							unstaged = "✗",
							staged = "✓",
							conflict = "",
						},
					},
				},
			}
		end,
		keys = {
			{
				"<leader>of",
				function()
					require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "filesystem",
					}))
          require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "filesystem",
					}))
				end,
				desc = "NeoTree focus filesystem",
			},
			{
				"<leader>ob",
				function()
					require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "buffers",
					}))
          require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "buffers",
					}))
				end,
				desc = "NeoTree focus buffers",
			},
			{
				"<leader>og",
				function()
					require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "git_status",
					}))
          require("neo-tree.command").execute(vim.tbl_extend("force", defaultFocusOptions, {
						source = "git_status",
					}))
				end,
				desc = "NeoTree focus git_status",
			},
		},
	},
}
