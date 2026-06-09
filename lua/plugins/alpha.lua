return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      " ██████   █████                   █████   █████  ███                 ",
      "░░██████ ░░███                   ░░███   ░░███  ░░░                  ",
      " ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████  ",
      " ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███ ",
      " ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███ ",
      " ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███ ",
      " █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████",
      "░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "󰈔  New file",          ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "󰍉  Find file",          ":Telescope find_files<CR>"),
      dashboard.button("r", "󰋚  Recent files",       ":Telescope oldfiles<CR>"),
      dashboard.button("g", "󰊄  Live grep",          ":Telescope live_grep<CR>"),
      dashboard.button("l", "󰒲  Lazy",               ":Lazy<CR>"),
      dashboard.button("q", "󰅚  Quit",               ":qa<CR>"),
    }

    dashboard.section.header.opts.hl = "AlphaHeader"
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#9d7cd8" })

    alpha.setup(dashboard.config)
  end,
}
