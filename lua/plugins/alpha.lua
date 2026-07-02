return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "█████   █████  ███              ███  █████   █████  ███                 ",
      "▒▒███   ▒▒███  ▒▒▒              ▒▒▒  ▒▒███   ▒▒███  ▒▒▒                 ",
      " ▒███    ▒███  ████  ████████   ████  ▒███    ▒███  ████  █████████████  ",
      " ▒███    ▒███ ▒▒███ ▒▒███▒▒███ ▒▒███  ▒███    ▒███ ▒▒███ ▒▒███▒▒███▒▒███ ",
      " ▒▒███   ███   ▒███  ▒███ ▒███  ▒███  ▒▒███   ███   ▒███  ▒███ ▒███ ▒███ ",
      "  ▒▒▒█████▒    ▒███  ▒███ ▒███  ▒███   ▒▒▒█████▒    ▒███  ▒███ ▒███ ▒███ ",
      "    ▒▒███      █████ ████ █████ █████    ▒▒███      █████ █████▒███ █████",
      "     ▒▒▒      ▒▒▒▒▒ ▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒      ▒▒▒      ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "󰈔  New file",          ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "󰍉  Find file",          ":Telescope find_files<CR>"),
      dashboard.button("r", "󰋚  Recent files",       ":Telescope oldfiles<CR>"),
      dashboard.button("g", "󰊄  Live grep",          ":Telescope live_grep<CR>"),
      dashboard.button("l", "󰒲  Lazy",               ":Lazy<CR>"),
      dashboard.button("q", "󰅚  Quit",               ":qa<CR>"),
    }

    local workspace = vim.fn.expand("~/Workspace")
    local project_buttons = {}
    local keys = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" }
    local dirs = vim.fn.globpath(workspace, "*", false, true)

    for i, dir in ipairs(dirs) do
      if vim.fn.isdirectory(dir) == 1 and i <= #keys then
        local name = vim.fn.fnamemodify(dir, ":t")
        table.insert(project_buttons, dashboard.button(
          keys[i],
          "󰉋  " .. name,
          ":cd " .. vim.fn.fnameescape(dir) .. " | Telescope find_files<CR>"
        ))
      end
    end

    local projects_section = {
      type = "group",
      val = {
        { type = "padding", val = 1 },
        { type = "text", val = "  Projetos", opts = { hl = "AlphaProjectsTitle", position = "center" } },
        { type = "padding", val = 1 },
        { type = "group", val = project_buttons },
      },
    }

    dashboard.section.header.opts.hl = "AlphaHeader"
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#9d7cd8" })
    vim.api.nvim_set_hl(0, "AlphaProjectsTitle", { fg = "#7dcfff", bold = true })

    local config = dashboard.config
    table.insert(config.layout, projects_section)

    alpha.setup(config)
  end,
}
