local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.completion.cmp"
require "user.completion.mason"
require("user.completion.handlers").setup()

