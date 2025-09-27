lua << EOF
require "paq" {
    "savq/paq-nvim", -- Let Paq manage itself
	
    "neovim/nvim-lspconfig",

    { "rose-pine/neovim", as = "rose-pine" },
    { "lervag/vimtex", opt = true }, -- Use braces when passing options

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
}
vim.cmd.colorscheme("rose-pine")


-- -- setting up lualine
-- if vim.g.neovide then
-- 		vim.o.guifont = "Source Code Pro:h5" -- text below applies for VimScript		
-- 		vim.g.neovide_scale_factor = 0.7
-- end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })



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

-- -- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end

-- require('lualine').setup()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c","go","javascript", "lua", "vim", "vimdoc", "query", "python"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = {},

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
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

require('avante_lib').load()

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

EOF
