vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function

paq { 'savq/paq-nvim', opt=true }     -- Let Paq manage itself
paq 'psliwka/vim-smoothie'
paq 'srcery-colors/srcery-vim'
paq 'junegunn/goyo.vim'
paq 'hoob3rt/lualine.nvim'
paq 'norcalli/nvim-colorizer.lua'
paq 'kyazdani42/nvim-web-devicons'
paq 'nvim-lua/plenary.nvim'
paq 'lewis6991/gitsigns.nvim'
paq { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
paq 'hrsh7th/nvim-compe'
paq 'neovim/nvim-lspconfig'
paq 'b3nj5m1n/kommentary'
