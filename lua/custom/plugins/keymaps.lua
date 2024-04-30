vim.keymap.set('n', '<leader>lg', ':!lazygit <Enter>', { desc = 'Open [L]azy [G]it' })
-- vim.keymap.set('n', '<leader>rg', ':!go .... <Enter>', { desc = '[R]un [G]o file' })
vim.keymap.set('n', '<leader>rg', ':!go build -o out % && ./out<Enter>', { desc = '[R]un [G]o file' })
return {}
