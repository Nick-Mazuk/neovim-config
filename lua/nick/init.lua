require('nick.remap')
require('nick.set')
-- require('nick.autotest')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
