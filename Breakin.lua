local Drown = game:GetService("Players"):GetChildren()
local PlayersTable = {}

for i, v in pairs(Drown) do
    table.insert(PlayersTable, v.Name)
end





--Kavos
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(40,40,40),
    Background = Color3.fromRGB(20, 20, 20),
    Header = Color3.fromRGB(10, 10, 10),
    TextColor = Color3.fromRGB(0,255,0),
    ElementColor = Color3.fromRGB(30, 30, 30)
}
local Window = Library.CreateLib("Break In Story On Steroids", colors)
--Main
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Items")
MainSection:NewButton("Give Apple", "Gives you Apples", function()

local args = {
    [1] = "Apple"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

end)
MainSection:NewButton("Give Bloxy Cola", "Gives you BloxyCokes", function()

    local args = {
        [1] = "BloxyCola"
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
    
    end)
MainSection:NewButton("Give Cookie", "Gives you Cookies", function()

        local args = {
            [1] = "Cookie"
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))
        
end)
MainSection:NewButton("Give Supercharge", "Gives you Cure", function()

local args = {
    [1] = "Cure"
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(unpack(args))

end)
MainSection:NewToggle("Give Planks", "Gives Planks", function(state)
    if state then
        getgenv().Plank = true
while getgenv().Plank == true do

game:GetService("ReplicatedStorage").RemoteEvents.RefreshPlanks:FireServer()
wait(.3)
end
    else
        getgenv().Plank = false
while getgenv().Plank == true do

game:GetService("ReplicatedStorage").RemoteEvents.RefreshPlanks:FireServer()
wait(.3)
end
    end
end)
local MainSection = MainTab:NewSection("Teleports")
MainSection:NewButton("Teleport to Blue Room", "Teleports you to the blue room", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.1740303, 19.194973, -213.861847, -0.999785483, 7.09941688e-08, 0.0207108092, 7.10645338e-08, 1, 2.6614273e-09, -0.0207108092, 4.13266044e-09, -0.999785483)
end)
MainSection:NewButton("Teleport to Green Room", "Teleports you to the green room", function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.10189981, 19.4470501, -201.54335, -0.0326453857, -9.8390851e-09, -0.999467015, 9.68836673e-08, 1, -1.30088234e-08, 0.999467015, -9.72567094e-08, -0.0326453857)
end)
MainSection:NewButton("Teleport to Pink Room", "Teleports you to the pink room", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.176772743, 19.4470501, -228.058365, -0.00789615791, 7.28919289e-08, -0.999968827, 6.65509887e-08, 1, 7.23686924e-08, 0.999968827, -6.59774742e-08, -0.00789615791)
end)
MainSection:NewButton("Teleport to the shop", "Teleports you to Walmart", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-425.739441, 4.50004673, -113.227737, -0.0857160017, 5.13478042e-08, 0.996319592, 5.46863106e-08, 1, -4.68326746e-08, -0.996319592, 5.04707351e-08, -0.0857160017)
end)

--Misc
local MiscTab = Window:NewTab("Misc")
local MiscSection = MiscTab:NewSection("Misc")
MiscSection:NewSlider("Speed", "Sets your WalkSpeed", 150, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MiscSection:NewSlider("Jumpheight", "Sets your JumpPower", 150, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
MiscSection:NewKeybind("Reset Stats", "Resets your Stats to the Normal Stats", Enum.KeyCode.RightAlt, function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
MiscSection:NewButton("Load Inf Yield", "Loads Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
local FunTab = Window:NewTab("Fun")
local FunSection = FunTab:NewSection("Drown Other Player")

local HelpTab = Window:NewTab("Help")
local HelpSection = HelpTab:NewSection("Cant get any Items?")
HelpSection:NewLabel("Thats because all Slots Are filled Up")
local ESection = HelpTab:NewSection("Reexecute to refresh Playerlist")
ESection:NewLabel("Because Im dumb")
local CredTab = Window:NewTab("Credits")
local CredSection = CredTab:NewSection("Made by Cxmplexe")



local oldList = PlayersTable
local newList = PlayersTable
local dropdown = FunSection:NewDropdown("Drown Player","Drowns Players", oldList, function(currentOption)
    local Frick = (currentOption)

    local args = {
        [1] = 1,
        [2] = game:GetService("Players")[Frick]
    }

    game:GetService("ReplicatedStorage").RemoteEvents.ToxicDrown:FireServer(unpack(args))
end)
