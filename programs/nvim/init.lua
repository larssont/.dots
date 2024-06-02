-- Providers
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = ''

-- Set colorscheme
vim.cmd('syntax on')
vim.opt.termguicolors = true
vim.opt.background = 'dark'

-- Set lang
vim.api.nvim_exec('language en_US', true)

-- Disable modemsg on last line
vim.opt.showmode = false

vim.o.shell = "pwsh"

-- Turn on ruler and line numbers
vim.opt.number = true
vim.opt.ruler = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'

-- Netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 24

-- Tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Search settings
vim.opt.hlsearch = true                            -- Highlight the search result
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.incsearch = true                           -- Find as I type during the search
vim.opt.smartcase = true                           -- Case sensitive only if search contains uppercase letter.

-- Show effects of commands incrementally
vim.opt.inccommand = 'nosplit'

-- Key mappings
vim.keymap.set('n', '<leader><Leader>', ':buffers<CR>:b<space>')
vim.keymap.set('n', '<Leader>e', ':Lexplore<CR>', { silent = true })
vim.keymap.set('n', '<Leader>rg', ':grep<Space>')
vim.keymap.set('n', '<C-n>', ':bnext<CR>')
vim.keymap.set('n', '<C-p>', ':bprevious<CR>')

-- Remap j->k and k->j to better suit Colemak-DH
vim.keymap.set({"n", "v", "o"}, "j", "k")
vim.keymap.set({"n", "v", "o"}, "k", "j")

-- Center cursor after using ctrl+d and ctrl+u
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Center cursor after moving down half-page"})

-- Highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = "Highlight selection on yank",
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({higroup = "Visual", timeout=250})
    end,
    desc = "Highlight text on yank"
})

-- Set vimgrep to use ripgrep
if vim.fn.executable('rg') == 1 then
    vim.opt.grepprg = 'rg --vimgrep --no-heading --smart-case'
    vim.opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
end
