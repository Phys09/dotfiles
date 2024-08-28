--[[
--  Due to choosing fzf-lua instead of telescope, anything that depends on telescope such as
--  'require("omnisharp_extended").telescope_lsp_definitions()'
--  will require telescope to function. This decouples telescope reliance.
--]]
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local omnisharp_keybinds = opts.servers.omnisharp.keys
    for index, keybind in pairs(omnisharp_keybinds) do
      if keybind.desc == "Goto Definition" then
        omnisharp_keybinds[index] = {
          "gd",
          function()
            require("omnisharp_extended").lsp_definition() -- Main Change
            -- require("omnisharp_extended").telescope_lsp_definitions()
          end,
          desc = "Goto Definition",
        }
      end
    end
  end,
}
