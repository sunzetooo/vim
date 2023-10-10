--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA CONFIGURATION MODULE - LAZY PLUGIN MANAGER                                               --
--  ======================================================================================================================================================= --
--  
--  Get the path to the lazy.nvim directory
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is already installed, and if not, clone it from GitHub
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

-- Prepend the lazy.nvim directory to the runtime path
vim.opt.rtp:prepend(lazypath)

-- List of plugins to install
local plugins = {
    -- Catppuccin Theme
    { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

    -- Telescope plugin for fuzzy finding and file searching
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
            -- Dependencies: plenary.nvim for utility functions
            dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Harpoon plugin for managing projects and windows
    { 'ThePrimeagen/harpoon'},

    -- Lualine plugin for a customizable status line
    { 'nvim-lualine/lualine.nvim',
            -- Dependencies: nvim-tree/nvim-web-devicons for icons
            dependencies = { 'nvim-tree/nvim-web-devicons'}
    },

    -- Nvim Treesitter
    { 'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate'
        },

    -- LZP Zero
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    -- Discord Rich Presence
    {'andweeb/presence.nvim'}
}

-- Setup lazy.nvim with the list of plugins and options
require("lazy").setup(plugins)
