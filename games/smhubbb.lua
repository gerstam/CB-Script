-- Ensure required functions exist
assert(getgenv and getfenv and loadstring and typeof, "Unsupported environment")

-- Load the UI library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/UILibrary/SolarisLib.lua"))()

-- Create the window
local win = lib:New({
    Name = "#SM HUB Base",
    FolderToSave = "#SM HUBStuff"
})

-- Create a tab
local tab = win:Tab("Main")

-- Add a section to the tab
local sec = tab:Section("Controls")

-- Add buttons, toggles, sliders, etc.
sec:Button("Say Hello", function()
    print("Hello from #SM HUB!")
end)

sec:Toggle("Auto Farm", false, function(enabled)
    if enabled then
        print("Auto Farm: ON")
    else
        print("Auto Farm: OFF")
    end
end)

sec:Slider("Speed", 10, 100, 50, 1, function(speed)
    print("Speed set to:", speed)
end)

sec:Textbox("Custom Command", "Type here...", function(text)
    print("Command entered:", text)
end)

sec:Dropdown("Select Tool", {"Sword", "Gun", "Hammer"}, function(tool)
    print("Selected tool:", tool)
end)

sec:Colorpicker("Favorite Color", Color3.fromRGB(0, 255, 0), function(color)
    print("Color chosen:", color)
end)
