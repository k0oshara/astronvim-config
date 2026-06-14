return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"

      vim.g.gruvbox_material_ui_contrast = "low"

      vim.g.gruvbox_material_float_style = "dim"

      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_disable_italic_comment = 1

      vim.g.gruvbox_material_better_performance = 0
    end,
  },

  {
    "AstroNvim/astroui",
    opts = {
      colorscheme = "gruvbox-material",
      highlights = {
      init = function()
        local bg = "#1b1816"

        return {
          Normal = { bg = bg },
          NormalNC = { bg = bg },
          SignColumn = { bg = bg },
          EndOfBuffer = { bg = bg },
          FloatBorder = { bg = bg },
          NormalFloat = { bg = bg },
          WinBar = { bg = bg },
          WinBarNC = { bg = bg },
        }
      end,
      },
    },
  },
}
