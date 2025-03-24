local lspServers = {
	"lua_ls",
	"ts_ls",
	"clangd",
	"serve_d",
	"cssls",
	"html",
	"volar",
	"svelte",
	"clojure_lsp",
	"rust_analyzer",
}

local mason_registry = require("mason-registry")
local lspInitOptions = {
	volar = {
		vue = {
			hybridMode = false,
		},
	},
	ts_ls = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = mason_registry.get_package("vue-language-server"):get_install_path(),
				languages = { "vue" },
			},
		},
	},
}

local tsEnsureInstalled = {
	"lua",
	"vim",
	"vimdoc",
	"javascript",
	"typescript",
	"html",
	"svelte",
	"css",
	"scss",
}

return {
	lspServers = lspServers,
	lspInitOptions = lspInitOptions,
	tsEnsureInstalled = tsEnsureInstalled,
}
