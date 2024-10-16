return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")
      -- Add debug configuration for Java
      local spring_boot_debugger = {
        type = "java",
        request = "attach",
        name = "Spring Boot Debug (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 5005,
      }

      local no_java_dap_config = (dap.configurations.java == {} or dap.configurations.java == nil)
      if no_java_dap_config then
        dap.configurations.java = { spring_boot_debugger }
      else
        table.insert(dap.configurations.java, spring_boot_debugger)
      end
    end,
  },
}
