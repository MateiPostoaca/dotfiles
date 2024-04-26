return {
  {
    "lervag/vimtex",
    init = function()
      -- Use init for configuration, don't use the more common "config".
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexrun'
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_quickfix_mode = 0
    end
  }, 
}
