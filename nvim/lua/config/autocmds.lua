-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Easier autocmd group creation
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Change indents to 4 spaces for appropriate languages
vim.api.nvim_create_autocmd({"BufRead"}, {
  group = augroup("set_four_spaces"),
  pattern = {
    "*.java",
    "*.cs",
    "*.rs",
  },
  desc = "Set indent size (shiftwidth=4) for files such as java, c, etc...",
  callback = function()
    -- When the file matches, do this
    vim.opt.shiftwidth = 4 -- 4 space indents
  end,
})
