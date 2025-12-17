return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    -- Viewer & compiler
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_progname = "nvr"

    -- Latexmk options
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-xelatex",
      }
    }

    -- UI options
    vim.g.vimtex_syntax_conceal_disable = 0
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_view_automatic = 1

    -- Keymaps
    vim.g.mapleader = " "
    vim.api.nvim_set_keymap(
      "n",
      "<leader>c",
      ":VimtexCompile<CR>",
      { noremap = true, silent = true }
    )
  end,
}

