vim.pack.add {
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}
require('render-markdown').setup {
  -- Add markdown rendering in Avante window
  file_types = { 'Avante', 'markdown' },
}
