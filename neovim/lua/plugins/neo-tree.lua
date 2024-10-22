return {
  -- Configuração para o neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x", -- Versão mais estável atual do Neo-tree
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- Ícones de arquivo opcionais
      "MunifTanjim/nui.nvim",
    },
    config = function()
      -- Configuração simples para o Neo-tree
      require("neo-tree").setup({
        close_if_last_window = true, -- Fecha o Neo-tree se for a última janela
        filesystem = {
          follow_current_file = true, -- Segue o arquivo atual ao abrir
          use_libuv_file_watcher = true, -- Atualiza automaticamente ao alterar arquivos
        },
        window = {
          position = "right",
          width = 30, -- Largura da janela do Neo-tree
          mappings = {
            ["<space>"] = "none", -- Remover o mapeamento do espaço para selecionar
          },
        },
      })
    end,
  }
}
