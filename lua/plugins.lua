return {
  "junegunn/vim-easy-align",
  "shaunsingh/nord.nvim",
  "nvim-lualine/lualine.nvim",
  "neovim/nvim-lspconfig",
  "tree-sitter/tree-sitter",
  "lukas-reineke/indent-blankline.nvim",
  "nvim-tree/nvim-web-devicons",
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
  { "ms-jpq/coq_nvim", 
    branch = "coq", 
    dependencies = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { "ms-jpq/coq.thirdparty", branch = "3p" },
    },
  },
  {
    'tigion/nvim-asciidoc-preview',
    ft = { 'asciidoc' },
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
}
