return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Go
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,

        -- JS/TS
        null_ls.builtins.formatting.prettier,

        -- HTML/CSS (prettier cobre os dois também)

        -- Rust
        null_ls.builtins.formatting.rustfmt,

        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- Kotlin
        null_ls.builtins.formatting.ktlint,
        null_ls.builtins.diagnostics.ktlint,
      },
    })
  end,
}
