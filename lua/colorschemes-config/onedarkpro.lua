--require('onedarkpro').load()
-- 131a1c
local onedarkpro = require('onedarkpro')
onedarkpro.setup({
    colors ={
        onedark = {
            bg = "#0A0E12", 
            red = "#ef596f",
            green = "#89ca78",
            cyan = "#2bbac5",
            purple = "#d55fde",
        },
    cursorline = "#fff"
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
