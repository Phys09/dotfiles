-- Get another colour scheme
return {
  -- add monokai
  { "tanvirtin/monokai.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
}
