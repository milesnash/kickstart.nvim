-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Preferred indentation defaults
-- Note, these should be overridden by more specific rules according to auto-setting
-- e.g. ftplugins and editorconfig files
-- See :help auto-setting
vim.o.expandtab = true
vim.o.shiftwidth = 4

-- Pretty symbols for diagnostics
vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })

-- Allow project-specific nvim config files to be read
-- e.g. .nvim.lua at the project's root
vim.o.exrc = true

return {}
