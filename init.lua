-- Load enabled modules.
-- To enable or disable modules, edit this table.
local enabled_modules = {
	"core",
}

-- Each plugin and their setup.
local plugins = {}
for key, value in pairs(enabled_modules) do
	-- Each module returns their respective plugins and setup.
	table.insert(plugins, require(value))
end

-- Install lazy if it has not been installed.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins)
