vim.g.mapleader = ' '

local km = vim.keymap

--search keymaps
km.set('n', '<leader>f', '/') -- search
km.set('n', '<leader>l', ':nohl<CR>') -- clear search

-- windows keymaps
km.set('n', '<leader>v', '<C-w>v') -- split vertically
km.set('n', '<leader>h', '<C-w>s') -- split horizontally
km.set('n', '<leader>eq', '<C-w>v') -- make split windows equal width
km.set('n', '<leader>w', ':close<CR>') -- close current split window
km.set('n', '<leader>wm', ':MaximizerToggle<CR>') -- use vim-maximizer to maximize focused window

-- tabs keymaps
km.set('n', '<leader>t', ':tabnew<CR>') -- open new tab
km.set('n', '<leader>T', ':tabclose<CR>') -- close current tab
km.set('n', '<leader>t<Right>', ':tabn<CR>') -- next tab
km.set('n', '<leader>t<Left>', ':tabp<CR>') -- prev tab

-- file explorer (nvim-tree)
km.set('n', '<leader>b', ':NvimTreeToggle<CR>')
