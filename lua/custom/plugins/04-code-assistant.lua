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
      model = 'gpt-4.1',
      context_window = 64000,
      timeout = 30000, -- Timeout in milliseconds
      extra_request_body = {
        temperature = 0.1, -- Lower temperature results in less random completions
        max_tokens = 20480,
      },
    },
  },
}

require('mini.pick').setup()
