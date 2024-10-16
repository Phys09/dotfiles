return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")
      -- Add debug configuration for csharp
      local unity_debugger = {
        type = "cs",
        request = "attach",
        name = "Unity Debugger RoR2 Modding (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 10000,
      }

      local no_csharp_dap_config = (dap.configurations.cs == {} or dap.configurations.cs == nil)
      if no_csharp_dap_config then
        dap.configurations.cs = { unity_debugger }
      else
        table.insert(dap.configurations.cs, unity_debugger)
      end
    end,
  },
}
