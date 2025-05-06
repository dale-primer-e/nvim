-- Entry point for Neovim configuration

-- Set leader key before lazy setup (this must come first)
vim.g.mapleader = "'"

-- Load plugin configuration
require("config.lazy")