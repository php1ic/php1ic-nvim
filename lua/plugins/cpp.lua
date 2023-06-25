return {
    -- C++ related packages
    -- {'octol/vim-cpp-enhanced-highlight'},
    {
        'bfrg/vim-cpp-modern',
        ft = {
            'c',
            'cpp'
        }
    },

    {
        'p00f/clangd_extensions.nvim',
        config = true,
        ft = {
            'c',
            'cpp'
        }
    }
}
