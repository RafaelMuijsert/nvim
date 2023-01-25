local options = {
	undofile = true,	-- Persistent undo
	expandtab = false,	-- Do not convert tabs to spaces
	shiftwidth = 4,		-- Insert 4 spaces for each indentation
	tabstop = 4,		-- Insert 4 spaces for a tab
	wrap = false,
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

