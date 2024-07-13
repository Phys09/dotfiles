--[[
-- Leave this for later to fix the dashboard
-- Just return nothing for now and use defaults
return {
  opts = function(_, opts)
    for i, actions in pairs(opts.config.center) do
      if actions.key == "n" then
        actions = { action = "ene",                                                      desc = " New File",        icon = " ", key = "n" }
      end
    end
  end
}
--]]

return {} -- Just fix it in nvim-data instead
