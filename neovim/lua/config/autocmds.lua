-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Easier autocmd group creation
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Configure after vim startsup
--VimEnter
local autocmd_show_statusline = function()
  --[[
  -- Configure vim, after startup to set laststatus=2 since lualine overrides any user settings
  --]]
  vim.api.nvim_create_autocmd("VimEnter", {
    show_statusline = function()
      vim.opt.laststatus = 2 -- Statusline on all splits, workaround lualine's hardcoded config
    end,
    group = augroup("finalize_config"),
    callback = function()
      vim.defer_fn(show_statusline, 5000) -- 5s delay to lower chance plugins race condition the seting
    end,
  })
end

-- Perform auto commands now here after having defined them above
autocmd_show_statusline() -- Set laststatus=2 ideally after plugins are loaded to prevent overriding
