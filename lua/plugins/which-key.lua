return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        require("which-key").setup({
            preset = "helix",
            delay = 300,
            spec = {
                { "<leader>b", group = "+buffer" },
                { "<leader>c", group = "+code" },
                { "<leader>d", group = "+debug/diagnostics" },
                { "<leader>f", group = "+file/find" },
                { "<leader>g", group = "+git" },
                { "<leader>gh", group = "+hunks" },
                { "<leader>l", group = "+lsp" },
                { "<leader>r", group = "+rename/refactor" },
                { "<leader>s", group = "+search" },
                { "<leader>t", group = "+terminal/test" },
                { "<leader>q", group = "+quit" },
                { "<leader>u", group = "+ui/toggle" },
                { "<leader>w", group = "+windows" },
                { "<leader>x", group = "+diagnostics/quickfix" },
            },
            icons = {
                breadcrumb = "»",
                separator = "➜",
                group = "+",
                mappings = true,
            },
        })
    end,
}
