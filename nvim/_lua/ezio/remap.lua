vim.g.mapleader =" "
vim.keymap.set("n","<leader>f",vim.cmd.Ex)
-- vim.keymap.set("n","<leader>f",':terminal ranger<CR>i')
vim.keymap.set("n","<leader>p",'"+gp')
vim.keymap.set("n","<leader>b",':Prettier<CR>')
vim.api.nvim_set_keymap('n', '<space>o', ':!xdg-open % &<CR>', { noremap = true })
vim.api.nvim_command('set clipboard+=unnamedplus')
