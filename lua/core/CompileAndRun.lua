local function preview_markdown()
    vim.cmd("MarkdownPreviewToggle")
end

local function run_c_plus_plus()
	vim.cmd("w")
	vim.cmd("split")
	vim.cmd("wincmd j")
	vim.cmd("resize 6")
	vim.cmd("term g++ --std=c++17 % && ./a.out")
end

local function run_c()
	vim.cmd("w")
	vim.cmd("split")
	vim.cmd("wincmd j")
	vim.cmd("resize 6")
	vim.cmd("term gcc % && ./a.out")
end

local function run_lua()
	vim.cmd("w")
	vim.cmd("split")
	vim.cmd("wincmd j")
	vim.cmd("resize 6")
	vim.cmd("term luajit %")
end
local function run_python()
	vim.cmd("w")
	vim.cmd("split")
	vim.cmd("wincmd j")
	vim.cmd("resize 6")
	vim.cmd("term python3 %")
end

vim.api.nvim_create_user_command("CompileAndRun", function()
	local filetype = vim.bo.filetype

	if filetype == "c" then
		run_c()
	elseif filetype == "cpp" then
		run_c_plus_plus()
	elseif filetype == "lua" then
		run_lua()
	elseif filetype == "python" then
		run_python()
	elseif filetype == "markdown" then
		preview_markdown()
	else
		print("unsupported type, go to add it")
	end
end, {})
