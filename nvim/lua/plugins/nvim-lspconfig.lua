return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false, -- Disable virtual text
      },
      inlay_hints = {
        enabled = false, -- Disable inlay hints
      },
    },
  },
}
