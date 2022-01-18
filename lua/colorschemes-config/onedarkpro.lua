--require('onedarkpro').load()
-- 131a1c #ef596f
local onedarkpro = require('onedarkpro')
onedarkpro.setup({
 -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000",
--        bg = "#131A1C",
        red = "#ef596f",
        green = "#89ca78",
      cyan = "#2bbac5",
      blue = "#61afef",
      purple = "#d55fde",
syntax ={

comment = "#55B4C0"
        },

        },
        styles = {
  comments = "italic",
  functions = "italic",
  keywords = "bold,italic",
  strings = "italic",
  variables = "italic"
        } 
    ,
    options = {
    italic = true,
    underline = true,
    cursorline = true,
    },
hlgroups = {
  Comment = { fg = '#fff' ,bg = '#000', style = "bold,italic" }, -- 2
},

})
onedarkpro.load()
--require('xresources')
