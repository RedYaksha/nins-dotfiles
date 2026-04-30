vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
})

vim.keymap.set("n", "<leader>ff", "<CMD>FzfLua files<CR>")
vim.keymap.set("n", "<leader>fb", "<CMD>FzfLua buffers<CR>")
vim.keymap.set("n", "<leader>fg", "<CMD>FzfLua live_grep<CR>")
vim.keymap.set("n", "<leader>fh", "<CMD>FzfLua live_grep_resume<CR>")
