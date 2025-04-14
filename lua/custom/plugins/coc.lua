return {
  -- Instalar o coc.nvim
  {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      -- Configuração específica do coc.nvim, se necessário
      vim.g.coc_global_extensions = {
        'coc-solargraph', -- Usando o coc-solargraph para Ruby
        'coc-snippets', -- Garantindo que os snippets funcionem
      }
    end,
  },

  -- Instalar o coc-solargraph (substituindo o coc-ruby)
  -- Caso não esteja instalado, execute :CocInstall coc-solargraph.
  {
    'neoclide/coc-solargraph',
    config = function()
      -- Configuração específica para o coc-solargraph, se necessário
      vim.api.nvim_set_keymap('i', '<CR>', 'coc#_select_confirm()', { noremap = true, silent = true, expr = true })
    end,
  },
}
