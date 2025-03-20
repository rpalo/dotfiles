return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup {
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<C-x>"] = { "actions.select", opts = { horizontal = true } },
                ["<C-v>"] = { "actions.select", opts = { vertical = true } },
            },
        }
    end
}
