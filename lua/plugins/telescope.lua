return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),

					-- pseudo code / specification for writing custom displays, like the one
					-- for "codeactions"
					-- specific_opts = {
					--   [kind] = {
					--     make_indexed = function(items) -> indexed_items, width,
					--     make_displayer = function(widths) -> displayer
					--     make_display = function(displayer) -> function(e)
					--     make_ordinal = function(e) -> string
					--   },
					--   -- for example to disable the custom builtin "codeactions" display
					--      do the following
					--   codeactions = false,
					-- }
				},
			},
		},
		keys = {
			{ "<leader>ff", require("telescope.builtin").find_files, desc = "Telescope find files" },
			{ "<leader>fg", require("telescope.builtin").live_grep,  desc = "Telescope live grep" },
			{ "<leader>fb", require("telescope.builtin").buffers,    desc = "Telescope buffers" },
			{ "<leader>fh", require("telescope.builtin").help_tags,  desc = "Telescope help tags" },
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		init = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
