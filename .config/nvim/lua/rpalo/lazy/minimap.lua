return {
    'gorbit99/codewindow.nvim',
    config = function()
        local codewindow = require('codewindow')
        codewindow.setup({
            autoenable = { ".*" },
        })
        codewindow.apply_default_keybinds()
    end,
}
