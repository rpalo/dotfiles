return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")

        dap.adapters.lldb = {
            type = "executable",
            command = "/opt/homebrew/opt/llvm@12/bin/lldb-vscode",
            name = "lldb",
        }

        dap.configurations.c = {
            {
                name = "Launch",
                type = "lldb",
                request = "launch",
                program = function() return vim.fn.input("Path to exe: ", vim.fn.getcwd() .. "/", "file") end,
                cwd = "${workspaceFolder}",
                stopOnEntry = false,
                args = {},
            }
        }

        vim.keymap.set("n", "<leader>Bt", dap.toggle_breakpoint)
        vim.keymap.set("n", "<leader>ds", function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.scopes)
        end)
    end
}
