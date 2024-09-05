local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "isort" },
    css = { "prettier" },
    html = { "prettier" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 400,
    lsp_fallback = true,
  },
}

return options
