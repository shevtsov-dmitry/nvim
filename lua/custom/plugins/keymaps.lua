vim.keymap.set('n', '<leader>lg', ':!lazygit <Enter>', { desc = 'Open [L]azy [G]it' })
-- vim.keymap.set('n', '<leader>rg', ':!go .... <Enter>', { desc = '[R]un [G]o file' })
vim.keymap.set('n', '<leader>gb', ':!go build -o out % && ./out<Enter>', { desc = '[B]uild [G]o project' })
vim.keymap.set('n', '<leader>gr', ':!go run %<Enter>', { desc = '[R]un [G]o file' })
vim.keymap.set('n', '<leader>fp', ':!prettier --write %<Enter>', { desc = '[F]ormat file with [P]rettier' })
return {}
