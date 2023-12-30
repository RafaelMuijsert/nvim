local options = {
    clipboard = 'unnamedplus',  -- Use system clipboard
    expandtab = true,           -- Convert tabs to spaces
    tabstop = 4,                -- The number of spaces inserted for a tab
    shiftwidth = 4,             -- The number of spaces inserted for a tab
    undofile = true,            -- Persistent undo
    swapfile = false,           -- Swapfile
    number = true,              -- Line numbers
    termguicolors = true,       -- Term GUI colors
    colorcolumn = '80',         -- Mark the 80th character in a line
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
