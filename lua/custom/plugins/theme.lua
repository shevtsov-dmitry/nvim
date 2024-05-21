-- ### THEME ###
return {
    -- {
    --     'navarasu/onedark.nvim',
    --     priority = 1000, -- Make sure to load this before all the other start plugins.
    --     opts = {
    --         transparent = true,
    --         term_colors = true, -- Change terminal color as per the selected theme style
    --     },
    --     init = function()
    --         -- vim.go.background = 'dark'
    --         -- vim.opt.background = 'light' -- set this to dark or light
    --         vim.cmd.hi 'Comment gui=none'
    --         vim.cmd.colorscheme 'onedark'
    --         vim.opt.termguicolors = true
    --     end,
    -- },
    {
        'savq/melange-nvim',
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'melange'
            vim.opt.termguicolors = true
            vim.opt.background = 'light'
            -- vim.opt.background = 'dark'
        end,
    },
    -- {
    --     'rose-pine/neovim',
    --     name = 'rose-pine',
    --     -- opts = {},
    --     -- config = {
    --     --     -- vim.cmd("colorscheme rose-pine")
    --     --     -- vim.cmd("colorscheme rose-pine-main")
    --     --     -- vim.cmd("colorscheme rose-pine-moon")
    --     --     -- vim.cmd 'colorscheme rose-pine-dawn',
    --     -- },
    --     config = function(_, opts)
    --         require('rose-pine').setup(opts)
    --         vim.cmd 'colorscheme rose-pine-dawn' -- Apply the base colorscheme
    --     end,
    -- },

    -- {
    --     'nyoom-engineering/oxocarbon.nvim',
    --     config = function()
    --         vim.opt.background = 'dark' -- set this to dark or light
    --         -- vim.opt.background = 'light' -- set this to dark or light
    --         vim.cmd 'colorscheme oxocarbon'
    --         -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    --         -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    --     end,
    --     -- event = foo,
    --     -- config = bar
    --     -- end,
    -- },
}
