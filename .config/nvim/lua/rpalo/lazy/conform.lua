-- Format on save
-- https://github.com/stevearc/conform.nvim?tab=readme-ov-file
return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
                markdown = { "deno_fmt" },
                lua = { "lua-format" },
                typescriptreact = { "deno_fmt" },
                typescript = { "deno_fmt" },
            },
            format_after_save = {
                lsp_format = "fallback",
            }
        })
        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil
            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start = { args.line1, 0 },
                    ["end"] = { args.line2, end_line:len() },
                }
            end
            require("conform").format({ async = true, lsp_format = "fallback", range = range })
        end, { range = true })
        vim.api.nvim_create_user_command("FormatFile", function(args)
            require("conform").format({ async = true, lsp_format = "fallback" })
        end, {})
        vim.keymap.set("n", "<leader>ff", function() require("conform").format() end)
        vim.keymap.set("v", "<leader>ff", function() require("conform").format() end)
    end
}
