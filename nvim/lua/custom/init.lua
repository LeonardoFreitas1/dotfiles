vim.opt.relativenumber = true

vim.opt.guicursor = "i:block"

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
