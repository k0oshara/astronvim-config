---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false,
        expandtab = true,
        tabstop = 4,
        shiftwidth = 4,
        list = true,
        scrolloff = 10,
      },
    },
    diagnostics = {
      virtual_text = false,
    },
    mappings = {
      n = {
        ["<Leader>w"] = false,
        ["<S-l>"] = {
          function() require("astrocore.buffer").nav(vim.v.count1) end,
          desc = "Next buffer",
        },
        ["<S-h>"] = {
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
          desc = "Previous buffer",
        },
      },
    },
  },
}
