return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {
			fast_wrap = {},
		},
		init = function()
			local autopairs = require("nvim-autopairs")

			-- remove add single quote on filetype scheme or lisp
			autopairs.get_rules("'")[1].not_filetypes = { "scheme", "lisp" }
		end,
	},
}
