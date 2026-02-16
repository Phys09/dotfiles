--[[
-- fzf when being used as a previewer (via --preview) on windows requires a specific shell to spawn the process.
-- It can be done by setting the environment variable: $SHELL to pwsh or any other shell (recommend nu just for subprocess for this)
-- However, there are issues with the environment variable $COLUMNS and $FZF_PREVIEW_COLUMNS not being sent (on pwsh especially)
-- since it seems to be passed in single quotes, thus not being able to expand variables (for powershell)
--
-- Solution: Delete the part of the config
--]]
local DISABLE_PATCH = true
if DISABLE_PATCH then
  return {}
end

return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.lsp.code_actions = {
      previewer = "codeaction_native",

      -- pwsh specifically needs to use $env:* prefix to attempt reading environment variables
      -- other shells can read the environment variable $FZF_PREVIEW_COLUMNS as expected
      preview_pager = "delta --side-by-side --width=$FZF_PREVIEW_COLUMNS",

      -- However it used to work fine without the prefix $env:* before updating
      -- preview_pager = "delta --side-by-side --width=FZF_PREVIEW_COLUMNS",

      -- removing the --width=N parameter "fixes" the issue as a workaround, but the preview window will have wrong dimensions
      -- preview_pager = "delta --side-by-side",
    }
  end,
}

-- return {
--   "ibhagwan/fzf-lua",
--   opts = function(_, opts)
--     opts.lsp.code_actions = {
--       -- Code Action previewers, default is "codeaction" (set via `lsp.code_actions.previewer`)
--       -- "codeaction_native" uses fzf's native previewer, recommended when combined with git-delta
--       previewer = "codeaction",
--       previewer = "codeaction_native",
--       -- TODO: It's not reading the environment variables from fzf (the cli) correctly, just use regular git diff and revisit later
--       -- preview_pager = [[delta --side-by-side --width={0} -- -f $FZF_PREVIEW_COLUMNS]],
--       -- pwsh specifically needs to use $env:** prefix to attempt reading environment variables
--       -- other shells can read the environment variable $FZF_PREVIEW_COLUMNS
--       -- preview_pager = "delta --side-by-side --width=$env:FZF_PREVIEW_COLUMNS",
--       -- preview_pager = "delta --side-by-side --width=$env:FZF_PREVIEW_COLUMNS",
--       -- preview_pager = "delta --side-by-side",
--     }
--   end,
-- }
