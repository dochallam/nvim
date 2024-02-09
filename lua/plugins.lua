-- We are using the lazy.nvim plugin manager (https://github.com/folke/lazy.nvim)

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- plugins
require("lazy").setup({

    -- Nightfox colour scheme (https://github.com/EdenEast/nightfox.nvim)
	{
  		"EdenEast/nightfox.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
	},


	-- Lualine status bar (https://github.com/nvim-lualine/lualine.nvim)
	{
    	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' }
	},


    -- Indent visualizer (https://github.com/lukas-reineke/indent-blankline.nvim)
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },


    -- Treesitter syntax highlighting (https://github.com/nvim-treesitter/nvim-treesitter)
    -- See also https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation for installation
    -- using lazy.vim
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "bash", "python", "c", "css", "lua", "vim", "vimdoc", "query", "javascript",
            "markdown", "markdown_inline", "html", "terraform", "json", "yaml" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
            })
        end
    },


    -- Telescope fuzzy finder (https://github.com/nvim-telescope/telescope.nvim)
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },


    -- LuaSnip macros (https://github.com/L3MON4D3/LuaSnip)
    {
	    "L3MON4D3/LuaSnip",
	    -- follow latest release.
	    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	    -- install jsregexp (optional!).
	    build = "make install_jsregexp"
    }

})
