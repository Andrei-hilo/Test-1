-- Ensure HttpGet is supported
if not game or not game:HttpGet then
    error("This executor does not support HttpGet.")
end

-- Load and execute the script from GitHub
local scriptUrl = "https://raw.githubusercontent.com/Andrei-hilo/Test/main/Script.lua"
local success, response = pcall(game.HttpGet, game, scriptUrl)

if success then
    local func, err = loadstring(response)
    if func then
        func()
    else
        error("Failed to execute script: " .. err)
    end
else
    error("Failed to fetch script from GitHub: " .. response)
end
