local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources ={
    formatting.prettierd,
    --formatting.eslint_d
}

null_ls.setup({
    sources = sources,
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync({},1500)")
        end
    end,
})
