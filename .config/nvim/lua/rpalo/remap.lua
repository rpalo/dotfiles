-- Key mappings

vim.g.mapleader = " "

-- Move between windows with just ctrl+motion
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")

-- File explorer
vim.keymap.set("n", "<leader>n", function()
    if vim.bo.filetype == "oil" then
        require("oil").close()
    else
        require("oil").open()
    end
end)

-- Backspace to pop back to previous file
vim.keymap.set("n", "<bs>", "<C-^>")

-- Tab to fold/unfold
vim.keymap.set("n", "<tab>", "za")

vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help)

-- Fixes annoying space behavior in integrated terminal
vim.keymap.set("t", "<S-space>", "<space>")

-- Float errors that you can't read
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- Git conveniences
vim.keymap.set("n", "<leader>Ga", ":G add %<CR>")
vim.keymap.set("n", "<leader>Gc", ":G commit<CR>")
vim.keymap.set("n", "<leader>Gm", ":G mr<CR>")
vim.keymap.set("n", "<leader>Gp", ":G push<CR>")

-- Mo betta splits
vim.api.nvim_create_user_command("G", function(opts)
    vim.cmd("vertical leftabove Git " .. opts.args)
end, { nargs = "*" })
vim.api.nvim_create_user_command("H", function(opts)
    vim.cmd("vertical leftabove h " .. opts.args)
end, { nargs = "*" })

vim.keymap.set("n", "<leader>vk", ":e ~/.config/nvim/lua/rpalo/remap.lua<CR>")
vim.keymap.set("n", "<leader>Ga", ":G add %<CR>:G commmit -m 'quickfix'<CR>:G push<CR>")

-- Execute lua code
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Search
-- vim.keymap.set("n", "<esc><esc>", ":nohl<CR>")
