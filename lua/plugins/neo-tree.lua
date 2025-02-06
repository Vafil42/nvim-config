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
				},
				source_selector = {
					winbar = true,
					sources = {
						{ source = "filesystem" },
						{ source = "buffers" },
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
					git_status = {
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
				"<leader>o",
				function()
					require("neo-tree.command").execute({
						action = "focus",
					})
				end,
				desc = "Focus (neo-tree)",
			},
		},
	},
}
