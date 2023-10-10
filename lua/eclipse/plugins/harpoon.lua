--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA LAZY PLUGIN PREFERENCES - HARPOON                                                        --
--  ======================================================================================================================================================= --
--
-- Require the 'harpoon.mark' and 'harpoon.ui' modules to use Harpoon functions
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Declare remaps with a lua table
local remaps_harpoon = {
    n = {
        { key = '<leader>a', cmd = mark.add_file },
        { key = '<C-e>', cmd = ui.toggle_quick_menu },

        { key = '<C-h>', cmd = function() ui.nav_file(1) end },
        { key = '<C-t>', cmd = function() ui.nav_file(2) end },
        { key = '<C-n>', cmd = function() ui.nav_file(3) end },
        { key = '<C-s>', cmd = function() ui.nav_file(4) end }
    }
}

-- Function to apply key remaps
local function apply_remaps(remaps)
    for mode, remap_list in pairs(remaps) do
        for _, mapping in ipairs(remap_list) do
            -- Set key remaps using vim.keymap.set
            vim.keymap.set(mode, mapping.key, mapping.cmd)
        end
    end
end

-- Apply the defined key remaps using the apply_remaps function
apply_remaps(remaps_harpoon)

