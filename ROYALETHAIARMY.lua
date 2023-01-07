local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ZRIX HUB", "DarkTheme")
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Section Name")

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()



Plr = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(Plr,v.Name)
end

local dropdown = Section:NewDropdown("Select Player!", "Click To Select",Plr, function(t)
    Player = t
end)

Section:NewButton("Refresh", "ButtonInfo", function()
   dropdown:Refresh(Plr)
end)

Section:NewButton("Teleport", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Player].Character.HumanoidRootPart.CFrame
end)

Section:NewButton("Dupe Item", "ButtonInfo", function()
    for _,i in pairs(game:GetService("Players")[Player].Backpack:GetChildren()) do
        i:Clone().Parent = game:GetService("Players").LocalPlayer.Backpack
    end
end)


Section:NewButton("Teleport Item", "ButtonInfo", function()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"

tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart
local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
local offset = pos-root.Position
root.CFrame = root.CFrame+offset
end)

tool.Parent = plr.Backpack
end)

Section:NewButton("Clear Backpack", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.Backpack:ClearAllChildren()
end)

Section:NewButton("DestoyM4A1", "ButtonInfo", function()
    game:GetService("Players").LocalPlayer.Character.HolstM4A1:Destroy()
end)



local Tab1 = Window:NewTab("Weapon")
local Section1 = Tab1:NewSection("Section Name")


Section1:NewButton("M4A1", "ButtonInfo", function()
    nicetable = {}
for _,value in pairs(game.Players:GetPlayers()) do
    if value.Backpack:FindFirstChild("M4A1") or value.Character:FindFirstChild("M4A1") then
        table.insert(nicetable,value.Name)
    end
end
count = 1
task.spawn(function()
    if nicetable ~= nil then
        if game.Players[nicetable[count]] ~= nil then
            if not game.Players[nicetable[count]].Backpack:FindFirstChild('M4A1') and game.Players[nicetable[count]].Character:FindFirstChild('M4A1') then
                game.Players[nicetable[count]].Character:FindFirstChild('M4A1'):Clone().Parent = game.Players.LocalPlayer.Backpack
            else
                game.Players[nicetable[count]].Backpack:FindFirstChild('M4A1'):Clone().Parent = game.Players.LocalPlayer.Backpack
            end
        else
            print('player is nil')
            count = count + 1
        end
    else
        print("table is nil")
    end
end)
end)

Section1:NewButton("Glock-19", "ButtonInfo", function()
    nicetable = {}
for _,value in pairs(game.Players:GetPlayers()) do
    if value.Backpack:FindFirstChild("Glock-19") or value.Character:FindFirstChild("Glock-19") then
        table.insert(nicetable,value.Name)
    end
end
count = 1
task.spawn(function()
    if nicetable ~= nil then
        if game.Players[nicetable[count]] ~= nil then
            if not game.Players[nicetable[count]].Backpack:FindFirstChild('Glock-19') and game.Players[nicetable[count]].Character:FindFirstChild('Glock-19') then
                game.Players[nicetable[count]].Character:FindFirstChild('Glock-19'):Clone().Parent = game.Players.LocalPlayer.Backpack
            else
                game.Players[nicetable[count]].Backpack:FindFirstChild('Glock-19'):Clone().Parent = game.Players.LocalPlayer.Backpack
            end
        else
            print('player is nil')
            count = count + 1
        end
    else
        print("table is nil")
    end
end)
end)

Section1:NewButton("Remove M4A1", "ButtonInfo", function()
game:GetService("Players").LocalPlayer.Backpack.M4A1:remove()
end)

Section1:NewButton("Remove Glock-19", "ButtonInfo", function()
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Glock-19'):remove()
    end)
    
