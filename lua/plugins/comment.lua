return {
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = {
				---Line-comment toggle keymap
				line = "<leader>/",
				---Block-comment toggle keymap
				block = "gbc",
			},
			---LHS of operator-pending mappings in NORMAL and VISUAL mode
			opleader = {
				---Line-comment keymap
				line = "<leader>/",
				---Block-comment keymap
				block = "gb",
			},
			mappings = {},
		},
	},
}
