return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        ensure_installed = { "go", "lua", "python", "rust", "typescript", "javascript", "html", "css" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    },bbzin
}
