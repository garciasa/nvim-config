return {
  "bluz71/vim-nightfly-colors", 
   name = "nightfly", 
   lazy = false, 
   priority = 1000,
   config = function()
     --load the color scheme here
     vim.cmd([[colorscheme nightfly]])
   end,
}
