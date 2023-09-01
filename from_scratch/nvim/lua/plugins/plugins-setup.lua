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
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'navarasu/onedark.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'christoomey/vim-tmux-navigator',
        config = function ()
            -- require("vim-tmux-navigator").setup()
            -- vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end, {desc = "Flash"})
            vim.keymap.set("n", "<c-l>", "<C-U>TmuxNavigateLeft<cr>", {desc = "move to window left"})
            vim.keymap.set("n", "<c-j>", "<C-U>TmuxNavigateDown<cr>", {desc = "move to window down"})
            vim.keymap.set("n", "<c-k>", "<C-U>TmuxNavigateUp<cr>", {desc = "move to window up"})
            vim.keymap.set("n", "<c-r>", "<C-U>TmuxNavigateRight<cr>", {desc = "move to window right"})
            vim.keymap.set("n", "c-/", "<C-U>TmuxNavigatePrevious<cr>", {desc = "move to previous window"})
        end
    }

    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "folke/neoconf.nvim",
    }

    use {
        "folke/neodev.nvim",
        config = function ()
            require("neodev").setup({
                library = { plugins = { "neotest" }, types = true },
            })
        end
    }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use "rafamadriz/friendly-snippets"
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'

    use 'akinsho/bufferline.nvim'
    use 'lewis6991/gitsigns.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'molecule-man/telescope-menufacture'
    use "smartpde/telescope-recent-files"

    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'
    use 'mfussenegger/nvim-dap-python'

    -- utils
    use {
        'rainbowhxch/accelerated-jk.nvim',

        config = function()
            require('accelerated-jk').setup()
            vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
            vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
        end
    }

    use {
        "folke/persistence.nvim",
        -- event = "BufReadPre", -- this will only start session saving when an actual file was opened
        config = function ()
            require('persistence').setup()
            -- restore the session for the current directory
            vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
            -- restore the last session
            vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
            -- stop Persistence => session won't be saved on exit
            vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
        end
    }

    use {
        'ethanholz/nvim-lastplace',
        config = function ()
            require("nvim-lastplace").setup()
        end
    }

    use "folke/flash.nvim"

    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    }

    use {
        'echasnovski/mini.bufremove',
        config = function ()
            require('mini.bufremove').setup()
            vim.keymap.set("n", "<leader>q", "<cmd>lua MiniBufremove.delete()<cr>", {desc = "delete buffer"})
        end
    }

    use {
        't9md/vim-choosewin',
        config = function ()
            vim.keymap.set("n", "<leader>pw", "<cmd>ChooseWin<cr>", {desc = "pick window"})
        end
    }

    use {
        's1n7ax/nvim-terminal',
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
            vim.keymap.set('n', '<leader>;', ':lua NTGlobal["terminal"]:toggle()<cr>', {silent = true, noremap = true, desc = "toggle terminal"})
            vim.keymap.set('n', '<leader>1', ':lua NTGlobal["terminal"]:open(1)<cr>', {silent = true, noremap = true, desc = "toggle terminal 1"})
            vim.keymap.set('n', '<leader>2', ':lua NTGlobal["terminal"]:open(2)<cr>', {silent = true, noremap = true, desc = "toggle terminal 2"})
            vim.keymap.set('n', '<leader>3', ':lua NTGlobal["terminal"]:open(3)<cr>', {silent = true, noremap = true, desc = "toggle terminal 3"})
            vim.keymap.set('n', '<leader>4', ':lua NTGlobal["terminal"]:open(4)<cr>', {silent = true, noremap = true, desc = "toggle terminal 4"})
            vim.keymap.set('n', '<leader>5', ':lua NTGlobal["terminal"]:open(5)<cr>', {silent = true, noremap = true, desc = "toggle terminal 5"})
            vim.keymap.set('t', '<Esc>', "<C-\\><C-n>", {silent = true, desc = "escape terminal mode"})
        end,
    }

    use {
        'folke/todo-comments.nvim',
        config = function()
            require("todo-comments").setup()
        end
    }

    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, {desc = "toggle trouble"})
            vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end, {desc = "workspace diagnostics"})
            vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end, {desc = "document diagnostics"})
            vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end, {desc = "open quickfix"})
            vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end, {desc = "open loclist"})
            vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, {desc = "open lsp reference"})
        end
    }

    use {
        'CRAG666/code_runner.nvim',
        config = function()
            require('code_runner').setup({
                filetype = {
                    java = {
                        "cd $dir &&",
                        "javac $fileName &&",
                        "java $fileNameWithoutExt"
                    },
                    python = "python3 -u",
                    typescript = "deno run",
                    rust = {
                        "cd $dir &&",
                        "rustc $fileName &&",
                        "$dir/$fileNameWithoutExt"
                    },
                },
            })
            vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false, desc = 'Runs based on file type' })
            vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false, desc = 'Run the current file' })
            vim.keymap.set('n', '<leader>rt', ':RunFile tab<CR>', { noremap = true, silent = false, desc = 'Run the current file and show in a new tab' })
            vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false, desc = 'Run the current project' })
            vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false, desc = 'Close runner' })
            vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
            vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
        end
    }

    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-python"
        },
        config = function ()
            require("neotest").setup({
                adapters = {
                    require("neotest-python")({
                        dap = { justMyCode = false },
                    }),
                }
            })
            vim.keymap.set("n", "<leader>tr", function() require("neotest").run.run() end, {desc = "Run the nearest test"})
            vim.keymap.set("n", "<leader>tf", function () require("neotest").run.run(vim.fn.expand("%")) end, {desc = "Run the current file"})
            vim.keymap.set("n", "<leader>td", function() require("neotest").run.run({strategy = "dap"}) end, {desc = "Debug the nearest test"})
            vim.keymap.set("n", "<leader>ts", function() require("neotest").run.stop() end, {desc = "Stop the nearest test"})
            vim.keymap.set("n", "<leader>ta", function () require("neotest").run.attach() end, {desc = "Attach to the nearest test"})
            vim.keymap.set("n", "<leader>to", function() require("neotest").output_panel.toggle() end, {desc = "Toggle output panel"})
        end
    }

    use {'kevinhwang91/nvim-bqf', ft = 'qf'}

    use {'junegunn/fzf', run = function()
        vim.fn['fzf#install']()
    end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
