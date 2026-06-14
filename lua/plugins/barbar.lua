return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil
    end,
  },

  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      animation = false,
      clickable = true,
      focus_on_close = "left",
      highlight_inactive_file_icons = false,
      highlight_visible = true,

      icons = {
        buffer_index = false,
        buffer_number = false,
        button = "x",

        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "E" },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },

        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" },
        },

        filetype = {
          custom_colors = false,
          enabled = false,
        },

        separator = { left = "|", right = "" },
        separator_at_end = true,
        modified = { button = "*" },
        pinned = { button = "P", filename = true },
        preset = "default",
        inactive = { button = "x" },
        current = { buffer_index = true },
      },

      insert_at_end = true,
      maximum_padding = 1,
      minimum_padding = 1,
      maximum_length = 30,
      minimum_length = 0,

      sidebar_filetypes = {
        NvimTree = true,
        ["neo-tree"] = { event = "BufWipeout" },
      },
    },
    config = function(_, opts)
      require("barbar").setup(opts)
    end,
  },
}
