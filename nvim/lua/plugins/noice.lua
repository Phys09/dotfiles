return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- remove concealing the text when typing the commands in commandline
      local formats = {
        "calculator",
        "cmdline",
        "filter",
        "help",
        "input",
        "lua",
        "search_down",
        "search_up",
      }

      if not opts.cmdline then
        opts.cmdline = {}
      end

      local new_format = {}

      -- populate new_format
      for _, fmt in pairs(formats) do
        new_format[fmt] = { conceal = false }
      end

      opts.cmdline.enabled = true
      opts.cmdline.format = new_format
    end,
  },
}
