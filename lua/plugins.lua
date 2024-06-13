return {
  "junegunn/vim-easy-align",
  "shaunsingh/nord.nvim",
  "nvim-lualine/lualine.nvim",
  "neovim/nvim-lspconfig",
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
  "tree-sitter/tree-sitter",
  "lukas-reineke/indent-blankline.nvim",
  "nvim-tree/nvim-web-devicons",
  "chentoast/marks.nvim",
  "simrat39/symbols-outline.nvim",
  { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"
  },
  { 
    "nvim-telescope/telescope.nvim", 
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  { 
    "sudormrfbin/cheatsheet.nvim", 
    dependencies = {
      "nvim-telescope/telescope.nvim"
    }
  },
  -- { "ms-jpq/coq_nvim", 
  --   branch = "coq", 
  --   dependencies = {
  --     { "ms-jpq/coq.artifacts", branch = "artifacts" },
  --     { "ms-jpq/coq.thirdparty", branch = "3p" },
  --   },
  -- },
  {
    'tigion/nvim-asciidoc-preview',
    ft = { 'asciidoc' },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  -- "powerman/vim-plugin-ruscmd",
  'numToStr/Comment.nvim',
}
