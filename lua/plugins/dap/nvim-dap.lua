return {
	"mfussenegger/nvim-dap",
	enabled = false,
    event = "VeryLazy",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		-- mapping
		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})

		-- c++ | rust | c
        -- TODO: try codelldb
		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp

		-- dap-ui
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
