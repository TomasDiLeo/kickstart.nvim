return {
  -- Navegación nativa de Rails (comandos :Emodel, :Econtroller, etc.)
  { "tpope/vim-rails", ft = { "ruby", "eruby" } },

  -- Cierre automático de bloques 'end' en Ruby
  { "tpope/vim-endwise", ft = { "ruby" } },

  -- Configuración de autocompletado mediante fuentes adicionales en nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Agrega fuentes de autocompletado basadas en buffers abiertos y palabras generales
      insert(opts.sources, { name = "buffer", keyword_length = 3 })
      insert(opts.sources, { name = "tags", keyword_length = 3 })
    end,
  },
  
  -- Soporte para que cmp lea las etiquetas generadas por ctags
  { "quangnguyen30192/cmp-tags", dependencies = { "hrsh7th/nvim-cmp" } }
}
