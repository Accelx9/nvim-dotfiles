require'nvim-web-devicons'.setup {
    default = true
}

require("nvim-web-devicons").set_icon {
  node_modules = {
    icon = "",
    color = "#19953F",
    cterm_color = "65",
    name = "node_modules"
  }
  ,
  ["README.md"] ={
        icon = "",
        color = "#315FE6",
        cterm_coloro = "65",
        name = "README"
            }
}
