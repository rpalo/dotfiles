return {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
        "neovim/nvim-lspconfig"
    },
    config = function()
        require("lspsaga").setup({
            lightbulb = {enable = false}
        })
        vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
        vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>")
        vim.keymap.set("i", "<C-k>", "<cmd>Lspsaga signature_help<CR>")
        vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
    end
}
