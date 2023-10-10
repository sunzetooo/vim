--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA CONFIGURATION MODULE - PREFERENCES                                                       --
--  ======================================================================================================================================================= --
--
--  This module's primary goal is to configure Neovim by applying settings defined in a Lua table using a dedicated function.
--
-- Define a Lua table to specify Neovim preferences
local eclipseConfig = {
    guicursor = "",             -- Set GUI cursor to Block

    nu = true,                  -- Enable line numbers
    relativenumber = true,      -- Enable relative line numbers

    termguicolors = true,       -- Enable true color support

    tabstop = 4,                -- Number of spaces for a tab
    softtabstop = 4,            -- Number of spaces for a soft tab
    shiftwidth = 4,             -- Number of spaces for auto-indent
    expandtab = true,           -- Use spaces instead of tabs

    smartindent = true,         -- Enable smart indenting
    wrap = false,               -- Disable line wrapping

    hlsearch = false,           -- Disable highlight on search
    incsearch = true,           -- Enable incremental search

    scrolloff = 8,              -- Minimum lines to keep above and below cursor
    signcolumn = "yes",         -- Show sign column

    updatetime = 50             -- Update CursorHold events after 50ms
}

-- Function to apply the settings
local function applyLuaConfig(config)
    for option, value in pairs(config) do
        vim.opt[option] = value
    end
end

-- Apply the settings using the 'applyLuaConfig' function
applyLuaConfig(eclipseConfig)

