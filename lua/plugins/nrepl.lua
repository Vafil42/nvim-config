return {
	"AdeAttwood/nrepl.nvim",
	ft = "clojure",
	keys = {
		{
			"<leader>ec",
			function()
				vim.cmd("NreplConnect")
			end,
			desc = "Nrepl connect",
		},
	},
}
