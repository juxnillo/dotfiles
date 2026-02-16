vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

vim.keymap.set("n", "<leader>x", function() Snacks.dashboard.open() end, { desc = "Go to Dashboard" })


