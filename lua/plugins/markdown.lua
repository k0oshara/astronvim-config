return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,

    opts = {
      preview = {
        splitview_winopts = {
          split = "right",
        },
      },
    },

    keys = {
      {
        "<leader>mp",
        "<cmd>Markview splitToggle<cr>",
        desc = "Markdown split preview",
      },
    },
  },
}
