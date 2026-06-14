return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.statusline = nil
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      local function maximizer_status()
        return vim.t.maximizer_sizes and "Z" or " "
      end

      local function total_lines()
        return tostring(vim.api.nvim_buf_line_count(0))
      end

      return {
        options = {
          icons_enabled = false,
          theme = "auto",
          component_separators = "|",
          section_separators = "",
          globalstatus = true,
        },

        sections = {
          lualine_a = { "mode", maximizer_status },
          lualine_b = { "branch", "diff" },
          lualine_c = { "filename" },
          lualine_x = {},
          lualine_y = { total_lines },
          lualine_z = { "location" },
        },

        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      }
    end,
  },
}
