vim.pack.add {
  'https://github.com/zbirenbaum/copilot.lua',
  'https://github.com/giuxtaposition/blink-cmp-copilot',
}

require('blink.cmp').add_source_provider('copilot', {
  name = 'copilot',
  module = 'blink-cmp-copilot',
  score_offset = 100,
  async = true,
})

require('copilot').setup {
  suggestion = { enabled = false },
  panel = { enabled = false },
  -- logger = {
  --   file = vim.fn.stdpath 'log' .. '/copilot-lua.log',
  --   file_log_level = vim.log.levels.TRACE,
  --   print_log_level = vim.log.levels.TRACE,
  --   trace_lsp = 'debug',
  --   trace_lsp_progress = true,
  --   log_lsp_messages = true,
  -- },
}
