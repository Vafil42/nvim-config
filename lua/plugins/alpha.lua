return {
	{
		"goolord/alpha-nvim",
		dependencies = {
			"rubiin/fortune.nvim",
		},
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			dashboard.section.header.val = {
				"",
				" ██▓███   █    ██  ███▄    █  ██ ▄█▀ ██▀███   ▒█████   ▄████▄   ██ ▄█▀",
				"▓██░  ██▒ ██  ▓██▒ ██ ▀█   █  ██▄█▒ ▓██ ▒ ██▒▒██▒  ██▒▒██▀ ▀█   ██▄█▒ ",
				"▓██░ ██▓▒▓██  ▒██░▓██  ▀█ ██▒▓███▄░ ▓██ ░▄█ ▒▒██░  ██▒▒▓█    ▄ ▓███▄░ ",
				"▒██▄█▓▒ ▒▓▓█  ░██░▓██▒  ▐▌██▒▓██ █▄ ▒██▀▀█▄  ▒██   ██░▒▓▓▄ ▄██▒▓██ █▄ ",
				"▒██▒ ░  ░▒▒█████▓ ▒██░   ▓██░▒██▒ █▄░██▓ ▒██▒░ ████▓▒░▒ ▓███▀ ░▒██▒ █▄",
				"▒▓▒░ ░  ░░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒ ▒ ▒▒ ▓▒░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ░▒ ▒  ░▒ ▒▒ ▓▒",
				"░▒ ░     ░░▒░ ░ ░ ░ ░░   ░ ▒░░ ░▒ ▒░  ░▒ ░ ▒░  ░ ▒ ▒░   ░  ▒   ░ ░▒ ▒░",
				"░░        ░░░ ░ ░    ░   ░ ░ ░ ░░ ░   ░░   ░ ░ ░ ░ ▒  ░        ░ ░░ ░ ",
				"            ░              ░ ░  ░      ░         ░ ░  ░ ░      ░  ░   ",
				"                                                      ░               ",
				"",
			}
			dashboard.section.buttons.val = {
				dashboard.button("o", "󰙅  Neo Tree", ":Neotree <CR>"),
				dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
			}

			local info = { "", "", "" }
			local fortune = require("fortune").get_fortune()
			info[#info] = "  Neovim loaded "
				.. vim.fn.strftime("%H:%M")
				.. " on "
				.. vim.fn.strftime("%d/%m/%Y")
				.. " '"
			local footer = vim.list_extend(info, fortune)
			dashboard.section.footer.val = footer

			dashboard.config.opts.noautocmd = true

			vim.cmd([[autocmd User AlphaReady echo 'ready']])

			alpha.setup(dashboard.config)
		end,
	},
}
