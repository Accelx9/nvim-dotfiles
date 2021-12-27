local lsp_installer = require "nvim-lsp-installer"
local lspconfig = require 'lspconfig'

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api
            .nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting_sync({},1500)]]
        vim.api.nvim_command [[augroup END]]
    end
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts= { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>di', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap("n", "<space>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)

end

local servers = { 
  "tsserver",
  "emmet_ls",
  "cssmodules_ls",
  "cssls",
  "eslint",
  "vuels",
  "svelte",
  "tailwindcss"
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

lsp_installer.on_server_ready(function(server)
  -- Specify the default options which we'll use to setup all servers
  local default_opts = {
    on_attach = on_attach,
  }

   default_opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    -- Use the server's custom settings, if they exist, otherwise default to the default options
  server:setup(default_opts)
end)
--[=====[
local handle_lsp = function(opts) return opts end

local capabilitiesWithoutFomatting = vim.lsp.protocol.make_client_capabilities()
capabilitiesWithoutFomatting.textDocument.formatting = false
capabilitiesWithoutFomatting.textDocument.rangeFormatting = false
capabilitiesWithoutFomatting.textDocument.range_formatting = false

--local ts_utils_attach = require 'lua.lsp-ts-utils'

lspconfig.tsserver.setup(handle_lsp({
    root_dir = lspconfig.util.root_pattern("yarn.lock", "lerna.json", ".git"),
    on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false

  --      ts_utils_attach(client)
        on_attach(client, bufnr)
    end,
    settings = {documentFormatting = false},
    init_options = {hostInfo = "neovim"},
    capabilities = capabilitiesWithoutFomatting
}))


-- Formatting via efm
local prettier = require "efm/prettier"
-- local eslint = require "efm/eslint"
--local luafmt = require "efm/luafmt"
--local rustfmt = require "efm/rustfmt"
-- local autopep = require "efm/autopep8"

local languages = {
    lua = {luafmt},
    -- typescript = {prettier, eslint},
    -- javascript = {prettier, eslint},
    -- typescriptreact = {prettier, eslint},
    -- javascriptreact = {prettier, eslint},
    yaml = {prettier},
    json = {prettier},
    html = {prettier},
    scss = {prettier},
    css = {prettier},
    markdown = {prettier},
  --  rust = {rustfmt}
    -- python = {autopep}
}

lspconfig.efm.setup {
    root_dir = lspconfig.util.root_pattern("yarn.lock", "lerna.json", ".git"),
    filetypes = vim.tbl_keys(languages),
    init_options = {documentFormatting = true, codeAction = true},
    settings = {languages = languages, log_level = 1, log_file = '~/efm.log'},
    on_attach = on_attach
}

--]=====]
