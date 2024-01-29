repeat wait() until game:IsLoaded()
--only whitejob

local plr = game:GetService("Players").LocalPlayer.name
local jobs = game:GetService("Workspace").Jobs:GetChildren()
local vim = game:GetService('VirtualInputManager')
function active()
    while task.wait() do
        vim:SendKeyEvent(true, 101, false, nil)
        wait(.1)
        vim:SendKeyEvent(false, 101, false, nil)
    end
end

function teleportWhiteJob()
    for i,v in pairs(jobs) do
        if tostring(v) ~= "Shiba" then
            for x,p in pairs(v:GetChildren()) do
                game:GetService("Workspace")[plr].HumanoidRootPart.CFrame = p.CFrame
                wait(1)
            end
        end
    end
end
function duration()
    for j,k in pairs(game.Workspace:GetDescendants()) do
        if k.ClassName == "ProximityPrompt" then 
            k.HoldDuration = 0
        end
    end
end
function equip()
    tools = {"Axe", "Pickaxe", "Glove", "Basket"}
    for i,v in pairs(tools) do
        local args = {
            [1] = "Use",
            [2] = v,
            [3] = "1"
        }
        game:GetService("ReplicatedStorage").Inventory_Remotes.Event:FireServer(unpack(args))
    end
    local plr = game:GetService("Players").LocalPlayer.name
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            v.Parent = game:GetService("Workspace")[plr]
    end
    
end
function reset()
    local plr = game:GetService("Players").LocalPlayer.name
    local obj = Vector3.new(-1177.0618896484375, -114.62541961669922, 3210.39990234375)
    local Distance2 = (obj - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = CFrame.new(obj)})
    tween:Play()
    tween.Completed:Wait(10)
    wait(10)

end

print("WHITEJOBS LOADED")
wait(30)
reset()
wait(2)
duration()
wait(2)
spawn(function()
    while task.wait(10) do
        equip()
    end
end)
wait(1)
spawn(active)
spawn(function()
    while task.wait() do
        teleportWhiteJob()
    end
end)
