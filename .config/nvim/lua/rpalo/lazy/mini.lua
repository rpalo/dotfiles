return {
    "echasnovski/mini.nvim",
    config = function()
        require("mini.surround").setup()
        require("mini.files").setup()
        vim.keymap.set("n", "<leader>ef", MiniFiles.open)
    end
}
