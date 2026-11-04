return {
  -- Navegación nativa de Rails (comandos :Emodel, :Econtroller, etc.)
  { "tpope/vim-rails", ft = { "ruby", "eruby" } },

  -- Cierre automático de bloques 'end' en Ruby
  { "tpope/vim-endwise", ft = { "ruby" } },

  -- Configuración de autocompletado mediante fuentes adicionales en nvim-cmp
  {
    'ludovicchabant/vim-gutentags',
    config = function()
      vim.g.gutentags_ctags_exclude = {
        '*.git', '*.svg', '*.json', 'node_modules', 'log', 'tmp', 'public', 'vendor'
      }
    end,
  },
}
