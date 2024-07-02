-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.clipboard = "" -- Do NOT sync with system clipboard
opt.relativenumber = false -- Disable relative line numbers
opt.smartindent = false -- Enable smart indentation.
opt.laststatus = 2 -- show statusline for everything, not just 1, lualine overrides this to 3

-- https://github.com/neovim/neovim/issues/13893 and :h shell-powershell for shell related issues
opt.shell = "pwsh"
opt.shellcmdflag = "-NoLogo -noprofile -ExecutionPolicy RemoteSigned -Command"
opt.shellxquote = ""
