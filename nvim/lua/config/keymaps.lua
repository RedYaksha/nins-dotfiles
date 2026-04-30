vim.g.mapleader = " "
vim.keymap.set("n", " ", "", { silent = true, remap = false })

-- Key bindings
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end)
vim.keymap.set("n", "K",  function() vim.lsp.buf.hover() end)
