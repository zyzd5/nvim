vim.api.nvim_create_user_command("Blur", function(opts)
	if os.getenv("GHOSTTY_BIN_DIR") then
		local file = io.open("/Users/zyzds/Library/Application Support/com.mitchellh.ghostty/config", "r+")

		if not file then
			print("open file failed")
			return
		end

		local blur = tostring(opts.args)
		local offset = 0
		while true do
			local line = file:read("*l")
			if not line then
				break
			end
			local match_start, match_end = line:find(".*radius = .*")
			if match_start then
				file:seek("set", offset + match_start - 1)
				file:write("background-blur-radius = " .. blur)
				break
			end
			offset = offset + #line + 1
		end
		file:close()
		vim.cmd(":silent !osascript ~/.config/nvim/lua/core/ghostty_opacity.scpt")
	else
		print("run this command when using ghostty")
	end
end, {
	nargs = 1,
	complete = function()
		return { "0", "10", "30" }
	end,
})
local function alacritty_opacity(opt)
	local file = io.open("/Users/zyzds/.config/alacritty/alacritty.toml", "r+")
	if not file then
		print("open file failed")
		return
	end

	local offset = 0
	while true do
		local line = file:read("*l")
		if not line then
			break
		end
		local match_start, match_end = line:find("opacity = .*")
		if match_start then
			file:seek("set", offset + match_start - 1)
			file:write("opacity = " .. tostring(opt.args))
			break
		end
		offset = offset + #line + 1
	end
	file:close()
end
local function ghostty_opacity(opt)
	local file = io.open("/Users/zyzds/Library/Application Support/com.mitchellh.ghostty/config", "r+")

	if not file then
		print("open file failed")
		return
	end

	local opacity = tostring(opt.args)
	if opt.args == "1" then
		opacity = "1.0"
	end

	local offset = 0
	while true do
		local line = file:read("*l")
		if not line then
			break
		end
		local match_start, match_end = line:find(".*opacity = .*")
		if match_start then
			file:seek("set", offset + match_start - 1)
			file:write("background-opacity = " .. opacity)
			break
		end
		offset = offset + #line + 1
	end
	file:close()
	vim.cmd(":silent !osascript ~/.config/nvim/lua/core/ghostty_opacity.scpt")
end

vim.api.nvim_create_user_command("Opacity", function(opts)
	if os.getenv("ALACRITTY_WINDOW_ID") then
		alacritty_opacity(opts)
	elseif os.getenv("GHOSTTY_BIN_DIR") then
		ghostty_opacity(opts)
	end
end, {
	nargs = 1,
	complete = function()
		return { "0.8", "1.0" }
	end,
})

vim.api.nvim_create_user_command("Code", function()
	vim.cmd("!code %")
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

-- keybinding
vim.keymap.set("n", "r", ":CompileAndRun<CR>", {})
