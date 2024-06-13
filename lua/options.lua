local cmd     = vim.cmd
local exec    = vim.api.nvim_exec
local g       = vim.g
local opt     = vim.opt
local o       = vim.o
local key     = vim.keymap
local builtin = require('telescope.builtin')
-- local utf8 = require("utf8")

-- - opt.encoding   = utf8
opt.colorcolumn    = { '80', '100', '120' } -- Vertical line
opt.cursorline     = true                   -- Highlight line with cursor
opt.spelllang      = { 'en_us', 'ru' }      -- Spell dicts
opt.termguicolors  = true
opt.number         = true                   -- Show line numbers
opt.so             = 10
opt.relativenumber = false                  -- Use relative numbers
opt.wrap           = false                  -- Disable wrap lines
opt.swapfile       = false                  -- Disable swap file
opt.syntax         = on                     -- Enable syntax highlight
opt.smarttab       = true                   -- Enable indent
opt.tabstop        = 2                      -- Tab size - 2 spaces
opt.softtabstop    = 2                      -- Tab size in insert - 2 spaces
opt.shiftwidth     = 2                      -- Indent size - 2 spaces
opt.expandtab      = true                   -- Replace tab to spaces
opt.autoindent     = true                   -- Copy indent for new line
opt.smartindent    = true                   -- Auto insert indent
opt.compatible     = false                  -- Disable compatible with vi
o.clipboard        = 'unnamedplus'
cmd[[set mouse=a]]                          -- Enable mouse

opt.ignorecase = true
opt.smartcase = true

opt.filetype=on                   -- Enbale filetype detection

opt.foldcolumn = '4'
opt.foldmethod = "expr"
opt.foldexpr   = "nvim_treesitter#foldexpr()"
opt.foldenable = false
opt.foldlevel  = 4

-- g.netrw_keepdir = false
-- g.netrw_winsize = 30

-- Example config in lua
g.nord_contrast                = true
g.nord_borders                 = true
g.nord_disable_background      = false
g.nord_cursorline_transparent  = true
g.nord_italic                  = true
g.nord_uniform_diff_background = true
g.nord_bold                    = false

-- g.coq_settings = { auto_start = 'shut-up' }
g.loaded_perl_provider = 0

key.set('n', '<leader>ff', builtin.find_files,       {})
key.set('n', '<leader>fg', builtin.live_grep,        {})
key.set('n', '<leader>fb', builtin.buffers,          {})
key.set('n', '<leader>fh', builtin.help_tags,        {})
key.set('n', '<C-n>',      '<Cmd>Neotree toggle<CR>',{})
key.set('n', 'ga',         '<Plug>(EasyAlign)',      {})
key.set('x', 'ga',         '<Plug>(EasyAlign)',      {})

