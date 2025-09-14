return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "javascript",
            "javascriptreact",
            "typescriptreact",
            "vue",
            "svelte",
          },
        },
      },
    },
  },
}
