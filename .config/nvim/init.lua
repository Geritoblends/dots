-- init.lua

-- Set up basic options
vim.g.mapleader = " "
vim.o.number = true          -- Show line numbers
vim.o.relativenumber = true  -- Relative line numbers
vim.o.tabstop = 4            -- Set tab width to 4 spaces
vim.o.shiftwidth = 4         -- Set shift width to 4 spaces
vim.o.expandtab = true       -- Use spaces instead of tabs
vim.o.hlsearch = true        -- Highlight search results
vim.o.incsearch = true       -- Incremental search

-- Plugin manager setup (Lazy.nvim)
-- Install Lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/site/pack/packer/start/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugins using Lazy.nvim
require("lazy").setup({
  -- Plugins go here
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {}
      vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
    end,
  }, 
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim"
  },
  {
    "neovim/nvim-lspconfig"
  },

{
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- You can configure nvim-tree here
      require("nvim-tree").setup {}

      -- Keybinding to toggle NvimTree
      vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
    keys = { "<leader>e" }
},
  {
    "EdenEast/nightfox.nvim"
  },

  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function()
    require'luasnip.loaders.from_vscode'.lazy_load()
    end,
  },
})

vim.opt.clipboard = "unnamedplus"

-- Set up colorscheme
vim.cmd([[
    colorscheme carbonfox
    highlight Normal guibg=#000000
    highlight NormalNC guibg=#000000
]])

require("mason").setup()
