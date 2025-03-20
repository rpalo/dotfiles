return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.lox = {
                install_info = {
                    url = "~/Documents/code/tree-sitter-lox",
                    files = { "src/parser.c" },
                    generate_requires_npm = false,
                    requires_generate_from_grammar = false,
                },
            }
            vim.filetype.add({
                extension = {
                    lox = "lox"
                }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-treesitter.configs").setup({
                -- parsers
                ensure_installed = {
                    "vimdoc", "javascript", "typescript", "lua", "python", "html", "jsdoc",
                    "bash", "go", "rust",
                },
                sync_install = false,
                auto_install = false,
                indent = {
                    enable = false
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = {},
                },
                textobjects = {
                    lsp_interop = {
                        enable = true,
                        border = 'none',
                        floating_preview_opts = {},
                        peek_definition_code = {
                            ["<leader>df"] = "@function.outer",
                            ["<leader>dc"] = "@class.outer",
                        },
                    },
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                        -- selection_modes = {
                        --     ["@parameter.outer"] = "v",
                        --     ["@function.outer"] = "V",
                        --     ["@class.outer"] = "<c-v>",
                        -- },
                    },
                },
            })
        end

    }
}
