return {
  "milanglacier/minuet-ai.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("minuet").setup({
      provider = "openai_fim_compatible",

      provider_options = {
        openai_fim_compatible = {
          api_key = "TERM",

          name = "Ollama",
          end_point = "http://localhost:11434/v1/completions",

          model = "qwen2.5-coder:1.5b-base",

          optional = {
            max_tokens = 64,
            top_p = 0.9,
          },
        },
      },

      virtualtext = {
        auto_trigger_ft = { "*" },

        keymap = {
          accept = "<Tab>",
          dismiss = "<A-e>",
        },
      },
    })
  end,
}