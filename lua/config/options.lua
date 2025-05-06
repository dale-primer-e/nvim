-- Neovim options and settings converted from your init.vim

-- General settings
vim.opt.syntax = "on"        -- highlight syntax
vim.opt.number = true        -- show line numbers
vim.opt.swapfile = false     -- disable the swapfile
vim.opt.hlsearch = true      -- highlight all results
vim.opt.ignorecase = true    -- ignore case in search
vim.opt.incsearch = true     -- show search results as you type
vim.opt.autoindent = true    -- auto indent

-- Key mappings
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>Y', '"*Y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>P', '"*P')

-- Python indentation settings
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.py",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.textwidth = 79
    vim.opt_local.expandtab = true
    vim.opt_local.autoindent = true
    vim.opt_local.fileformat = "unix"
  end,
})