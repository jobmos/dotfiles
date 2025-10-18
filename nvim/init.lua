require("config.lazy")

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting


vim.opt.number = true         -- Shows absolute line number on current line
vim.opt.relativenumber = true -- Shows relative line numbers on other lines

vim.diagnostic.config({
  virtual_text = true,
})

vim.opt.undofile = true

vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Action" })
