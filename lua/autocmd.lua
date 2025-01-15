-- autocmd Filetype make,verilog setlocal foldmethod=expr
-- autocmd Filetype make,verilog setlocal foldexpr=nvim_treesitter#foldexpr()
-- local group = vim.api.nvim_create_augroup("TreeSitter_Fold", { clear = true} )
-- vim.api.nvim_create_autocmd("FileType", { command = "set foldmethod=expr", group = group } )
-- vim.api.nvim_create_autocmd("FileType", { command = "set foldexpr  =nvim_treesitter#foldexpr()", group = group } )
vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = "normal zx", })
