-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- map Esc to kk
map('i', 'jk', '<Esc>', {noremap = true})

-- don't use arrow keys
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
-- map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- close all windows and exit from neovim
map('n', '<leader>q', ':qa!<CR>', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map('n', '<C-t>', ':Term<CR>', { noremap = true })

-- nvim-tree
map('n', '<leader>o', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>', default_opts)   -- open/close

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', default_opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', default_opts)

-- Buffers
map('n', '<leader>bc', ':bw<CR>', default_opts) -- close buffer
map('n', '<TAB>', ':tabnext<CR>', default_opts) 
map('n', '<S-TAB>', ':tabprevious<CR>', default_opts) 

-- Shift line  up or down
map('v', '<S-k>', ':m-2<CR>gv=gv', { noremap = true})
map('v', '<S-j>', ":m '>+1<CR>gv=gv", { noremap = true})

map('n', '<S-k>', '<Esc>:m-2<CR>', { noremap = true})
map('n', '<S-j>', "<Esc>:m+1<CR>", { noremap = true})


