require("onedark").setup({
highlight_linenumber = true,
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {
        hint = "orange", error = "#ff0000",
        red = "#ef596f",
        green = "#89ca78",
      cyan = "#2bbac5",
      blue = "#61afef",
      purple = "#d55fde",
     bg_highlight = "#FFF",
syntax ={

comment = "#55B4C0"
        },
git_signs={
                add = "#89ca78",
                change= "#f99959",
                delete= "#ef596f",
        },
git = {change = "#e0af68", add = "#109868", delete = "#9A353D", conflict = "#bb7a61"},


        -- Line number
        bg_linenumber = "#fff",
        fg_linenumber = "#d55fde",
        fg_cursor_linenumber = "#ef596f"
        },
    
        
-- #9C4142
  -- Overwrite the highlight groups
  overrides = function(c)
    return {
        fg_cursor_linenumber = "#ef596f",
diff = {change = "#e0af68", add = "#109868", delete = "#9A353D", conflict = "#bb7a61"},
        MatchParen = { bg="#7f7f7f", fg="#109868",  style ="bold"},
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlght groups
      TSField = {},
    }
  end
})

require('lualine').setup {
  options = {
    theme = 'onedarkpro'
    -- ... your lualine config
  }
}

