local image_width = 51
local image_height = 27

return {
  {
    "folke/snacks.nvim",

    opts = {
      dashboard = {
        sections = {
          function(self)
            return {
              section = "terminal",

              cmd = "chafa "
                .. vim.fn.expand("~/.config/astronvim/dashboard_picters/makima.jpg")
                .. string.format(
                  " --format symbols --symbols braille --fg-only --size %dx%d",
                  image_width,
                  image_height
                ),

              width = image_width,
              height = image_height,

              indent = math.floor((self.opts.width - image_width) / 2),

              padding = 1,
            }
          end,

          {
            section = "keys",
            gap = 1,
            padding = 1,
          },

          {
            section = "startup",
          },
        },
      },
    },
  },
}
