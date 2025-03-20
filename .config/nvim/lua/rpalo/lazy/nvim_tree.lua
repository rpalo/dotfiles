return {
    {
        "nvim-tree/nvim-tree.lua",
        enabled = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "antosha417/nvim-lsp-file-operations",
        },
        lazy = false,
        config = function()
            require("nvim-tree").setup({
                filters = {
                    dotfiles = false,
                    git_ignored = false,
                    custom = {
                        "__pycache__",
                        ".pytest_cache",
                    },
                },
            })
            local api = require("nvim-tree.api")
            vim.keymap.set("n", "<leader>n", api.tree.toggle)
            api.tree.open()
        end
    },
    {
        "antosha417/nvim-lsp-file-operations",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-tree.lua",
        },
        enabled = false,
        config = function()
            require("lsp-file-operations").setup()
        end,
    },
}
