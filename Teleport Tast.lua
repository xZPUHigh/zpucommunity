repeat
    wait(1)
until game.Players.LocalPlayer.Team ~= nil
local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
if ui then
    ui:Destroy()
end
local Flux = loadstring(game:HttpGet"https://pastebin.com/raw/XLCrin0T")()
local win = Flux:Window("ZPU รักพี่เอ็์มนะค่าบ ", "Teleport Tast",_G.Color, Enum.KeyCode.RightControl)
local Teleport = win:Tab("Teleport","http://www.roblox.com/asset/?id=4805639000")
local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    Three = true
    do
        local count = 0
        for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
            if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then 
                v:Destroy()
                count = count + 1
                if count > 2 then
                    break
                end
            end
        end
    end
end 
Teleport:Toggle("Ctrl + Click = TP"," ",false,function(vu)
    CTRL = vu
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(
    function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
            return
        end
        if not Mouse.Target then
            return
        end
        if CTRL then
            Plr.Character:MoveTo(Mouse.Hit.p)
        end
    end)
Teleport:Line()
    if Three then
        Teleport:Button("Port Town","", function()
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-291.60256958008, 43.86499786377, 5459.919921875)
        end)
        Teleport:Button("Hydar Island","", function()
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3558.0576171875, 72.423530578613, -491.10144042969)
        end)
        Teleport:Button("Great Tree","", function()
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2250.6081542969, 25.88773727417, -6452.6118164063)
        end)
        Teleport:Button("Floating Turtle","", function()
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13183.860351563, 332.41317749023, -7663.03515625)
        end)
    end
