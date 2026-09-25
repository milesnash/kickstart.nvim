vim.pack.add {
  'https://github.com/zbirenbaum/copilot.lua',
  'https://github.com/giuxtaposition/blink-cmp-copilot',
}

require('blink.cmp').add_source_provider('copilot', {
  name = 'copilot',
  module = 'blink-cmp-copilot',
  score_offset = 100,
  async = true,
  enabled = true,
})

-- Add 'copilot' to blink.cmp's default sources list at runtime,
-- so this plugin file is self-contained and init.lua doesn't need editing.
do
  local ok, blink_config = pcall(require, 'blink.cmp.config')
  local default_sources = ok and blink_config.sources and blink_config.sources.default
  if type(default_sources) == 'table' then table.insert(default_sources, 'copilot') end
end

require('copilot').setup {
  suggestion = { enabled = false },
  panel = { enabled = false },
  -- suggestion = {
  --   auto_trigger = true,
  --   hide_during_completion = false,
  --   keymap = {
  --     accept = '<Tab>',
  --   },
  -- },
  -- logger = {
  --   file = vim.fn.stdpath 'log' .. '/copilot-lua.log',
  --   file_log_level = vim.log.levels.TRACE,
  --   print_log_level = vim.log.levels.TRACE,
  --   trace_lsp = 'debug',
  --   trace_lsp_progress = true,
  --   log_lsp_messages = true,
  -- },
}
