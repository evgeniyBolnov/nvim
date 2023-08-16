local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt
local key = vim.keymap
local builtin = require('telescope.builtin')
-- local utf8 = require("utf8")

--- opt.encoding = utf8
opt.colorcolumn = '100'           -- Vertical line
opt.cursorline = true             -- Highlight line with cursor
opt.spelllang= { 'en_us', 'ru' }  -- Spell dicts
opt.termguicolors = true          
opt.number = true                 -- Show line numbers
opt.relativenumber = true         -- Use relative numbers
opt.wrap=false                    -- Disable wrap lines
opt.swapfile=true                 -- Disable swap file
opt.syntax=on                     -- Enable syntax highlight
opt.smarttab=true                 -- Enable indent
opt.tabstop=2                     -- Tab size - 2 spaces                   
opt.softtabstop=2                 -- Tab size in insert - 2 spaces
opt.shiftwidth=2                  -- Indent size - 2 spaces
opt.expandtab=true                -- Replace tab to spaces
opt.autoindent=true               -- Copy indent for new line
opt.smartindent=true              -- Auto insert indent
cmd[[set mouse=a]]                -- Enable mouse
opt.compatible=false              -- Disable compatible with vi

opt.filetype=on                   -- Enbale filetype detection

opt.foldcolumn='4'
opt.foldmethod="expr"
opt.foldexpr="nvim_treesitter#foldexpr()"
opt.foldenable=false
opt.foldlevel=4

g.netrw_keepdir = false
g.netrw_winsize = 30

-- Example config in lua
g.nord_contrast = true
g.nord_borders = true
g.nord_disable_background = false
g.nord_italic = true
g.nord_uniform_diff_background = true
g.nord_bold = false

-- g.coq_settings = { auto_start = 'shut-up' }
g.loaded_perl_provider = 0

key.set('n', '<leader>ff', builtin.find_files, {})
key.set('n', '<leader>fg', builtin.live_grep, {})
key.set('n', '<leader>fb', builtin.buffers, {})
key.set('n', '<leader>fh', builtin.help_tags, {})

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"

require('telescope.previewers').cat.new = bat
require('telescope.previewers').vimgrep.new = bat
require('telescope.previewers').qflist.new = bat
