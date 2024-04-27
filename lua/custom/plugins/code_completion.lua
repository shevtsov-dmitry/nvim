-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
-- See the kickstart.nvim README for more information
return {
    -- help lazy.nvim-lazy.nvim-structuring-your-plugins
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- disable_filetype = { "TelescopePrompt", "spectre_panel" },
    opts = {
        -- fast_wrap = {
        --     chars = { '{', '[', '(', '"', "'", '<' },
        -- },
    },
}
