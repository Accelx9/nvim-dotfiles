return require'packer'.startup(function()
    -- Themes 
    use 'olimorris/onedarkpro.nvim'
    use 'nekonako/xresources-nvim'
    use 'mangeshrex/uwu.vim'
    use 'RRethy/nvim-base16' 
    use 'ray-x/material_plus.nvim'
    use 'navarasu/onedark.nvim'

    -- Plugin installer
    use 'wbthomason/packer.nvim'

    -- Tree and navigation
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }}
    use 'christoomey/vim-tmux-navigator'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- Notifications
    use 'rcarriga/nvim-notify' -- Notifications

    -- Tabs and status bar
    use 'romgrk/barbar.nvim'
    use 'nvim-lualine/lualine.nvim'

    -- Syntax highlighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'p00f/nvim-ts-rainbow'

    -- LSP and completion
    use 'neovim/nvim-lspconfig' -- LSP server
    use 'williamboman/nvim-lsp-installer' -- LSP server's installer
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- More Snippets
    use 'onsails/lspkind-nvim' -- More Snippets
    use "rafamadriz/friendly-snippets" -- More Snippets
    
    -- Formatting
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'
        
    -- Git decorations
    use {
    'lewis6991/gitsigns.nvim',
     requires = {
         'nvim-lua/plenary.nvim'
    },
  config = function()
    require('gitsigns').setup({current_line_blame = true})
  end
     }
end)
