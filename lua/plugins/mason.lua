return {
	{
		"williamboman/mason.nvim",
		config = function(opts)
			require("mason").setup(opts)
		end,
	},
}
