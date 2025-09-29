-- Get another colour scheme
return {
  -- Install/enable other colour schemes here
  -- eg:
  -- { "catppuccin/nvim", enabled = true },

  -- Configure LazyVim to load colourscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
      --colorscheme = "catppuccin-macchiato",
    },
  },
}
