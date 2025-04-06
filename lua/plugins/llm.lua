return {
	"huggingface/llm.nvim",
  enabled = false,
	opts = {
		api_token = nil,
		tokens_to_clear = { "<EOT>" },
		fim = {
			enabled = true,
			prefix = "<PRE> ",
			middle = " <MID>",
			suffix = " <SUF>",
		},
		model = "codellama:7b",
		context_window = 4096,
		tokenizer = {
			repository = "codellama/CodeLlama-13b-hf",
		},
		url = "http://localhost:11434",
		backend = "ollama",
		accept_keymap = "<c-g>",
		request_body = {
			parameters = {
				max_new_tokens = 30,
				temperature = 0.2,
				top_p = 0.95,
			},
		},
		lsp = {
			bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
		},
		enable_suggestions_on_startup = true,
	},
}
