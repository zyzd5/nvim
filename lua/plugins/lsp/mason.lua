return {
	"williamboman/mason.nvim",
    cmd = {
        "Mason", "MasonInstall", "MasonUpdate"
    },
	opts = {
		ensure_installed = {
			"clangd",
			"codelldb",
		},
	},
	config = function()
		require("mason").setup()
	end,
}
