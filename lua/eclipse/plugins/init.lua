--  ======================================================================================================================================================= --
--                                                      NEOVIM LUA CONFIGURATION MAIN LAZY PLUGINS - PREFS LOADER                                           --
--  ======================================================================================================================================================= --
--
-- This Neovim Lua configuration file is responsible for loading modules relevant to our Neovim configuration.
--
-- We maintain a list of module names (excluding init.lua) in the following list:
local module_files = {
    'eclipse.plugins.catppuccin',
    'eclipse.plugins.telescope',
    -- 'eclipse.plugins.harpoon',
    'eclipse.plugins.lualine',
    'eclipse.plugins.treesitter',
    'eclipse.plugins.lsp-zero',
    'eclipse.plugins.discord'
}

-- Subsequently, we load each corresponding module using the 'require' function:
local function requireLuaModules(modules_list)
    for _, module_name in ipairs(module_files) do
        require(module_name)
    end
end

-- Finally, we invoke the function to load these configuration modules:
requireLuaModules(module_files)

