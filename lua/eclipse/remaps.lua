--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA CONFIGURATION MODULE - REMAPS                                                            --
--  ======================================================================================================================================================= --
--
-- Sets the mapleader to space
vim.g.mapleader = " "

-- Declare remaps with a lua table
local remaps_eclipse = {
    -- Sets remaps for normal mode
    n = {
        -- Navigation and Scrolling
        { key = "<C-d>", cmd = "<C-d>zz" },              -- Scroll down half a page and center the cursor on the screen
        { key = "<C-u>", cmd = "<C-u>zz" },              -- Scroll up half a page and center the cursor on the screen
        { key = "n", cmd = "nzzv" },                     -- Move to the next search result and center the cursor on the screen
        { key = "N", cmd = "Nzzv" },                     -- Move to the previous search result and center the cursor on the screen
        -- Copy and Delete
        { key = "<leader>Y", cmd = [["+Y"]] },           -- Copy content to the clipboard in normal mode
        { key = "<leader>y", cmd = [["+y"]] },           -- Copy content to the clipboard in normal mode
        { key = "<leader>d", cmd = [["_d"]] },           -- Delete current line in normal mode
        -- Miscellaneos Mappings
        { key = "Q", cmd = "<nop>" },                     -- Disable the Q key in normal mode
        -- Explorer Mappings
        { key = "<leader>pv", cmd = vim.cmd.Ex },        -- Execute the "Ex" command when pressing <leader>pv
        { key = "<leader>s", cmd = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] }, -- Realize a global substitution throughout the file
    },

    -- Sets remaps for visual mode
    v = {
        -- Comentarios sobre mover cosas
        { key = "J", cmd = ":m '>+1<CR>gv=gv" },         -- Move selected lines downward in visual mode
        { key = "K", cmd = ":m '<-2<CR>gv=gv" },         -- Move selected lines upward in visual mode
        { key = "<leader>y", cmd = [["+y"]] },           -- Copy content to the clipboard in visual mode
        { key = "<leader>d", cmd = [["_d"]] }            -- Delete current line in visual mode
    },

    -- Sets remaps for insert mode
    i = {
        -- Miscellaneos Mappings
        { key = "<C-c>", cmd = "<Esc>" }                 -- Exit insert mode and enter normal mode by pressing <C-c> in insert mode
    },

    -- Sets remaps for delete mode
    x = {
        { key = "<leader>p", cmd = [["_dP"]] }           -- Delete and paste selected content in visual mode
    }
}

-- Function to apply key remaps
local function apply_remaps(remaps)
    for mode, remap_list in pairs(remaps) do
        for _, mapping in ipairs(remap_list) do
            -- Set key remaps using vim.keymap,set
            vim.keymap.set(mode, mapping.key, mapping.cmd)
        end
    end
end

-- Apply the defined key remaps
apply_remaps(remaps_eclipse)

