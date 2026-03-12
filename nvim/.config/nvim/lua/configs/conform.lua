local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    jsonc = { "biome" },
    json = { "biome" },
    typescriptreact = { "biome" },
    typescript = { "biome" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
