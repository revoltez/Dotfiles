lua << EOF
vim.cmd.colorscheme("rose-pine")


-- -- setting up lualine
-- if vim.g.neovide then
-- 		vim.o.guifont = "Source Code Pro:h5" -- text below applies for VimScript		
-- 		vim.g.neovide_scale_factor = 0.7
-- end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

require("telescope").setup({
  defaults = {
    preview = {
      treesitter = false,
    },
  },
})

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<S-Right>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-Left>", function() harpoon:list():next() end)

local harpoon = require('harpoon')
harpoon:setup({})


-- require('lualine').setup()

require"startup".setup()

-- setup spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})








local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- require('avante_lib').load()

-- require('avante').setup({
--   provider = "openai",
--   ---@type AvanteSupportedProvider
--   openai = {
--     endpoint = "https://api.openai.com/v1",
--     model = "gpt-4o",
--     timeout = 30000, -- Timeout in milliseconds
--     temperature = 0,
--     max_tokens = 4096,
--   },
-- 		---@type AvanteSupportedProvider
--   gemini = {
--     endpoint = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest",
--     model = "gemini-1.5-flash-latest",
--     timeout = 30000, -- Timeout in milliseconds
--     temperature = 0,
--     max_tokens = 4096,
--   },
--   windows = {
--     ---@type "right" | "left" | "top" | "bottom"
--     position = "right", 
--     wrap = true, 
--     width = 50, 
--
-- }})

vim.opt.termguicolors = true

require('nvim-highlight-colors').setup({})

-- this hides the status line
vim.opt.laststatus = 0

-- blankline
require("ibl").setup()

require("noice").setup()

require("toggleterm").setup({
  direction = "float",  -- or "horizontal", "vertical"
})

EOF
