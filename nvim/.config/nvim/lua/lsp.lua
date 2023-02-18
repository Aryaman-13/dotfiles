-- lsp keymapings
local on_attach = function(client,bufnr) 
        vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n","gd",vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n","gD",vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set("n","gi",vim.lsp.buf.implementation, {buffer=0})
        vim.keymap.set("n","<space>oD",vim.diagnostic.open_float, {buffer=0})
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {buffer=0})
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {buffer=0})
        -- format on save
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = vim.api.nvim_create_augroup("Format", { clear = true }),
              buffer = bufnr,
              callback = function() vim.lsp.buf.formatting_seq_sync() end
            })
        end 
end
