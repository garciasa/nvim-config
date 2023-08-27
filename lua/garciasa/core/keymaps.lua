-- set leader key to space
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map("n", "<leader>c", ":nohl<CR>", default_opts)

-- map Esc to kk
map("i", "jk", "<Esc>", { noremap = true })

-- don't use arrow keys
map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })

-- fast saving with <leader> and s
map("n", "<leader>s", ":w<CR>", default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-- close all windows and exit from neovim
map("n", "<leader>q", ":qa!<CR>", default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map("n", "<leader>t", ":Term<CR>", { noremap = true })

-- nvim-tree
map("n", "<leader>o", ":NvimTreeToggle<CR>", default_opts) -- open/close
map("n", "<leader>r", ":NvimTreeRefresh<CR>", default_opts) -- refresh
map("n", "<leader>n", ":NvimTreeFindFile<CR>", default_opts) -- search file

-- Vista tag-viewer
map("n", "<C-m>", ":Vista!!<CR>", default_opts) -- open/close

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", default_opts)
map("n", "<leader>fs", ":Telescope live_grep<CR>", default_opts)
map("n", "<leader>fc", ":Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" }) -- find string under cursor in current working directory
map("n", "<leader>gc", ":Telescope git_commits<cr>", { desc = "Show git commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map("n", "<leader>gfc", ":Telescope git_bcommits<cr>", { desc = "Show git commits for current buffer" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map("n", "<leader>gb", ":Telescope git_branches<cr>", { desc = "Show git branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
map("n", "<leader>gs", ":Telescope git_status<cr>", { desc = "Show current git changes per file" }) -- list current changes per file with diff preview ["gs" for git status]
-- Buffers
map("n", "<leader>bc", ":bw<CR>", default_opts) -- close buffer
map("n", "<TAB>", ":bnext<CR>", { noremap = true })
map("n", "<S-TAB>", ":bprev<CR>", { noremap = true })

-- Shift line  up or down
map("v", "<S-k>", ":m-2<CR>gv=gv", { noremap = true })
map("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true })

--map("n", "<S-k>", "<Esc>:m-2<CR>", { noremap = true })
--map("n", "<S-j>", "<Esc>:m+1<CR>", { noremap = true })

map("n", "<S-k>", "5k", { noremap = true })
map("n", "<S-j>", "5j", { noremap = true })

-- window management

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- COPILOT
map("i", "<S-/>", "comple#Accept", { noremap = true, silent = true, expr = true })
