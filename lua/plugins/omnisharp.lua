return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      omnisharp = {
        cmd = { "omnisharp" },
        enable_roslyn_analyzers = true,
        enable_import_completion = true,
        organize_imports_on_format = true,
        enable_editorconfig_support = true,
        -- Filtrar diagnostics: mostrar só WARN e ERROR
        on_attach = function(client, bufnr)
          vim.diagnostic.config({
            virtual_text = {
              severity = { min = vim.diagnostic.severity.WARN },
            },
            signs = true,
            underline = true,
            update_in_insert = false,
          })
        end,
      },
    },
  },
}
