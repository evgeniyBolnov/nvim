return {
  "junegunn/vim-easy-align",
--  "preservim/nerdtree",
  "tpope/vim-fireplace",
  "shaunsingh/nord.nvim",
  "nvim-lualine/lualine.nvim",
  "tree-sitter/tree-sitter",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  "neovim/nvim-lspconfig",
  "lukas-reineke/indent-blankline.nvim",
  {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}},
  {"sudormrfbin/cheatsheet.nvim", dependencies = {"nvim-telescope/telescope.nvim"}},
  "nvim-tree/nvim-web-devicons",
}
