-- General options
local options = {
	-- Clipboard options
	clipboard = "unnamedplus", -- Use system clipboard.

	-- Indentation
	expandtab = true, -- Convert tabs to spaces.
	shiftwidth = 4, -- The number of spaces per indentation.
	tabstop = 4, -- Insert four spaces for a tab.

	-- Line options
	wrap = false, -- Disable text wrapping.
	colorcolumn = "80", -- Mark the 80th column.

	-- File save options
	undofile = true, -- Enable persistent undo.

	-- Search options
	ignorecase = true, -- Enable case-insensitive search.
}

-- Set each option
for key, value in pairs(options) do
	vim.opt[key] = value
end
