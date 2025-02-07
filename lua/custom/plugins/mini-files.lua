return {
  'echasnovski/mini.files',
  opts = {
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    options = {
      -- Whether to use for editing directories
      -- Disabled by default in LazyVim because neo-tree is used for that
      use_as_default_explorer = true,
    },
  },
  keys = {
    {
      '<leader>fm',
      function()
        require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = 'Open mini.files (Directory of Current File)',
    },
    {
      '<leader>fM',
      function()
        require('mini.files').open(vim.uv.cwd(), true)
      end,
      desc = 'Open mini.files (cwd)',
    },
  },
  opts = {
    mappings = {
      close = 'q',
      go_in = 'l',
      go_in_plus = 'L',
      go_out = 'h',
      go_out_plus = 'H',
      mark_goto = "'",
      mark_set = 'm',
      reset = '<BS>',
      reveal_cwd = '@',
      show_help = 'g?',
      synchronize = '<C-S>',
      trim_left = '<',
      trim_right = '>',
    },
  },
}
