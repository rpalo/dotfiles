local result = {
    {
        "oxfist/night-owl.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- require("night-owl").setup()
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = { style = "storm" },
        config = function()
            vim.cmd("colorscheme tokyonight")
        end
    },
    {
        "enthudave/star_wars.vim",
        config = function()
            -- Paint()
        end
    },
    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup {
                style = "darker"
            }
            -- require("onedark").load()
        end
    },
    {
        "Mofiqul/dracula.nvim",
        config = function()
            -- vim.cmd("colorscheme dracula")
        end
    },
    {
        "markvincze/panda-vim",
        config = function()
            -- vim.cmd("colorscheme panda")
        end
    },
}

-- function Paint(opts)
--     if opts.fargs[1] then
--         vim.cmd.colorscheme(opts.fargs[1])
--     end
--     vim.api.nvim_set_hl(0, "LineNr", { bg = "#1c1d21" })
--     vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "#1c1d21" })
--     vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "#1c1d21" })
--     vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1c1d21" })
--     vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#1c1d21" })
--     vim.api.nvim_set_hl(0, "Pmenu", { bg = "#848794" })
--     vim.api.nvim_set_hl(0, "Visual", { bg = "#848794" })
-- end
--
-- vim.api.nvim_create_user_command("Paint", Paint, { nargs = "?", complete = "color" })

return result
