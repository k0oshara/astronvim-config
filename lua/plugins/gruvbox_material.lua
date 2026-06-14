return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_better_performance = 0
    end,
  },

  {
    "AstroNvim/astroui",
    opts = {
      colorscheme = "gruvbox-material",
      highlights = {
        init = {
          Normal = { bg = "#1b1b1b" },
          NormalNC = { bg = "#1b1b1b" },
          SignColumn = { bg = "#1b1b1b" },
          EndOfBuffer = { bg = "#1b1b1b" },
          FloatBorder = { bg = "#1b1b1b" },
          NormalFloat = { bg = "#1b1b1b" },
          WinBar = { bg = "#1b1b1b" },
          WinBarNC = { bg = "#1b1b1b" },
        },
      },
    },
  },
}
