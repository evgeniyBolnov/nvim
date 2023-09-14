return {
  "junegunn/vim-easy-align",
--  "preservim/nerdtree",
  "tpope/vim-fireplace",
  "shaunsingh/nord.nvim",
  "nvim-lualine/lualine.nvim",
  "tree-sitter/tree-sitter",
  { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"
  },
  "neovim/nvim-lspconfig",
  "lukas-reineke/indent-blankline.nvim",
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
  "nvim-tree/nvim-web-devicons",
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
  "simrat39/symbols-outline.nvim",
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
