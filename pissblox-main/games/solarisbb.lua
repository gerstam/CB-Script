-- Check for necessary exploit functions
assert(typeof == "function", "typeof must exist")
assert(getgenv, "getgenv must be available")
assert(getfenv, "getfenv must be available")
assert(loadstring, "loadstring must be available")

-- Load the external #SM HUB UI Library
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/UILibrary/SolarisLib.lua"))()

-- Create a window
local win = SolarisLib:New({
    Name = "#SM HUB Base",
    FolderToSave = "#SM HUBStuff"
})

-- Create tabs and sections
local tab = win:Tab("Main")
local sec = tab:Section("Main")

-- Buttons and inputs
sec:Button("Click Me", function()
    print("Button was clicked!")
end)

sec:Toggle("Enable Feature", false, function(state)
    print("Toggle state:", state)
end)

sec:Slider("Adjust Value", 0, 100, 50, 1, function(value)
    print("Slider value:", value)
end)

sec:Textbox("Enter Text", "Default Text", function(text)
    print("Textbox input:", text)
end)

sec:Dropdown("Choose Option", {"Option A", "Option B", "Option C"}, function(selection)
    print("Dropdown selected:", selection)
end)

sec:Colorpicker("Pick a Color", Color3.fromRGB(255, 0, 0), function(color)
    print("Color selected:", color)
end)
