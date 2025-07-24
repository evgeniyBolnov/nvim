local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.loaded_netrwPlugin = 0
vim.g.loaded_netrw = 0

require("lazy").setup('plugins')

require('lsp')
require('options')
require('plugins')

require('nord').set()
require('lualine_cfg')
require('autocmd')

if vim.fn.has('wsl') == 1 then
        vim.g.clipboard = {
                name = "win32yank-wsl",
                copy = {
                        ["+"] = "win32yank.exe -i --crlf",
                        ["*"] = "win32yank.exe -i --crlf",
                },
                paste = {
                        ["+"] = "win32yank.exe -o --lf",
                        ["*"] = "win32yank.exe -o --lf",
                },
                cache_enabled = 0,
        }
end

vim.cmd[[highlight CursorLine guibg=#434B5E]]
vim.cmd[[highlight Cursor     gui=reverse guifg=reverse]]

