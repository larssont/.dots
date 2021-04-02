require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "c",
        "css",
        "go",
        "java",
        "javascript",
        "json",
        "lua",
        "python",
        "rust",
        "toml",
        "yaml",
    },     
    highlight = {
        enable = true
    },
}
