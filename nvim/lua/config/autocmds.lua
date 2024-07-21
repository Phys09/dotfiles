-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Easier autocmd group creation
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Perform operations after neovim starts up
vim.api.nvim_create_autocmd({ "VimEnter", "BufNew" }, {
  group = augroup("finalize_config"),
  callback = function()
    -- print("Setting status")
    -- After neovim starts up, execute code in this block
    vim.defer_fn(function()
      vim.opt.laststatus = 2
    end, 2000) -- Delay to lower chance plugins race condition the seting
    vim.opt.laststatus = 2
  end,
})
