-- When pressing 'n' to create a new file, do not start in insert mode
return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      for _, dashboard_actions in pairs(opts.config.center) do
        if dashboard_actions.key == "n" then
          dashboard_actions.action = "ene" -- "Edit New Unnamed Buffer do not start insert"
        end
      end
    end
  }
}
