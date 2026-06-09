return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                mode = "buffers",
                style_preset = {
                    bufferline.style_preset.no_italic,
                    bufferline.style_preset.no_bold,
                },
                diagnostics = "nvim_lsp",
                diagnostics_update_on_event = true,
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                indicator = {
                    style = "underline",
                },
                separator_style = { "", "" },
                show_buffer_close_icons = true,
                show_close_icon = true,
                always_show_bufferline = true,
                color_icons = true,
                tab_size = 20,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },
            },
        })

        -- Navegação entre buffers
        vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Próximo buffer" })
        vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Buffer anterior" })
        vim.keymap.set("n", "<leader>bp", ":BufferLineTogglePin<CR>", { desc = "Pin buffer" })
        vim.keymap.set("n", "<leader>bP", ":BufferLineGroupClose ungrouped<CR>", { desc = "Fechar buffers não pinados" })
    end,
}
