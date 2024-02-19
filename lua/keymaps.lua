-- vim key mappings

-- vim netrw file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Explore)  -- opens in current window
vim.keymap.set("n", "<leader>hx", vim.cmd.Sexplore) -- opens in horizontal split
vim.keymap.set("n", "<leader>vx", vim.cmd.Vexplore) -- opens in vertical split

-- clear search (removes highlighted search results)
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>')

-- move selection up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor centered when moving half page up and down
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")

-- keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- window splitting
vim.keymap.set("n", "<A-h>", ":split<CR>")
vim.keymap.set("n", "<A-v>", ":vsplit<CR>")
