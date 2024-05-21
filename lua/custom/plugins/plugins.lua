return {
    {
        'themaxmarchuk/tailwindcss-colors.nvim',
        -- load only on require("tailwindcss-colors")
        module = 'tailwindcss-colors',
        -- run the setup function after plugin is loaded
        config = function()
            -- pass config options here (or nothing to use defaults)
            require('tailwindcss-colors').setup()
        end,
    },
    {
        'roobert/tailwindcss-colorizer-cmp.nvim',
        -- optionally, override the default options:
        config = function()
            require('tailwindcss-colorizer-cmp').setup {
                color_square_width = 2,
            }
        end,
    },
    {
        'NvChad/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    },
}
