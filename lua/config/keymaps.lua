-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Terminal toggle
vim.keymap.set("n", "<leader>tt", function() Snacks.terminal() end, { desc = "Terminal" })
vim.keymap.set("n", "<leader>tf", function() Snacks.terminal(nil, { win = { style = "float" } }) end, { desc = "Floating Terminal" })
vim.keymap.set({ "n", "t" }, "<A-/>", function() Snacks.terminal(nil, { win = { style = "float" } }) end, { desc = "Floating Terminal" })
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle Comment" })

-- Buffer navigation with count (e.g., 3]b to go 3 buffers right)
vim.keymap.set("n", "]b", function()
  for _ = 1, vim.v.count1 do
    vim.cmd("bnext")
  end
end, { desc = "Next Buffer" })

vim.keymap.set("n", "[b", function()
  for _ = 1, vim.v.count1 do
    vim.cmd("bprevious")
  end
end, { desc = "Previous Buffer" })

-- Which-key group names
local wk = require("which-key")
wk.add({
  { "<leader>t", group = "terminal" },
  { "<leader>T", group = "test" },
})
