return {
'MunifTanjim/nui.nvim',
	{'VonHeikemen/fine-cmdline.nvim',
		keys = {
			{":",
				function() 
require("fine-cmdline").open({default_value = ""})
				end, desc = "open CmdLine",
			}
		},
	}
}
