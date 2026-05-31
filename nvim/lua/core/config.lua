-- Save file changes upon leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("write")
    end
  end,
})

-- Save file changes upon every text entry
-- vim.api.nvim_create_autocmd("TextChangedI", {
--   pattern = "*",
--   callback = function()
--     if vim.bo.modified and vim.bo.buftype == "" then
--       vim.cmd("write")
--     end
--   end,
-- })