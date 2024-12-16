vim.api.nvim_create_user_command("Code", function()
	vim.cmd("!code %")
end, {})
vim.api.nvim_create_user_command("CompileAndRun", function()
	local filetype = vim.bo.filetype

	if filetype == "c" then
		vim.cmd("w")
		vim.cmd("split")
		vim.cmd("wincmd j")
		vim.cmd("resize 6")
		vim.cmd("term gcc % && ./a.out")
	elseif filetype == "cpp" then
		vim.cmd("w")
		vim.cmd("split")
		vim.cmd("wincmd j")
		vim.cmd("resize 6")
		vim.cmd("term g++ --std=c++17 % && ./a.out")
	elseif filetype == "lua" then
		vim.cmd("w")
		vim.cmd("split")
		vim.cmd("wincmd j")
		vim.cmd("resize 6")
		vim.cmd("term luajit %")
	elseif filetype == "python" then
		vim.cmd("w")
		vim.cmd("split")
		vim.cmd("wincmd j")
		vim.cmd("resize 6")
		vim.cmd("term python3 %")
	else
		print("unsupported type, go to add it")
	end
end, {})
vim.api.nvim_create_user_command("Light", function()
	vim.cmd("set background=light")
	vim.cmd("colo gruvbox")
	vim.cmd("let g:gruvbox_material_transparent_background = 0")
end, {})
vim.api.nvim_create_user_command("Dark", function()
	vim.cmd("set background=dark")
	vim.cmd("let g:gruvbox_material_transparent_background = 2")
	vim.cmd("colo gruvbox-material")
end, {})
vim.api.nvim_create_user_command("Opacity", function(opts)
	local config_file = "/Users/zyzds/.config/alacritty/alacritty.toml"
	local alacritty_config = io.open(config_file, "r")
	if not alacritty_config then
		print("failed to open alacritty_config")
		return
	end
	local content = alacritty_config:read("*a")
	alacritty_config:close()

	if tostring(opts.args) == "1" then
		content = content:gsub("opacity = %d+.%d+", "opacity = " .. "1.0")
	else
		content = content:gsub("opacity = %d+.%d+", "opacity = " .. opts.args)
	end

	local file = io.open(config_file, "w")
	if not file then
		print("failed to write config_file")
		return
	end
	file:write(content)
	file:close()
end, { nargs = 1 })
vim.api.nvim_create_user_command("Transparent", function()
	local config_file = "/Users/zyzds/.config/alacritty/alacritty.toml"
	local alacritty_config = io.open(config_file, "r")
	if not alacritty_config then
		print("failed to open alacritty_config")
		return
	end
	local content = alacritty_config:read("*a")
	alacritty_config:close()

	content = content:gsub("opacity = %d+.%d+", "opacity = " .. "0.8")

	local file = io.open(config_file, "w")
	if not file then
		print("failed to write config_file")
		return
	end
	file:write(content)
	file:close()
end, {})
-- keybinding
vim.keymap.set("n", "<F6>", ":CompileAndRun<CR>", {})
vim.keymap.set("n", "r", ":CompileAndRun<CR>", {})
