---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "gruvbox-material",

    highlights = {
      init = {
        NeoTreeGitUntracked = { fg = "#d8a657", bold = false },
      },
    },
  },
}
