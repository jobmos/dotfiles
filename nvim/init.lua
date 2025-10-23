require("config.lazy")

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting


vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({
  virtual_text = true,
})

vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.clipboard = 'unnamedplus' -- Always copy to clipboard

vim.opt.ignorecase = true -- Always search case insensitive
vim.opt.smartcase = true -- Case sensitive search when using capital letters

vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Action" })
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', { desc = "Go to references" })
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', { desc = 'Go to definition' })
vim.keymap.set('n', '<C-e>', '4<C-e>', { desc = 'Scroll down 4 lines' })
vim.keymap.set('n', '<C-y>', '4<C-y>', { desc = 'Scroll up 4 lines' })

vim.cmd("colorscheme nightfox")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
