return {
    {
        lazy = true,
        "nvim-lua/plenary.nvim"
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },

    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        opts = {}
    },

    {
        "nvim-tree/nvim-web-devicons",
        opts = {}
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugins.configs.treesitter")
        end
    },

    {
        "akinsho/bufferline.nvim",
        event = "BufReadPre",
        opts = require("plugins.configs.bufferline")
    },

    {
        "echasnovski/mini.statusline",
        config = function()
            require("mini.statusline").setup({ set_vim_settings = false })
        end
    },

    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",

            {
                "windwp/nvim-autopairs",
                config = function()
                    require("nvim-autopairs").setup()

                    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
                    local cmp = require("cmp")
                    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
                end
            }
        },

        opts = function()
            return require("plugins.configs.cmp")
        end
    },

    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        cmd = { "Mason", "MasonInstall" },
        opts = {}
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("plugins.configs.indent-blankline")
        end
    }
}
