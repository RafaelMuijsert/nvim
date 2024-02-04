return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			-- Configure formatters by filetype
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			-- Automatically format on save
			format_on_save = {
				timeout_ms = 500,
			},
		})
	end,
}
