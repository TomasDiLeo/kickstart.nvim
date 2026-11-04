-- Autocomando para regenerar CTags al guardar archivos de Ruby
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.rb", "*.erb" },
  callback = function()
    -- Ejecuta ctags de forma asíncrona para no congelar el editor
    vim.fn.jobstart("universal-ctags -R .", { detach = true })
  end,
})
