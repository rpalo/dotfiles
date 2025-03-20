return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    ".git/",
                    ".venv/",
                    "venv/",
                    ".eggs/",
                    "__pycache__/",
                }
            }
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.git_files, {})
        vim.keymap.set("n", "<C-p>", function()
            builtin.find_files {
                no_ignore = true,
                hidden = true,
            }
        end, {})
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set("n", "<leader>pc", builtin.lsp_dynamic_workspace_symbols)
        vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>pr", builtin.lsp_references, {})
        vim.keymap.set("n", "<leader>jd", builtin.lsp_definitions, {})
        vim.api.nvim_create_user_command("ColorScheme", builtin.colorscheme, {})
    end
}
