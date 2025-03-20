return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-/>]],
            insert_mappings = true,
            direction = "float",
            float_opts = {
                border = "curved",
            }
        })
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

        function Lazygit_toggle()
            lazygit:toggle()
        end

        vim.keymap.set("n", "<leader>gg", Lazygit_toggle, { noremap = true, silent = true })
        vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]])
        vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
    end
}
