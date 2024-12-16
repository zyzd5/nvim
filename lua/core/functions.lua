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
	local file = io.open("/Users/zyzds/.config/alacritty/alacritty.toml", "r+")
	if not file then
		print("open file failed")
        return
	end

	local opacity = tostring(opts.args)
	if opts.args == "1" then
		opacity = "1.0"
	end

	local offset = 0
	while true do
		local line = file:read("*l")
		if not line then
			break
		end
		local match_start, match_end = line:find("opacity = %d+%.%d+")
		if match_start then
			file:seek("set", offset + match_start - 1)
			file:write("opacity = " .. opacity)
			break
		end
		offset = offset + #line + 1
	end
	file:close()
end, {
	nargs = 1,
	complete = function()
		return { "0.8", "1.0" }
	end,
})
-- keybinding
vim.keymap.set("n", "<F6>", ":CompileAndRun<CR>", {})
vim.keymap.set("n", "r", ":CompileAndRun<CR>", {})
