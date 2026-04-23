-- Map Alt + Backspace and Ctrl + Backspace to delete the previous word
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-W>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-BS>", "<C-W>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- vim.keymap.set("n", "<M-s>", ":w<CR>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<M-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })

-- local map = LazyVim.safe_keymap_set
-- map({ "i", "x", "n", "s" }, "<A-s>", "<cmd>w<cr><esc>", { desc = "Save File (Alt+S)" })

