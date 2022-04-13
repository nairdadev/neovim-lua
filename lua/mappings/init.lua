local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


vim.g.mapleader = ' '


map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)


map('n', '<leader>n', ':BufferPrevious<CR>', opts)
map('n', '<leader>b', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<c-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<c->>', ' :BufferMoveNext<CR>', opts)
-- Close buffer
map('n', '<leader>c', ':BufferClose<CR>', opts)



map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)


map("n", "<leader>k", ":resize -2<CR>", opts)
map("n", "<leader>j", ":resize +2<CR>", opts)
map("n", "<leader>h", ":vertical resize -2<CR>", opts)
map("n", "<leader>l", ":vertical resize +2<CR>", opts)


map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>lg', ':Telescope live_grep<CR>', opts)
