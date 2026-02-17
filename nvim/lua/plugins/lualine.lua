return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local function git_repo_name()
            local handle = io.popen('git rev-parse --show-toplevel 2>/dev/null')
            if not handle then return '' end
            local result = handle:read('*l')
            handle:close()
            if not result or result == '' then return '' end
            return result:match('([^/]+)$')
        end

        require('lualine').setup({
            options = {
                theme = 'auto'
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { git_repo_name, 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            }
        })
    end,
}
