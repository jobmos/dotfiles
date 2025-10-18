return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').load_extension('fzf')
        
        local builtin = require('telescope.builtin')

        -- files
        vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'telescope find files' })
        vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope buffers' })

        -- git
        vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'git status' })
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'git commits' })

        -- search
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'recent files' })
    end,
}
