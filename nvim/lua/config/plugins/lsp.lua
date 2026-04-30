-- Based on: https://dotfiles.substack.com/p/native-lsp-in-neovim-012

vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup()
require('mason-tool-installer').setup {
    ensure_installed = {
        -- "lua-language-server",
        -- "clangd",
        -- "clang-format",
        "basedpyright",
    }
}

vim.lsp.config("lua-lsp", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git" },
})
vim.lsp.enable("lua-lsp")

vim.lsp.config("clangd", {
    cmd = { 
        "clangd",
        "--compile-commands-dir=" .. vim.loop.cwd() .. "/build"
    },
    filetypes = { "c", "h", "hpp", "cpp", "cxx" },
    root_markers = { ".git" },
})
vim.lsp.enable("clangd")

require('mason-lspconfig').setup({
    automatic_enable = true,
})
