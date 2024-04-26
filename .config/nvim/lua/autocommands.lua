-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.cmd [[
   " When shortcut files are updated, renew bash and ranger configs with new material:
  autocmd BufWritePost bm-files,bm-dirs !shortcuts
]]

vim.cmd [[
  " Run xrdb whenever Xdefaults or Xresources are updated.
  autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
  autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
]]

-- Define a function to compile LaTeX files
local function compile_latex()
  vim.cmd('!pdflatex %')
end

-- Set up autocmd to trigger compilation on save for LaTeX files
vim.cmd([[
  augroup autocompile_latex
    autocmd!
    autocmd BufWritePost *.tex lua compile_latex()
  augroup END
]])