local default_opts = {noremap = true, silent = true}
key.set('n', '<Tab>'     , '<Cmd>tabnext<CR>'                         , {})
key.set('n', '<S-Tab>'   , '<Cmd>tabprevious<CR>'                     , {})
key.set('n', '<F5>'      , ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', {})
key.set('n', '<esc><esc>', '<Cmd>noh<CR>'                             , {noremap = true, silent = false})
key.set('v', 'J'         , ":m '>+1<CR>gv=gv"                         , {})
key.set('v', 'K'         , ":m '<-2<CR>gv=gv"                         , {})

opt.list = true
opt.listchars:append "trail:⋅"
opt.listchars:append "lead:⋅"
opt.listchars:append "tab:→ "
--opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"
opt.listchars:append "extends:#"

-- g.loaded_netrw       = 1
-- g.loaded_netrwPlugin = 1

require('telescope.previewers').cat.new     = bat
require('telescope.previewers').vimgrep.new = bat
require('telescope.previewers').qflist.new  = bat

-- require('nvim-tree').setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 30,
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
--
require('symbols-outline').setup{
  highlight_hovered_item = true,
  show_guides            = true,
  auto_preview           = true,
  position               = 'right',
  relative_width         = true,
  width                  = 25,
  auto_close             = false,
  show_numbers           = true,
  show_relative_numbers  = false,
  show_symbol_details    = true,
  preview_bg_highlight   = 'Pmenu',
  autofold_depth         = nil,
  auto_unfold_hover      = true,
  fold_markers           = { '', '' },
  wrap                   = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    close          = {"<Esc>", "q"},
    goto_location  = "<Cr>",
    focus_location = "o",
    hover_symbol   = "<C-space>",
    toggle_preview = "K",
    rename_symbol  = "r",
    code_actions   = "a",
    fold           = "h",
    unfold         = "l",
    fold_all       = "W",
    unfold_all     = "E",
    fold_reset     = "R",
  },
  lsp_blacklist    = {},
  symbol_blacklist = {},
  symbols = {
    File          = { icon = "",    hl = "@text.uri"    },
    Module        = { icon = "",    hl = "@namespace"   },
    Namespace     = { icon = "",    hl = "@namespace"   },
    Package       = { icon = "",    hl = "@namespace"   },
    Class         = { icon = "𝓒",    hl = "@type"        },
    Method        = { icon = "ƒ",    hl = "@method"      },
    Property      = { icon = "",    hl = "@method"      },
    Field         = { icon = "",    hl = "@field"       },
    Constructor   = { icon = "",    hl = "@constructor" },
    Enum          = { icon = "ℰ",    hl = "@type"        },
    Interface     = { icon = "ﰮ",    hl = "@type"        },
    Function      = { icon = "",    hl = "@function"    },
    Variable      = { icon = "",    hl = "@constant"    },
    Constant      = { icon = "",    hl = "@constant"    },
    String        = { icon = "𝓐",    hl = "@string"      },
    Number        = { icon = "#",    hl = "@number"      },
    Boolean       = { icon = "⊨",    hl = "@boolean"     },
    Array         = { icon = "",    hl = "@constant"    },
    Object        = { icon = "⦿",    hl = "@type"        },
    Key           = { icon = "🔐",   hl = "@type"        },
    Null          = { icon = "NULL", hl = "@type"        },
    EnumMember    = { icon = "",    hl = "@field"       },
    Struct        = { icon = "𝓢",    hl = "@type"        },
    Event         = { icon = "🗲",    hl = "@type"        },
    Operator      = { icon = "+",    hl = "@operator"    },
    TypeParameter = { icon = "𝙏",    hl = "@parameter"   },
    Component     = { icon = "",    hl = "@function"    },
    Fragment      = { icon = "",    hl = "@constant"    },
  },
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "bash", "make", "verilog", "markdown", "python", "tcl"},
  sync_install     = false,
  auto_install     = true,
  ignore_install   = { "javascript" },
  indent = {
    enable =true
  },
  highlight = {
    enable  = true,
--    disable = { "c", "rust" },
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}

require'marks'.setup {
  default_mappings   = true,
  builtin_marks      = {},
  cyclic             = true,
  force_write_shada  = false,
  refresh_interval   = 250,
  sign_priority      = { lower=10, upper=15, builtin=8, bookmark=20 },
  excluded_filetypes = {},
  mappings = {
    set_next = "m,",
    next     = "m]",
    preview  = "m:",
    prev     = "m["
  }
}

-- local ft = require'Comment.ft'

require('Comment.ft')({'verilog', 'systemverilog'}, {'//%s', '/*%s*/'})
require('Comment').setup()

local cmp = require'cmp'

cmp.setup({
  snippet = {
		expand = function(args)
			require'luasnip'.lsp_expand(args.body) -- Luasnip expand
		end,
	},
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
 		{ name = 'luasnip' },
		{ name = 'buffer' },
		{ name = 'path' },
  }),
  window = {
    documentation = cmp.config.window.bordered()
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
})
