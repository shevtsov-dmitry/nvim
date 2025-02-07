vim.g.lazyvim_blink_main = true

return {
  -- set the following line in your config/options.lua

  {
    'milanglacier/minuet-ai.nvim',
    config = function()
      require('minuet').setup {
        provider = 'openai_fim_compatible',
        n_completions = 1, -- recommend for local model for resource saving
        -- I recommend beginning with a small context window size and incrementally
        -- expanding it, depending on your local computing power. A context window
        -- of 512, serves as an good starting point to estimate your computing
        -- power. Once you have a reliable estimate of your local computing power,
        -- you should adjust the context window to a larger value.
        context_window = 512,
        provider_options = {
          openai_fim_compatible = {
            api_key = 'TERM',
            name = 'Ollama',
            end_point = 'http://localhost:11434/v1/completions',
            model = 'qwen2.5-coder:3b',
            optional = {
              max_tokens = 256,
              top_p = 0.9,
            },
          },
        },
        virtualtext = {
          auto_trigger_ft = {},
          keymap = {
            -- accept whole completion
            accept = '<A-A>',
            -- accept one line
            accept_line = '<A-a>',
            -- accept n lines (prompts for number)
            accept_n_lines = '<A-z>',
            -- Cycle to prev completion item, or manually invoke completion
            prev = '<A-[>',
            -- Cycle to next completion item, or manually invoke completion
            next = '<A-]>',
            dismiss = '<A-e>',
          },
        },
      }
    end,
  },
  {
    'saghen/blink.cmp',
    optional = true,
    opts = {
      keymap = {
        ['<A-y>'] = {
          function(cmp)
            cmp.show { providers = { 'minuet' } }
          end,
        },
      },
      sources = {
        -- if you want to use auto-complete
        default = { 'minuet' },
        providers = {
          minuet = {
            name = 'minuet',
            module = 'minuet.blink',
            score_offset = 100,
          },
        },
      },
    },
  },
}
