lua require('plugins')

" Set colorscheme
syntax on
set termguicolors
colorscheme srcery

" Disable modemsg on last line
set noshowmode

" Turn on ruler and line numbers
set number
set ruler
set relativenumber
set signcolumn=yes

" Netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4

" Search settings
set hlsearch                            " Highlight the search result
set ignorecase                          " Case insensitive search
set incsearch                           " Find as I type during the search
set smartcase                           " Case sensitive only if search contains uppercase letter.

" Show effects of comands incrementally
set inccommand=nosplit

" Key mappings
nnoremap <silent> <Leader>e       :Lexplore<CR>
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <Leader>g :silent lgrep<Space>
nnoremap <silent> [f :lprevious<CR>
nnoremap <silent> ]f :lnext<CR>
nnoremap <leader>z :Goyo<CR>

" Highlight yank
augroup LuaHighlight
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

" Set vimgrep to use ripgrep
if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Goyo
let g:goyo_width = 120
let g:goyo_height = '85%' 

" lualine
lua require('statusline')

" nvim-colorizer
lua require('colorizer').setup()

" kommentary
lua require('kommentary.config')

" gitsigns
lua require('gitsigns').setup()

" nvim-treesitter
lua require('treesitter')

" nvim-lspconfig
lua require('lsp')

" nvim-compe
set shortmess+=c
lua require('completion')
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
