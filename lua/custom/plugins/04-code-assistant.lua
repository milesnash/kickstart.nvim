vim.api.nvim_create_autocmd('PackChanged', {
  group = vim.api.nvim_create_augroup('MNTestGroup', { clear = true }),
  callback = function(ev)
    vim.print(ev.data.spec.name)
    if ev.data.spec.name ~= 'avante.nvim' then return end

    if ev.data.kind == 'install' or ev.data.kind == 'update' then vim
      .system({ 'make' }, {
        cwd = ev.data.path,
      })
      :wait() end
  end,
})

vim.pack.add {
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/yetone/avante.nvim',
}

---@diagnostic disable-next-line: missing-fields
require('avante').setup {
  version = false,
  provider = 'copilot',
  providers = {
    copilot = {
      endpoint = 'https://api.githubcopilot.com',
      -- For certain models, e.g. gpt-6-astra
      use_response_api = true,
      model = 'gpt-6-astra',
      -- context_window = 64000,
      timeout = 30000, -- Timeout in milliseconds
      disable_tools = {
        -- 'attempt_completion',
        -- 'bash',
        'copy_path',
        'create_dir',
        'create_file',
        'delete_path',
        -- 'delete_tool_use_messages',
        'edit_file',
        'fetch',
        -- 'get_diagnostics',
        'git_commit',
        'git_diff',
        'glob',
        -- 'grep',
        -- 'insert',
        -- 'ls',
        'move_path',
        'python',
        'rag_search',
        -- 'read_definitions',
        'read_file',
        'read_file_toplevel_symbols',
        'read_global_file',
        -- 'read_todos',
        'run_python',
        'search_keyword',
        -- 'str_replace',
        -- 'think',
        -- 'undo_edit',
        -- 'view',
        'web_search_tavily',
        -- 'write_to_file',
        'write_global_file',
        -- 'write_todos'
      },
      -- extra_request_body = {
      --   max_tokens = 20480,
      -- },
    },
  },
}

require('mini.pick').setup()
