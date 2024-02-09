-- neovim settings

vim.g.mapleader = ' '                                   -- Leader key
vim.opt.guicursor = ''                                  -- Disable cursor-styling
vim.opt.number = true                                   -- Show line numbers
vim.opt.relativenumber = true                           -- Show relative line numbers
vim.opt.tabstop = 4                                     -- Number of spaces a <TAB> stands for
vim.opt.softtabstop = 4                                 -- Number of spaces to insert for a <TAB>
vim.opt.shiftwidth = 4                                  -- Number of spaces used for each step of (auto)indent
vim.opt.expandtab = true                                -- Expand <Tab> to spaces in Insert mode
vim.opt.smartindent = true                              -- Do clever autoindenting
vim.opt.wrap = false                                    -- Wrap long lines
vim.opt.swapfile = false                                -- Use a swapfile for this buffer
vim.opt.backup = false                                  -- Keep a backup after overwiting a file
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'  -- Directory for undo files (used by undotree plugin)
vim.opt.undofile = true                                 -- Automatically save and restore undo history
vim.opt.hlsearch = true                                 -- Highlight all matches for the last used search pattern
vim.opt.incsearch = true                                -- Show match for partly typed search command
vim.opt.termguicolors = true                            -- Use GUI colors for the terminal
vim.opt.scrolloff = 8                                   -- Number of screen lines to show around the cursor 
vim.opt.signcolumn = 'no'                               -- Whether to show the signcolumn (local to window)
vim.opt.updatetime = 50                                 -- Time in msec after which the swap file will be updated
--vim.opt.colorcolumn = '80'                              -- Column to highlight (useful for Fortran etc)
