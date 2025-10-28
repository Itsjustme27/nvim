return{
  "nvim-treesitter/nvim-treesitter",
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",
  config = function() 
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"rust", "c", "cpp", "python", "javascript", "html", "css", "lua", "bash", "php"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
