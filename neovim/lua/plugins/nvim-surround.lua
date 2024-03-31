-- Control Vimtex Installation
return {
  -- Remove old surround
  {"echasnovski/mini.surround", enabled = false},
  -- More likable surround
  {"kylechui/nvim-surround",
	enabled = true,
	event = "VeryLazy",
	config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end}
}
