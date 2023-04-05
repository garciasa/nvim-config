local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

g.mapleader = ' '               -- change leader to a comma
g.netrw_banner =  0             -- no inital  banner
g.netrw_liststyle =  2          -- several  files per column

opt.mouse = 'a'                 -- enable mouse support
opt.clipboard = 'unnamedplus'   -- copy/paste to system clipboard
opt.swapfile = false            -- don't use swapfile

opt.number = true               -- show line number
opt.showmatch = true            -- highlight matching parenthesis
opt.foldmethod = 'marker'       -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'          -- line lenght marker at 80 columns
opt.splitright = true           -- vertical split to the right
opt.splitbelow = true           -- orizontal split to the bottom
opt.ignorecase = true           -- ignore case letters when search
opt.smartcase = true            -- ignore lowercase for the whole pattern
opt.linebreak = true            -- wrap on word boundary
opt.scrolloff =  3
opt.hidden = true               -- enable background buffers
opt.history = 100               -- remember n lines in history
opt.lazyredraw = true           -- faster scrolling
opt.synmaxcol = 240             -- max column for syntax highlight
opt.termguicolors = true        -- enable 24-bit RGB colors
opt.expandtab = true            -- use spaces instead of tabs
opt.shiftwidth = 2              -- shift 4 spaces when tab
opt.tabstop = 2                 -- 1 tab == 4 spaces
opt.smartindent = true          -- autoindent new lines
opt.relativenumber = true
opt.ignorecase = true


-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

