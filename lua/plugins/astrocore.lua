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
        ["d"] = {
          '"_d',
          desc = "Delete",
        },
        ["x"] = {
          '"_x',
          desc = "Delete character",
        },
        ["X"] = {
          '"_X',
          desc = "Delete previous character",
        },
        ["c"] = {
          '"_c',
          desc = "Change",
        },
        ["C"] = {
          '"_C',
          desc = "Change to end of line",
        },
        ["s"] = {
          '"_s',
          desc = "Substitute character",
        },
        ["S"] = {
          '"_S',
          desc = "Substitute line",
        },
        ["D"] = {
          "d",
          desc = "Cut",
        },
        ["U"] = {
          "<C-r>",
          desc = "Redo",
        },
        ["<C-r>"] = "<Nop>",
        ["<S-l>"] = {
          function() require("astrocore.buffer").nav(vim.v.count1) end,
          desc = "Next buffer",
        },
        ["<S-h>"] = {
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
          desc = "Previous buffer",
        },
      },
      x = {
        ["d"] = {
          '"_d',
          desc = "Delete selection",
        },
        ["x"] = {
          '"_x',
          desc = "Delete selection",
        },
        ["c"] = {
          '"_c',
          desc = "Change selection",
        },
        ["s"] = {
          '"_s',
          desc = "Substitute selection",
        },
        ["D"] = {
          "d",
          desc = "Cut selection",
        },
      },
      o = {
        ["D"] = "d",
      },
    },
  },
}
