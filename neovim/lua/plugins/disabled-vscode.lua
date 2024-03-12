-- Disable the following plugins in vscode only
local not_in_vscode = vim.g.vscode == nil
if not_in_vscode then
  return {}
end

-- Below, put plugins to disable for vscode only by setting 'enabled = false'
return {
  -- Disable flash.nvim to get rid of random highlight changes in vscode
  {"folke/flash.nvim", enabled = false},
  -- Do not give plugin a chance to interfere with vscode's git extension displays
  {"lewis6991/gitsigns.nvim", enabled = false},
  -- Do not let the highlighting of the word cursor is under interfere with vscode's version and mess up text
  {"RRethy/vim-illuminate", enabled = false},
  -- Do not load a colourscheme when in vscode
  {"catppuccin/nvim", enabled = false},
  -- Noice is nice for neovim, but not when its in vscode. It may interefere with text rendering stuff
  {"folke/noice.nvim", enabled = false}
}
