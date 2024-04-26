-- Get another colour scheme
return {
  -- add monokai
  { "loctvl842/monokai-pro.nvim"},
  { "folke/tokyonight.nvim", enabled = false },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
