return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        end,
    },
    {
        "shumphrey/fugitive-gitlab.vim",
        config = function()
            vim.g.fugitive_gitlab_domains = {"https://gitlab.s.fpint.net"}
            vim.api.nvim_create_user_command(
                "Browse",
                function (opts)
                    vim.fn.system { "open", opts.fargs[1] }
                end,
                { nargs = 1 }
            )
        end
    }
}
