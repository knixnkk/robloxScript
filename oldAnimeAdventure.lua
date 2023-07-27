repeat wait() until game:IsLoaded()
_G.Settings = {
    Autofarm = false;
    Code = false;
    room = "_lobbytemplategreen13";
    story = "story";
    Mode = "Normal";
    UUID = {}
}
local filename = "8304191830_KNIXNKK.json";
function saveSettings()
    local json;
    local HttpService = game:GetService("HttpService");
    if (writefile) then
        json = HttpService:JSONEncode(_G.Settings);
        writefile(filename,json)
    else
        print(' -- CANNOT SAVE CONFIG FILE -- ')
    end   
end
function loadSettings()
    local HttpService = game:GetService("HttpService");
    if (readfile and isfile and isfile(filename)) then
        _G.Settings = HttpService:JSONDecode(readfile(filename));
    else
        saveSettings()
    end
end
loadSettings()
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();
local codes = loadstring(game:HttpGet("https://pastebin.com/raw/nBSxZAs6"))()

lib:SetTitle("MIGRAINE | KNIXNKK") -- name <string>

local tab1 = lib:NewTab("Settings", ":D") -- name <string> description <string>
tab1:NewToggle("Autofarm",_G.Settings.Autofarm,function(value) -- name <string> default <bool> callback <function>
    _G.Settings.Autofarm = value
    saveSettings()
end)
tab1:NewToggle("Code",_G.Settings.Code,function(value) -- name <string> default <bool> callback <function>
    _G.Settings.Code = value
    saveSettings()
end)
tab1:NewButton("Get UUID",function()-- name <string> callback <function>
    plr = game.Players.LocalPlayer.Name
    path = game:GetService("Workspace")[plr]["_pets_folder"]:GetChildren()
    for i,v in pairs(path) do
        setclipboard(tostring(v))
    end
 end)
tab1:NewTextBox("Add UNIT","...",function(value)
   table.insert(_G.Settings.UUID, value)
   saveSettings()
end)
tab1:NewButton("Clear UUID",function()-- name <string> callback <function>
    _G.Settings.UUID = {}
    saveSettings()
end)
tab1:NewButton("Show UUID",function()-- name <string> callback <function>
    for i,v in pairs(_G.Settings.UUID) do
        print(v)
    end
end)
function deleteText()
    path = game:GetService("Players").LocalPlayer.PlayerGui.MessageGui.messages:GetChildren()
    for i,v in pairs(path) do
        v:destroy()
    end
end
if game.PlaceId == 8304191830 then
    while wait() do
        loadSettings()
        wait(10)
        if _G.Settings.Code then
            wait(3)
            for i,v in pairs(codes) do
                Event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["redeem_code"]
                local args = {
                    [1] = tostring(v)
                }
                Event:InvokeServer(unpack(args))
                wait(.1)
            end
        end
        if _G.Settings.Autofarm then
            wait(10)
            event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_join_lobby"]
            local args = {
                [1] = tostring(_G.Settings.room)
            }
            event:InvokeServer(unpack(args))
            wait(1)
            event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_lock_level"]
            local args = {
                [1] = tostring(_G.Settings.room),
                [2] = tostring(_G.Settings.story),
                [3] = true,
                [4] = tostring(_G.Settings.Mode)
            }
            event:InvokeServer(unpack(args))
            wait(1)
            event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["request_start_game"]
            local args = {
                [1] = tostring(_G.Settings.room)
            }
            event:InvokeServer(unpack(args))
            wait(120)
        end
    end
end
if game.PlaceId == 8349889591 then
    if _G.Settings.Autofarm then
        while wait() do
            spawn(function()
                while task.wait() do
                    pcall(function()
                        event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["vote_start"]
                        event:InvokeServer()
                        spawn(deleteText)
                        -- [ -2953.515625, 94.80618286132812, -706.9714965820312 ]
                        for i,v in pairs(_G.Settings.UUID) do
                        Event = game:GetService("ReplicatedStorage").endpoints["client_to_server"]["spawn_unit"]
                        choice = math.random(1,2)
                        if tonumber(choice) == 1 then
                            local args = {
                                [1] = tostring(v),
                                [2] = CFrame.new(-2947.521484375, 89, -700.183349609375)
                            }
                            Event:InvokeServer(unpack(args)) 
                        end
                        if tonumber(choice) == 2 then
                            local args = {
                                [1] = tostring(v),
                                [2] = CFrame.new(-2947.521484375, 89, -700.183349609375)
                            }
                            Event:InvokeServer(unpack(args)) 
                        end
                        end
                        local unit = {}
                        for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
                            if v:IsA("Model") and v._stats.player.Value == game.Players.LocalPlayer then
                                if not table.find(unit, tostring(v)) then
                                    table.insert(unit, tostring(v))
                                end
                            end
                        end
                        local function getRandom()
                            local dist, thing = math.huge
                            UNITS = game:GetService("Workspace")["_UNITS"]:GetChildren()
                            for i, v in next, game:GetService("Workspace")["_UNITS"]:GetChildren() do
                                if tonumber(i) == math.random(1,#UNITS) then
                                    if v:IsA("Model") and table.find(unit, v.Name) ~= nil then
                                        thing = v
                                    end
                                end
                            end
                            return thing
                        end
                        Event = game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame
                        chss = unit[math.random(1,#unit)]
                        local args = {
                            [1] = getRandom()
                        }
                                    
                        Event:InvokeServer(unpack(args))
                        waves = game:GetService("Players").LocalPlayer.PlayerGui.ResultsUI.Holder.Middle.WavesCompleted.Text
                        if tostring(waves) ~= "Waves Completed: 999" then
                            wait(1)
                            game:GetService("TeleportService"):Teleport(8304191830, game:GetService("Players").LocalPlayer)
                            wait(120)
                        end
                    end)
                end
            end)
        end
    end
end
