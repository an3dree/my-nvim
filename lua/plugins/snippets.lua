return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*", -- garante versão estável
    build = "make install_jsregexp", -- necessário para regex avançado
    dependencies = {
      "rafamadriz/friendly-snippets", -- coleção de snippets prontos
    },
    config = function()
      local luasnip = require("luasnip")

      -- carrega snippets do VSCode/friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- atalhos básicos
      vim.keymap.set({ "i", "s" }, "<C-k>", function()
        if luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        end
      end, { silent = true })

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        end
      end, { silent = true })

      vim.keymap.set("i", "<C-l>", function()
        if luasnip.choice_active() then
          luasnip.change_choice(1)
        end
      end)
    end,
  },
}
