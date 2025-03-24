return {
	"HiPhish/rainbow-delimiters.nvim",
	dependencies = { "EdenEast/nightfox.nvim" },
	init = function()
		require("config.highlight")
	end,
}
