return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- TODO: change mapping
  {
    'numToStr/Comment.nvim',
    opts = {},
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}, -- this is equalent to setup({}) function
  },

  { 'Shatur/neovim-session-manager' },
  { 'windwp/nvim-ts-autotag' },

  { 'mbbill/undotree' },
  { 'nvim-neotest/nvim-nio' },
  { 'fladson/vim-kitty' },
}
