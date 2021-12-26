require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
local treesitter = require'nvim-treesitter.configs'
treesitter.setup {
    ensure_installed = {
        "cpp",
        "scss",
        "lua",
        "c",
        "java",
        "python",
        "javascript",
        "typescript",
        "css",
        "html",
        "tsx",
        "comment"
    },
    sync_install = false,
    highlight = {
        enable = true, 
        additional_vim_regex_highlighting = false 
    },
     refactor = {
     highlight_definitions = { enable = true },
     smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  },
   rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
