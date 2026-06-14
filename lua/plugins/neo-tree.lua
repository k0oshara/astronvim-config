return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = false,
      enable_git_status = true,
      enable_diagnostics = true,

      window = {
        width = 30,
      },

      filesystem = {
        follow_current_file = {
          enabled = true,
        },

        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = false,
          hide_hidden = true,
        },

        group_empty_dirs = true,
        use_libuv_file_watcher = true,
      },

      default_component_configs = {
        name = {
          use_git_status_colors = true,
        },
        indent = {
          with_expanders = true,
          expander_collapsed = ">",
          expander_expanded = "v",
          folder_empty = ">",
          default = "",
        },

        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "-",
            renamed = "r",
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "+",
            conflict = "!",
          },
        },
      },

      renderers = {
        directory = {
          { "indent" },
          { "name" },
          { "git_status" },
        },

        file = {
          { "indent" },
          { "name" },
          { "git_status" },
          { "diagnostics" },
        },
      },
    },
  },
}
