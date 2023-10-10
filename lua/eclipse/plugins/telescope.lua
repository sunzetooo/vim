--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA LAZY PLUGIN PREFERENCES - TELESCOPE                                                      --
--  ======================================================================================================================================================= --
--
-- Require the 'telescope.builtin' module to use built-in Telescope functions
local builtin = require('telescope.builtin')

-- Declare remaps with a lua table
local remaps_telescope = {
    -- Set remaps for normal mode
    n = {
        { key = '<leader>pf', cmd = builtin.find_files },
        { key = '<C-p>', cmd = builtin.git_files },
        { key = '<leader>ps', cmd = function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end },
        { key = '<leader>vh', cmd = builtin.help_tags },
    }
}

-- Function to apply key remaps
local function apply_remaps(remaps)
    for mode, remap_list in pairs(remaps) do
        for _, mapping in ipairs(remap_list) do
            -- Set key remaps using vim.keymap.set
            vim.keymap.set(mode, mapping.key, mapping.cmd, {})
        end
    end
end

-- Apply the defined key remaps using the apply_remaps function
apply_remaps(remaps_telescope)

