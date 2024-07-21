-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g

g.autoformat = false -- Disable format on save

opt.clipboard = "" -- Do NOT sync with system clipboard
opt.conceallevel = 0 -- Disable concealing text, always show the text
opt.laststatus = 2 -- show statusline for everything, not just 1, lualine overrides this to 3
opt.relativenumber = false -- Disable relative line numbers
opt.smartindent = false -- Enable smart indentation.

-- Enable using pwsh instead of cmd for shell commands
-- https://github.com/neovim/neovim/issues/13893 and :h shell-powershell for shell related issues
opt.shell = "pwsh"
opt.shellcmdflag = "-NoLogo -noprofile -ExecutionPolicy RemoteSigned -Command"
opt.shellxquote = ""
