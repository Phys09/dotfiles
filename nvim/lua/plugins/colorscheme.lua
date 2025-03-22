-- Get another colour scheme
return {
  -- Install/enable other colour schemes here
  -- eg:
  -- { "catppuccin/nvim", enabled = true },

  -- Configure LazyVim to load catppuccin-frappe as its colourscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
      --colorscheme = "catppuccin-macchiato",
    },
  },
}
