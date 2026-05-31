return {
  'xixiaofinland/sf.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'ibhagwan/fzf-lua', -- optional, for metadata listing
  },
  config = function()
    require('sf').setup()

    local Sf = require('sf')
    -- Push current file to org
    vim.keymap.set('n', '<leader>sp', Sf.save_and_push, { desc = "SF: push file" })
    -- Pull current file from org
    vim.keymap.set('n', '<leader>sr', Sf.retrieve, { desc = "SF: retrieve file" })
    -- Diff local vs org
    vim.keymap.set('n', '<leader>sd', Sf.diff_in_org, { desc = "SF: diff with org" })
    -- Set target org (needed first time)
    vim.keymap.set('n', '<leader>ss', Sf.set_target_org, { desc = "SF: set org" })
  end
}