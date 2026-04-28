local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-mini/mini.icons" },
  { "nvim-mini/mini.statusline", config = true },
  { "nvim-mini/mini.pairs", config = true },
  { "nvim-mini/mini.files", 
		config = true, 	
		keys = {
			{
				"<space>fm",
				 function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
			}
		},
	},
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- DEPRECATED!!!
	{ "ibhagwan/fzf-lua" },
	{
  'saghen/blink.nvim',
  build = 'cargo build --release', -- for delimiters
  keys = {
	-- chartoggle
	{
	  '<C-;>',
	  function()
	  	require('blink.chartoggle').toggle_char_eol(';')
	  end,
	  mode = { 'n', 'v' },
	  desc = 'Toggle ; at eol',
	},
	{
	  ',',
	  function()
	  	require('blink.chartoggle').toggle_char_eol(',')
	  end,
	  mode = { 'n', 'v' },
	  desc = 'Toggle , at eol',
	},

	-- tree
	{ '<C-e>', '<cmd>BlinkTree reveal<cr>', desc = 'Reveal current file in tree' },
	{ '<leader>E', '<cmd>BlinkTree toggle<cr>', desc = 'Reveal current file in tree' },
	{ '<leader>e', '<cmd>BlinkTree toggle-focus<cr>', desc = 'Toggle file tree focus' },
  },
  -- all modules handle lazy loading internally
  lazy = false,
  opts = {
    chartoggle = { enabled = true },
    tree = { enabled = true }
  }
}

})
