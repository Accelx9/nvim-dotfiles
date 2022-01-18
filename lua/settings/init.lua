local set = vim.opt

vim.notify = require("notify")
vim.cmd[[hi CursorLine term=bold cterm=bold guibg=Grey2]]
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
--set.guifont = "FantasqueSansMono NF"
--set.guifont = "DankMono NF"
set.clipboard= "unnamed,unnamedplus"

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.updatetime = 300

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'UTF-8'
set.encoding = 'UTF-8'



set.termguicolors = true
set.cursorline = true
set.number = true
set.autoindent = true
set.mouse = "a"
set.hidden = true
set.showmatch = true
vim.cmd[[hi CursorLine term=bold cterm=bold guibg=Grey2]]
--set.GuiTabline = 0
--if vim.api.nvim_eval('exists("g:neovide")') then
    --" Workaround SDL2 AltGr keys not properly read :
   -- " See https://github.com/Kethku/neovide/issues/151#issuecomment-682123519
--     map("","<M-~>", "~")
 --   set.guifont = "DankMono NF"
--end
