return {
    "MagicDuck/grug-far.nvim",
    config = function()
        local far = require("grug-far")
        far.setup()
        vim.keymap.set("n", "<C-F>", ":GrugFar<CR>")
    end
}

