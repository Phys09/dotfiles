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
opt.smartindent = false -- Smart indentation off

-- Enable using pwsh instead of cmd for shell commands
-- https://github.com/neovim/neovim/issues/13893 and :h shell-powershell for shell related issues
opt.shell = "pwsh"
opt.shelltemp = true
-- opt.shelltemp = false
opt.shellcmdflag = [[-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command]]
-- opt.shellcmdflag = [[-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';$PSStyle.OutputRendering = ''PlainText'';]]
opt.shellpipe = [[> %s 2>&1]]
opt.shellquote = [[]]
opt.shellxquote = [[]]
-- Setup ugrep instead of ripgrep
opt.grepprg = [[ugrep -RInk -j -u --tabs=1 --ignore-files $*]]
opt.grepformat = [[%f:%l:%c:%m,%f+%l+%c+%m,%-G%f|%l|%c|%m]]
-- Default options for lazyvim pwsh config
-- LazyVim.terminal.setup("pwsh")
