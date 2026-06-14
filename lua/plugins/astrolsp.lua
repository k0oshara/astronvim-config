---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = { inlay_hints = true },
    formatting = {
      format_on_save = {
        enabled = false,
        ignore_filetypes = { "c", "cpp" },
      },
    },
    mappings = {
      n = {
        gr = {
          function() vim.lsp.buf.references() end,
          desc = "References of current symbol",
          cond = "textDocument/references",
        },
      },
    },
  },
}
