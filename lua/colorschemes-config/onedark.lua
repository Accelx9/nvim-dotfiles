vim.g.onedark_style = 'deep'
require('onedark').setup()

require('lualine').setup {
  options = {
    theme = 'onedark'
    -- ... your lualine config
  }
}
