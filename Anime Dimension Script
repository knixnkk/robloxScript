repeat wait() until game:IsLoaded()
wait(1)
_G.Settings = {
    farm = false;
    farmType = ""; -- Enable auto Dimension and Raid
    RaidName = ""; -- Esper Raid; Tengoku Raid; Titan Raid; Hirito Raid; Gear 5 Fluffy Raid;
    Code = false; -- Auto Redeem the Code
    MassSell = false; -- Mass Sell Card
    deleteTexture = false;
    shopBossrushTicket = false;
    Bossrush = false;
    reachLevel = "500";
    raid = false;
    upgradeCard = false;
    URL = "";
    infiniteRaid = false;
    useCard = false;
    webhook = false;
    quests = false;
    currency = "";
    Legendary = false;
    Epic = false;
    Rare = false;
    Uncommon = false;
    Common = false;
    BestCardMassSell = false;
    speedraid = false;
    mainChar = "";
    assist1 = "";
    assist2 = "";
    speedRaidChar = false;
    Retry = false;
    coop = false;
    Carryboi = ""; -- เดอะแบก
    Carried = ""; -- เอ้า ซัพเฉย
    coopequipcard = false;
    coopMassSell = false;
    coopMainMassSell = false;
    leaderboard = false;
}
bestcard = false;
local function isInteger(str)
    return not (str == "" or str:find("%D"))  -- str:match("%D") also works
end
function randomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end
function spamSkill()
    while task.wait(0.1) do
        pcall(function()
            key = {"One","Two","Three","Four", "Five", "E", "R"}
            for i,v in pairs(key) do
            local LP = game:GetService("Players").LocalPlayer
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendKeyEvent(true, Enum.KeyCode[v], false, game)
            wait(randomFloat(0.1, 0.15))
            end
        end)
    end
end
function CharacterName()
    cahhs = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame
    chass = {}
    for i,v in pairs(cahhs:GetChildren()) do
        if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "CharacterInventorySlot" then
            table.insert(chass, v)
        end
    end
    return chass
end
function spamPunch()
    while task.wait(0.45) do
        pcall(function()
            local args = {
                [1] = "UseSkill",
                [3] = "BasicAttack",
                [2] = {
                    ["hrpCFrame"] = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(-0, -0, -1)),
                    ["attackNumber"] = 1
                }
     }
    game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
        end)
    end
end
function EquipCharacter()
    path = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.SpeedRaidCharacterSelector.Shade.SpeedRaidCharacterInventoryScrollingFrame:GetChildren()
    canplay = {}
    for i,v in pairs(path) do
        if tostring(v) ~= "UIGridLayout" then
            table.insert(canplay, v)
            g_count = i
            end
    end
    randoss = math.random(1, g_count)
    char = canplay[randoss]
    local args = {
        [1] = "TeleportToShadowRaid",
        [2] = tostring(char),
        [3] = 1
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    wait(2)
end
function selectedCharac()
    loadSettings()
    main = _G.Settings.mainChar
    assist1 = _G.Settings.assist1
    assist2 = _G.Settings.assist2
    local args = {
        [1] = "EquipCharacter",
        [2] = tostring(main),
        [3] = 1
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    wait(0.25)
    local args = {
        [1] = "EquipCharacterAssist",
        [2] = tostring(assist1),
        [3] = 1
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    wait(0.25)
    local args = {
        [1] = "EquipCharacterAssist",
        [2] = tostring(assist2),
        [3] = 2
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    wait(0.25)
end
function EquipCharacterAssist() 
    path2 = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame:GetChildren()
    speed = {}
    for i,v in pairs(path2) do
        if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "CharacterInventorySlot" then
            table.insert(speed, v)
            count = i
            end
    end
    rands = math.random(1,count)
    charc = speed[rands]
    local args = {
        [1] = "EquipCharacterAssist",
        [2] = tostring(charc),
        [3] = 1
    }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    wait(0.25)
    randss = math.random(1,count)
    charcs = speed[randss]
    if tostring(charc) ~= tostring(charcs) then
        local args = {
            [1] = "EquipCharacterAssist",
            [2] = tostring(charcs),
            [3] = 2
        }
        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
        wait(0.25)
    else
        randss = math.random(1,count)
        charcs = speed[randss]
        local args = {
            [1] = "EquipCharacterAssist",
            [2] = tostring(charcs),
            [3] = 2
        }
        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    end
    wait(0.1)
    end
    --[[
    EquipCharacterAssist()
    wait(2)
    EquipCharacter()
    ]]
Map_table = {
    "Titan Dimension", "Demon Dimension", "Curse Dimension", "Villain Dimension", "Sword Dimension", "Ghoul Dimension", "Fate Dimension", "Slime Dimension"
}
Diff_table = {
    "Easy", "Hard", "Nightmare"
}
hc = false
function DimensionCheck(level)
    -- Slime Dimensions
    if level >= 106 then
        Difficulty = Diff_table[1]
        MapName = Map_table[8]
        Hardcore = hc
        cardReq = 106
    end
    -- Fate Dimension
    if level >= 98 and level <= 105 then
        Difficulty = Diff_table[3]
        MapName = Map_table[7]
        Hardcore = hc
        cardReq = 98
    end
    if level >= 91 and level <= 97 then
        Difficulty = Diff_table[1]
        MapName = Map_table[7]
        Hardcore = hc
        cardReq = 91
    end
    -- Ghoul Dimension
    if level >= 83 and level <= 90 then
        Difficulty = Diff_table[3]
        MapName = Map_table[6]
        Hardcore = hc
        cardReq = 83
    end
    if level >= 76 and level <= 82 then
        Difficulty = Diff_table[1]
        MapName = Map_table[6]
        Hardcore = hc
        cardReq = 76
    end
    -- Sword Dimension
    if level >= 68 and level <= 75 then
        Difficulty = Diff_table[3]
        MapName = Map_table[5]
        Hardcore = hc
        cardReq = 68
    end
    if level >= 61 and level <= 67 then
        Difficulty = Diff_table[1]
        MapName = Map_table[5]
        Hardcore = hc
        cardReq = 61
    end
    -- Villain Dimension
    if level >= 56 and level <= 60 then
        Difficulty = Diff_table[3]
        MapName = Map_table[4]
        Hardcore = hc
        cardReq = 56
    end
    if level >= 51 and level <= 55 then
        Difficulty = Diff_table[2]
        MapName = Map_table[4]
        Hardcore = hc
        cardReq = 51
    end
    if level >= 46 and level <= 50 then
        Difficulty = Diff_table[1]
        MapName = Map_table[4]
        Hardcore = hc
        cardReq = 46
    end
    -- Curse Dimension
    if level >= 41 and level <= 45 then
        Difficulty = Diff_table[3]
        MapName = Map_table[3]
        Hardcore = hc
        cardReq = 41
    end
    if level >= 36 and level <= 40 then
        Difficulty = Diff_table[2]
        MapName = Map_table[3]
        Hardcore = hc
        cardReq = 36
    end
    if level >= 31 and level <= 35 then
        Difficulty = Diff_table[1]
        MapName = Map_table[3]
        Hardcore = hc
        cardReq = 31
    end
    -- Demon Dimension
    if level >= 26 and level <= 30 then
        Difficulty = Diff_table[3]
        MapName = Map_table[2]
        Hardcore = hc
        cardReq = 26
    end
    if level >= 21 and level <= 25 then
        Difficulty = Diff_table[2]
        MapName = Map_table[2]
        Hardcore = hc
        cardReq = 21
    end
    if level >= 16 and level <= 20 then
        Difficulty = Diff_table[1]
        MapName = Map_table[2]
        Hardcore = hc
        cardReq = 16
    end
    -- Titan Dimension
    if level >= 11 and level <= 15 then
        Difficulty = Diff_table[3]
        MapName = Map_table[1]
        Hardcore = hc
        cardReq = 11
    end
    if level >= 6 and level <= 10 then
        Difficulty = Diff_table[2]
        MapName = Map_table[1]
        Hardcore = hc
        cardReq = 6
    end
    if level >= 1 and level <= 5 then
        Difficulty = Diff_table[1]
        MapName = Map_table[1]
        Hardcore = hc
        cardReq = 1
    end
end
local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end
function CreateRoom(Difficulty, MapName, Hardcore)
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
    local args = {
        [1] = "CreateRoom",
        [2] = {
            ["Difficulty"] = Difficulty,
            ["FriendsOnly"] = true,
            ["MapName"] = MapName,
            ["Hardcore"] = Hardcore
        }
    }

    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))

    print('Dimension Created!')
    wait(0.2)
end
function TeleportPlayer()
    local args = {
        [1] = "TeleportPlayers"
        }
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
end
end
--[[ Function ]]
    function table_to_string(tbl)
    local result = "{"
    for k, v in pairs(tbl) do
        -- Check the key type (ignore any numerical keys - assume its an array)
        if type(k) == "string" then
            result = result.."[\""..k.."\"]".."="
        end

        -- Check the value type
        if type(v) == "table" then
            result = result..table_to_string(v)
        elseif type(v) == "boolean" then
            result = result..tostring(v)
        else
            result = result.."\""..tostring(v).."\""
        end
        result = result..","
    end
    -- Remove leading commas from the result
    if result ~= "" then
        result = result:sub(1, result:len()-1)
    end
    return result.."}"
end
function ShopTicket()
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
    if  tonumber(_G.AllRaid) >= 150 then
        local A_1 = "BuyBossRushShopItem"
        local A_2 = "Boss Rush Ticket (Raid)"
        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
        Event:InvokeServer(A_1, A_2)
    elseif tonumber(_G.AllGem) >= 180 then
        local A_1 = "BuyBossRushShopItem"
        local A_2 = "Boss Rush Ticket (Gem)"
        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
        Event:InvokeServer(A_1, A_2)
    elseif tonumber(_G.AllGem) <= 179 and tonumber(_G.AllRaid) <= 149 then
        print('Not Enough to buy this item')
    end
end
end
function teleportRaid()
    loadSettings()
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
    LVL = statDisplay.Level.Value
    if tonumber(LVL) >= 15 then
    time = os.date ("*t")
    minute = time.min
    if minute >= 0 and minute <= 9 then
        local A_1 = "CreateRoom"
        local A_2 =
        {
        ["Difficulty"] = "Easy",
        ["FriendsOnly"] = true,
        ["MapName"] = tostring(_G.Settings.RaidName),
        ["Hardcore"] = false
        }
        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
        Event:InvokeServer(A_1, A_2)
        wait(1)
        local args = {
        [1] = "TeleportPlayers"
        }
        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    end
    end
end
end
function TeleportToBossRush()
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
    local A_1 = "TeleportToBossRush"
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
    Event:InvokeServer(A_1)
    end
end
function TeleportToTimeChallenge()
    local A_1 = "TeleportToTimeChallenge"
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
    Event:InvokeServer(A_1)
end
function TeleportToAfk()
    local A_1 = "TeleportToAFK"
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
    Event:InvokeServer(A_1)
end
function TeleportToInfinite()
    local A_1 = "CreateRoom"
    local A_2 = 
    {
        ["Difficulty"] = "Infinite", 
        ["FriendsOnly"] = true, 
        ["MapName"] = "Infinite Mode", 
        ["Hardcore"] = false
    }
    local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
    Event:InvokeServer(A_1, A_2)
    wait(1)
    local args = {
        [1] = "TeleportPlayers"
    }
        
    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
end
function Teleport()
    wait (0.5)
    game.Players.LocalPlayer:Kick("Hoppppp")
end
function antiafk()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
function autoFarm()
    repeat wait() until game:IsLoaded()
        _G.Player = game.Players.LocalPlayer
        player = game.Players.LocalPlayer.Name
        --_G.StatDisplay = game:GetService("ReplicatedStorage")[player.."StatDisplay"]
        game:GetService("Workspace").Gravity = 0
        game:GetService"RunService".Stepped:Connect(function() 
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                    repeat game:GetService("RunService").Heartbeat:wait()
                        local Distance2 = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        local tween_s = game:service"TweenService"
                        local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
                        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0)})
                        tween:Play()
                        game:GetService("Workspace").Folders.Players[tostring(_G.Player)].Head.PlayerHealthBarGui.PlayerName.Text = ""
                    until v.Humanoid.Health <= 0 or not v.Parent or not v
                end
            end)
        end
    end)
    spawn(spamSkill)
    spawn(spamPunch)
end


local filename = "KNIXNKK.json";
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
function Farm()
    if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
        repeat wait() until game:IsLoaded()
        wait(3)
        gameMap = game:GetService("Workspace").GameMap:GetChildren()
        player = game.Players.LocalPlayer.Name
        _G.Player = game.Players.LocalPlayer
        _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
        _G.GamePlace = game.PlaceId
        --_G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
        CoinBlack = game:GetService("Players")[tostring(_G.Player)].PlayerGui.UniversalGui.LeftUIFrame.OwnHealthBarFrame:GetChildren()
        for i,v in pairs(CoinBlack) do
            if i == 13 then
                _G.AllGold = v.Gold.Text
            end
            if i == 14 then
                _G.AllGem = v.Gem.Text
            end
        end
        _G.AllRaid = game:GetService("Players")[tostring(_G.Player)].PlayerGui.MainGui.CenterUIFrame.Shop.Frame.ShopRaidTokenCounter.ShopRaidTokenAmount.Text
        _G.Trait = game:GetService("Players")[tostring(_G.Player)].PlayerGui.MainGui.CenterUIFrame.CharacterTraitFrame.Frame.TraitTokenChangeTrait.Text
        player = game.Players.LocalPlayer.Name
        statDisplay = game:GetService("ReplicatedStorage")[player.."StatDisplay"]
        level = statDisplay.Level.Value
        DimensionCheck(level)
        detected = statDisplay.ExploitsDetected.Value
        CodeBoard = game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:GetChildren()
        if _G.Settings.Code then
            for i,v in pairs(CodeBoard) do
                if tostring(v) == "MilestoneEntry" then
                    code = v.MilestoneCode.Text
                    if code ~= "LOCKED" then
                        wait(0.05)
                        local args = {
                        [1] = "RedeemPromoCode",
                        [2] = tostring(code)
                        }
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                    end
                end
            end
        end
         if _G.Settings.MassSell then
            cardFrame = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame:GetChildren()
            for i,v in pairs(cardFrame) do
                if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "CardInventorySlot" then
                    local Signals = {'MouseButton1Down'}
                    cards = v
                    local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(v)].CardClick
                    for i,v in pairs(Signals) do
                        firesignal(Button[v])
                        Rarity = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                    if _G.Settings.Common then
                        if Rarity == "Common"then
                            local args = {
                                [1] = "SellCard",
                                [2] = tostring(cards)
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            wait(.1)
                        end
                    end
                    if _G.Settings.Uncommon then
                        if Rarity == "Uncommon"then
                            local args = {
                                [1] = "SellCard",
                                [2] = tostring(cards)
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            wait(.1)
                        end
                    end
                    if _G.Settings.Rare then
                        if Rarity == "Rare"then
                            local args = {
                                [1] = "SellCard",
                                [2] = tostring(cards)
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            wait(.1)
                        end
                    end
                    if _G.Settings.Epic then
                        if Rarity == "Epic"then
                            local args = {
                                [1] = "SellCard",
                                [2] = tostring(cards)
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            wait(.1)
                        end
                    end
                    if _G.Settings.Legendary then
                        if Rarity == "Legendary" then
                            local args = {
                                [1] = "SellCard",
                                [2] = tostring(cards)
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            wait(.1)
                        end
                    end
                    end
                end
                end
        if _G.Settings.useCard then
        selectedBy = "attack"; -- attack, health
        _G.Player = game.Players.LocalPlayer
        _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
        path = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame
        count = 0
        tle = {}
        key = {}
        value = {}
    
        tab = {}
        for i,v in pairs(path:GetChildren()) do
        if i > 2 then
        CardName = v
        local Signals = {'MouseButton1Down'}
        local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(CardName)].CardClick
        for i,v in pairs(Signals) do
        firesignal(Button[v])
        attackStats = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.CardDataFrame.CardScrollingFrame.Attack.Stat.Text
        HealthStats = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.CardDataFrame.CardScrollingFrame.Health.Stat.Text
        subAttack = string.gsub(attackStats, 'Attack: ', '')
        subHealth = string.gsub(HealthStats, 'Health: ', '')
        count = count + 1
        local args = {
                [1] = "UnequipCard",
                [2] = tostring(CardName)
            }
            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
        table.insert(key, CardName)
        if selectedBy == "attack" then
        table.insert(value, tonumber(subAttack))
        elseif selectedBy == "health" then
        table.insert(value, tonumber(subHealth))
        else
            print('None')
        end
        wait(0.05)
        end
        end
        end
        for i,v in pairs(key) do
            tab[v] = value[i]
        end
        local function FindBiggest(count)
            local result = {}
            for i=1, count do
                local biggest = 0
                local biggestKey = ""
                for i2,v in pairs(tab) do
                    if not table.find(result,i2) and tab[i2] > biggest then
                        biggest = tab[i2]
                        biggestKey = i2
                    end
                end
                result[i] = biggestKey
            end
            return result
        end
    
        wait(2)
        biggests = {}
        for i,v in pairs(FindBiggest(3)) do
        table.insert(biggests,v)
        end
        for i,v in pairs(tab) do
        print(i)
        if has_value(biggests, i) then
            if _G.Settings.upgradeCard then
            for count = 1, 2, 1 do
                local args = {
                    [1] = "UpgradeCard",
                    [2] = tostring(i)
                }
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                wait(.05)
            end
        end
        local args = {
            [1] = "EquipCard",
            [2] = tostring(i)
        }
        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
    else
        if _G.Settings.BestCardMassSell then
            local Signals = {'MouseButton1Down'}
            local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(i)].CardClick
            for x,h in pairs(Signals) do
                firesignal(Button[h])
            end
                Rarity = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                if Rarity == "Common"then
                local A_1 = "MassDeleteCardsFromInventory"
                local A_2 = 
                {
                [tostring(i)] = true
                }
                local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                Event:InvokeServer(A_1, A_2)
                wait(.1)
            elseif Rarity == "Uncommon"then
                local A_1 = "MassDeleteCardsFromInventory"
                local A_2 = 
                {
                [tostring(i)] = true
                }
                local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                Event:InvokeServer(A_1, A_2)
                wait(.1)
            elseif Rarity == "Rare"then
                local A_1 = "MassDeleteCardsFromInventory"
                local A_2 = 
                {
                [tostring(i)] = true
                }
                local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                Event:InvokeServer(A_1, A_2)
                wait(.1)
            elseif Rarity == "Epic"then
                local A_1 = "MassDeleteCardsFromInventory"
                local A_2 = 
                {
                [tostring(i)] = true
                }
                local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                Event:InvokeServer(A_1, A_2)
                wait(.1)
            end
        end
            end
        end
        cardCount = 0
        wait(1)
        bestcard = true
    end
    repeat wait() until game:IsLoaded()
    wait(0.2)
end
end
end
local HWIDTABLE = loadstring(game:HttpGet("https://pastebin.com/raw/2b7sfhYt"))()
local raisd = loadstring(game:HttpGet("https://pastebin.com/raw/XpDTApP6"))()
local RbxAnalyticsService = game:GetService("RbxAnalyticsService"):GetClientId()
for i,v in pairs(HWIDTABLE) do
    if tostring(v) == tostring(RbxAnalyticsService) then
        spawn(function()
            while task.wait() do
                pcall(function()
                    local vu = game:GetService("VirtualUser")
                    game:GetService("Players").LocalPlayer.Idled:connect(function()
                        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    end)
                end)
            end
        end)
        loadSettings()
        wait(2)
        player = game.Players.LocalPlayer.Name
        statDisplay = game:GetService("ReplicatedStorage")[player.."StatDisplay"]
        level = statDisplay.Level.Value
        gameMap = game:GetService("Workspace").GameMap:GetChildren()
        Farm()
        local Luxtl = loadstring(game:HttpGet("https://raw.githubusercontent.com/knixnkk/anime-dimension/main/ui"))()
        local Luxt = Luxtl.CreateWindow("MIGRAINE | KNIXNKK || COMMUNITY", 6087485864)
        local mainTab = Luxt:Tab("Auto Farm")
        local mainSeccion = mainTab:Section("Auto farm")
        mainSeccion:Label("Credits by MIGRAINE | KNIXNKK || COMMUNITY")
        mainSeccion:Toggle("Auto Farm", function(isToggled)
                _G.Settings.farm = isToggled
                saveSettings()
        end)
        mainSeccion:Toggle("Auto Raid", function(isToggled)
            _G.Settings.raid = isToggled
                saveSettings()
        end)
        mainSeccion:Toggle("Bossrush", function(isToggled)
            _G.Settings.Bossrush = isToggled
                saveSettings()
        end)
        mainSeccion:DropDown("Raid", {unpack(raisd)}, function(raidName) -- food is chosen item
            _G.Settings.RaidName = raidName
            print(raidName)
            saveSettings()
        end)
        mainSeccion:DropDown("Select Farm", {"Dimension","TimeChallenge", "Infinite","AFK"}, function(farmName)
            _G.Settings.farmType = farmName
            saveSettings()
        end)
        mainSeccion:TextBox("Reach Level", "level", function(getText)
            _G.Settings.reachLevel = getText
            saveSettings()
        end)
        mainSeccion:Button("Server hop", function()
            Teleport()
        end)
        if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
        local SpeedTab = Luxt:Tab("Speed Raid")
        local speedSeccion = SpeedTab:Section("Speed Raid Settings")
        speedSeccion:Label("Credits by MIGRAINE | KNIXNKK || COMMUNITY")
        xxss = {}
        path = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.SpeedRaidCharacterSelector.Shade.SpeedRaidCharacterInventoryScrollingFrame:GetChildren()
        for i,v in pairs(path) do
            if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "CharacterInventorySlot" then
                table.insert(xxss, v)
                count = i
                end
        end
        x_pth = table_to_string(xxss)
        local txx = loadstring("return "..x_pth)()
        speedSeccion:Button("See Character Name", function()
            for i,v in pairs(CharacterName()) do
                print(i,v)
            end
        end)
        speedSeccion:Toggle("Speed Raid", function(isToggled)
            _G.Settings.speedraid = isToggled
                saveSettings()
        end)
        speedSeccion:DropDown("Main Character", txx, function(chhs)
            _G.Settings.mainChar = chhs
            saveSettings()
        end)
        speedSeccion:DropDown("Assist 1", txx, function(chhs)
            _G.Settings.assist1 = chhs
            saveSettings()
        end)
        speedSeccion:DropDown("Assist 2", txx, function(chhs)
            _G.Settings.assist2 = chhs
            saveSettings()
        end)
    end
    local CoopTab = Luxt:Tab("CO OP")
    local CoopSeccion = CoopTab:Section("CO OP Settings")
    CoopSeccion:Label("Credits by MIGRAINE | KNIXNKK || COMMUNITY")
    CoopSeccion:Toggle("Enable/Disable", function(isToggled)
        _G.Settings.coop = isToggled
        saveSettings()
    end)
    CoopSeccion:Toggle("Main MassSell", function(isToggled)
        _G.Settings.coopMainMassSell = isToggled
        saveSettings()
    end)
    CoopSeccion:Toggle("Sub MassSell", function(isToggled)
        _G.Settings.coopMassSell = isToggled
        saveSettings()
    end)
    CoopSeccion:Toggle("Equip Card", function(isToggled)
        _G.Settings.coopequipcard = isToggled
        saveSettings()
    end)
    CoopSeccion:TextBox("The Carry", "...", function(Carryboi)
        _G.Settings.Carryboi = Carryboi
        saveSettings()
    end)
    CoopSeccion:TextBox("Woahh", "...", function(Carried)
        _G.Settings.Carried = Carried
        saveSettings()
    end)
    local massTab = Luxt:Tab("Mass Sell")
        local massSeccion = massTab:Section("MassSell Settings")
        massSeccion:Label("Credits by MIGRAINE | KNIXNKK || COMMUNITY")
        massSeccion:Toggle("MassSell", function(isToggled)
            _G.Settings.MassSell = isToggled
                saveSettings()
        end)
        massSeccion:Toggle("Legendary", function(isToggled)
            _G.Settings.Legendary = isToggled
                saveSettings()
        end)
        massSeccion:Toggle("Epic", function(isToggled)
            _G.Settings.Epic = isToggled
                saveSettings()
        end)
        massSeccion:Toggle("Rare", function(isToggled)
            _G.Settings.Rare = isToggled
                saveSettings()
        end)
        massSeccion:Toggle("Uncommon", function(isToggled)
            _G.Settings.Uncommon = isToggled
                saveSettings()
        end)
        massSeccion:Toggle("Common", function(isToggled)
            _G.Settings.Common = isToggled
                saveSettings()
        end)
        local micsTab = Luxt:Tab("Mics")
        local micsSeccion = micsTab:Section("Mics Settings")
        micsSeccion:Label("Credits by MIGRAINE | KNIXNKK || COMMUNITY")
        micsSeccion:Button("Discord", function()
            setclipboard("https://discord.gg/k2cWzSYt")
        end)
        micsSeccion:Toggle("Shop tickets", function(isToggled)
            _G.Settings.shopBossrushTicket = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("DeleteTexture", function(isToggled)
            _G.Settings.deleteTexture = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("Upgrade Card", function(isToggled)
            _G.Settings.upgradeCard = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("Code", function(isToggled)
            _G.Settings.Code = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("infiniteRaid", function(isToggled)
            _G.Settings.infiniteRaid = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("Auto Equip Card", function(isToggled)
            _G.Settings.useCard = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("MassSell with Equip Card", function(isToggled)
            _G.Settings.BestCardMassSell = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("Retry", function(isToggled)
            _G.Settings.Retry = isToggled
                saveSettings()
        end)
        micsSeccion:Toggle("Leaderboard", function(isToggled)
            _G.Settings.leaderboard = isToggled
                saveSettings()
        end)
        --[[
        micsSeccion:DropDown("AFK CURRENCY", {"Gem","Raid"}, function(curren)
            _G.Settings.currency = curren
            saveSettings()
        end)
        ]]
        micsSeccion:Toggle("Webhook", function(isToggled)
            _G.Settings.webhook = isToggled
                saveSettings()
        end)
        micsSeccion:TextBox("WebHook URL", "URL", function(urls)
            _G.Settings.URL = urls
            saveSettings()
        end)
        micsSeccion:Button("Save Settings", function()
            saveSettings()
        end)
        local creditsTab = Luxt:Tab("Credits")
        local cf = creditsTab:Section("Main Credits")
        cf:Credit("Luxt: Main Coding")
        local cf1 = creditsTab:Section("UI Credits")
        cf1:Credit("xHeptc: UI Library")
        local cf2 = creditsTab:Section("Helping Credits")
        cf2:Credit("Salad: Helping")
        loadSettings()
                    if _G.Settings.farm then
                        DimensionCheck(level)
                        if game.PlaceId == 6990129309 then
                            
                            _G.Player = game.Players.LocalPlayer
                            _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
                            game:GetService"RunService".Stepped:Connect(function() 
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 
                        end)
                        if _G.Settings.leaderboard then
                        local StarterGui = game:GetService("StarterGui")
                        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
                        end
                        gameMap = unpack(game:GetService("Workspace").GameMap:GetChildren())
                        if _G.Settings.Retry then
                        spawn(function()
                        while task.wait() do
                            pcall(function()
                                local args = {
                                    [1] = "RetryDungeon"
                                }
                                game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(unpack(args))
                            end)
                        end
                    end)
                end
                        if tostring(gameMap) == "Infinite Mode" then
                            spawn(function()
                                while task.wait() do
                                    pcall(function()
                                        for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                local Distance2 = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                local tween_s = game:service"TweenService"
                                                local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
                                                local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)})
                                                tween:Play()
                                                game:GetService("Workspace").Folders.Players[tostring(_G.Player)].Head.PlayerHealthBarGui.PlayerName.Text = ""
                                                spawn(antiafk)
                                                spawn(function()
                                                    wait(0.1)
                                                    if _G.Settings.infiniteRaid then
                                                        time = os.date ("*t")
                                                        minute = time.min
                                                        if minute >= 0 and minute <= 9 then
                                                            Teleport()
                                                        end
                                                    end
                                                end)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not v
                                        end
                                    end)
                                end
                            end)
                            spawn(spamSkill)
                            spawn(spamPunch)
                        elseif tostring(gameMap) == MapName then
                            print(MapName)
                            spawn(function()
                                while task.wait() do
                                    pcall(function()
                                        for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                local Distance2 = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                local tween_s = game:service"TweenService"
                                                local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
                                                local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)})
                                                tween:Play()
                                                game:GetService("Workspace").Folders.Players[tostring(_G.Player)].Head.PlayerHealthBarGui.PlayerName.Text = ""
                                                spawn(antiafk)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not v
                                        end
                                    end)
                                end
                            end)
                            spawn(spamSkill)
                            spawn(spamPunch)
                            
                        else
                            print(gameMap)
                            spawn(function()
                                while task.wait() do
                                    pcall(function()
                                        for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                local Distance2 = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                local tween_s = game:service"TweenService"
                                                local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
                                                local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)})
                                                tween:Play()
                                                game:GetService("Workspace").Folders.Players[tostring(_G.Player)].Head.PlayerHealthBarGui.PlayerName.Text = ""
                                                spawn(antiafk)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not v
                                        end
                                    end)
                                end
                            end)
                            spawn(spamSkill)
                            spawn(spamPunch)
                        end
                    elseif game.PlaceId == 6990129309 and tostring(gameMap) == MapName then
                        gameMap = unpack(game:GetService("Workspace").GameMap:GetChildren())
                            print(MapName)
                            spawn(function()
                                while task.wait() do
                                    pcall(function()
                                        for i,v in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                local Distance2 = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                local tween_s = game:service"TweenService"
                                                local info = TweenInfo.new(Distance2/300, Enum.EasingStyle.Linear)
                                                local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],info, {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)})
                                                tween:Play()
                                                game:GetService("Workspace").Folders.Players[tostring(_G.Player)].Head.PlayerHealthBarGui.PlayerName.Text = ""
                                                spawn(antiafk)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not v
                                        end
                                    end)
                                end
                            end)
                            spawn(spamSkill)
                            spawn(spamPunch)
                    end
                    end
                    if _G.Settings.coop then
                        loadSettings()
                        if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
                            wait(5)
                            player = game.Players.LocalPlayer
                        statDisplay = game:GetService("ReplicatedStorage")[tostring(player).."StatDisplay"]
                        level = statDisplay.Level.Value
                            CodeBoard = game:GetService("Workspace").Leaderboards.MilestoneBoard.Center.Surface.ScrollingFrame:GetChildren()
                        player = game.Players.LocalPlayer
                        if tostring(player) == tostring(_G.Settings.Carried) then
                            for i,v in pairs(CodeBoard) do
                                if tostring(v) == "MilestoneEntry" then
                                    code = v.MilestoneCode.Text
                                    if code ~= "LOCKED" then
                                        wait(0.05)
                                        local args = {
                                        [1] = "RedeemPromoCode",
                                        [2] = tostring(code)
                                        }
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                    end
                                end
                            end
                            if _G.Settings.coopequipcard then
                                selectedBy = "attack"; -- attack, health
                                _G.Player = game.Players.LocalPlayer
                                _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
                                path = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                                count = 0
                                tle = {}
                                key = {}
                                value = {}
                            
                                tab = {}
                                for i,v in pairs(path:GetChildren()) do
                                if i > 2 then
                                CardName = v
                                local Signals = {'MouseButton1Down'}
                                local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(CardName)].CardClick
                                for i,v in pairs(Signals) do
                                firesignal(Button[v])
                                attackStats = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.CardDataFrame.CardScrollingFrame.Attack.Stat.Text
                                HealthStats = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.CardDataFrame.CardScrollingFrame.Health.Stat.Text
                                subAttack = string.gsub(attackStats, 'Attack: ', '')
                                subHealth = string.gsub(HealthStats, 'Health: ', '')
                                count = count + 1
                                local args = {
                                        [1] = "UnequipCard",
                                        [2] = tostring(CardName)
                                    }
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                table.insert(key, CardName)
                                if selectedBy == "attack" then
                                table.insert(value, tonumber(subAttack))
                                elseif selectedBy == "health" then
                                table.insert(value, tonumber(subHealth))
                                else
                                    print('None')
                                end
                                wait(0.05)
                                end
                                end
                                end
                                for i,v in pairs(key) do
                                    tab[v] = value[i]
                                end
                                local function FindBiggest(count)
                                    local result = {}
                                    for i=1, count do
                                        local biggest = 0
                                        local biggestKey = ""
                                        for i2,v in pairs(tab) do
                                            if not table.find(result,i2) and tab[i2] > biggest then
                                                biggest = tab[i2]
                                                biggestKey = i2
                                            end
                                        end
                                        result[i] = biggestKey
                                    end
                                    return result
                                end
                            
                                wait(2)
                                biggests = {}
                                for i,v in pairs(FindBiggest(3)) do
                                table.insert(biggests,v)
                                end
                                for i,v in pairs(tab) do
                                print(i)
                                if has_value(biggests, i) then
                                    if _G.Settings.upgradeCard then
                                    for count = 1, 2, 1 do
                                        local args = {
                                            [1] = "UpgradeCard",
                                            [2] = tostring(i)
                                        }
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                        wait(.05)
                                    end
                                end
                                local args = {
                                    [1] = "EquipCard",
                                    [2] = tostring(i)
                                }
                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                            else
                                if _G.Settings.coopMassSell then
                                    local Signals = {'MouseButton1Down'}
                                    local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(i)].CardClick
                                    for x,h in pairs(Signals) do
                                        firesignal(Button[h])
                                    end
                                        Rarity = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                        if Rarity == "Common"then
                                        local A_1 = "MassDeleteCardsFromInventory"
                                        local A_2 = 
                                        {
                                        [tostring(i)] = true
                                        }
                                        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                                        Event:InvokeServer(A_1, A_2)
                                        wait(.1)
                                    elseif Rarity == "Uncommon"then
                                        local A_1 = "MassDeleteCardsFromInventory"
                                        local A_2 = 
                                        {
                                        [tostring(i)] = true
                                        }
                                        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                                        Event:InvokeServer(A_1, A_2)
                                        wait(.1)
                                    elseif Rarity == "Rare"then
                                        local A_1 = "MassDeleteCardsFromInventory"
                                        local A_2 = 
                                        {
                                        [tostring(i)] = true
                                        }
                                        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                                        Event:InvokeServer(A_1, A_2)
                                        wait(.1)
                                    elseif Rarity == "Epic"then
                                        local A_1 = "MassDeleteCardsFromInventory"
                                        local A_2 = 
                                        {
                                        [tostring(i)] = true
                                        }
                                        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                                        Event:InvokeServer(A_1, A_2)
                                        wait(.1)
                                    end
                                end
                                    end
                                end
                                cardCount = 0
                                wait(1)
                                bestcard = true
                            end
                            wait(5)
                            DimensionCheck(level)
                            CreateRoom(Difficulty, MapName, Hardcore)
                            print("CreateRoom")
                            find = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.PartyJoinedFrame.PlayerFrame.PlayerScrollingFrame:WaitForChild(tostring(_G.Settings.Carryboi))
                            print("Found")
                            wait(2)
                            local args = {
                                [1] = "TeleportPlayers"
                            }
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                        elseif tostring(player) == tostring(_G.Settings.Carryboi) then
                            wait(10)
                            if _G.Settings.coopMainMassSell then
                                cardFrame = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame:GetChildren()
                                for i,v in pairs(cardFrame) do
                                    if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "CardInventorySlot" then
                                        local Signals = {'MouseButton1Down'}
                                        cards = v
                                        local Button = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.CardInventoryFrame.CardInventoryScrollingFrame[tostring(v)].CardClick
                                        for i,v in pairs(Signals) do
                                            firesignal(Button[v])
                                            Rarity = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                            if Rarity == "Common"then
                                                local args = {
                                                    [1] = "SellCard",
                                                    [2] = tostring(cards)
                                                }
                                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                                wait(.1)
                                            end
                                            if Rarity == "Uncommon"then
                                                local args = {
                                                    [1] = "SellCard",
                                                    [2] = tostring(cards)
                                                }
                                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                                wait(.1)
                                            end
                                            if Rarity == "Rare"then
                                                local args = {
                                                    [1] = "SellCard",
                                                    [2] = tostring(cards)
                                                }
                                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                                wait(.1)
                                            end
                                            if Rarity == "Epic"then
                                                local args = {
                                                    [1] = "SellCard",
                                                    [2] = tostring(cards)
                                                }
                                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                                wait(.1)
                                            end
                                            if Rarity == "Legendary" then
                                                local args = {
                                                    [1] = "SellCard",
                                                    [2] = tostring(cards)
                                                }
                                                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                                wait(.1)
                                            end
                                        end
                                        end
                                    end
                                    end
                                    wait(15)
                            path = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.PlayRoomScrollingFrame:GetChildren()
                            for i,v in pairs(path) do
                                if tostring(v) ~= "UIGridLayout" and tostring(v) ~= "RoomTemplate" then
                                HostName = v.HostName.Text
                                subHost = string.gsub(HostName, "Host: " , "")
                                    if subHost == tostring(_G.Settings.Carried) then
                                        local args = {
                                            [1] = "AddPlayerToParty",
                                            [2] = tostring(v)
                                        }
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(unpack(args))
                                        print("Joined")
                                    end
                                end
                            end
                        end
                        end
                    end
                    spawn(function()
                        while task.wait(30) do
                            pcall(function()
                    if _G.Settings.deleteTexture then
                        for _,v in pairs(workspace:GetDescendants()) do
                            if v.ClassName == "Part"
                            or v.ClassName == "SpawnLocation"
                            or v.ClassName == "WedgePart"
                            or v.ClassName == "Terrain"
                            or v.ClassName == "MeshPart" 
                            or v.ClassName == "Meshes/rock"
                            or v.ClassName == "Meshes/branch"
                            or v.ClassName == "Meshes/leaf"
                            or v.ClassName == "Meshes/hexagon"
                            or v.ClassName == "Trees" then
                            v.BrickColor = BrickColor.new(50,50,50)
                            v.Material = "Plastic"
                            end
                            end
                            
                            for _,v in pairs(workspace:GetDescendants()) do
                            if v.ClassName == "Decal"
                            or v.ClassName == "Texture" then
                            v:Destroy()
                            end
                            end
                    end
                end)
            end
        end)
        spawn(function()
            while task.wait() do
                pcall(function()
                if game.PlaceId == 6938803436 or game.PlaceId == 7274690025 then
                    if _G.Settings.speedraid then
                        selectedCharac()
                        if _G.Settings.raid then
                            wait(1)
                            loadSettings()
                            teleportRaid()
                            wait(10)
                        end
                        message = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.Text
                        if tostring(message) == "Ready to enter" then
                        wait(2)
                        EquipCharacterAssist()
                        EquipCharacter()
                        wait(120)
                        end
                        selectedCharac()
                    end
                    if _G.Settings.raid then
                        wait(1)
                        loadSettings()
                        teleportRaid()
                    end
                    if _G.Settings.Bossrush then
                        wait(14)
                        loadSettings()
                        TeleportToBossRush()
                    end
                    if level > tonumber(_G.Settings.reachLevel) then
                        wait(16)
                        loadSettings()
                        TeleportToTimeChallenge()
                    end
                    if _G.Settings.farmType == "TimeChallenge" then
                        wait(16)
                        TeleportToTimeChallenge()
                    end
                    if _G.Settings.farmType == "Dimension" then
                        wait(16)
                        loadSettings()
                        DimensionCheck(level)
                        wait(0.1)
                        CreateRoom(Difficulty, MapName, Hardcore)
                        wait(0.1)
                        TeleportPlayer()
                    end
                    if _G.Settings.farmType == "Infinite" then
                        wait(16)
                        loadSettings()
                        TeleportToInfinite()
                    end
                    if _G.Settings.farmType == "AFK" then
                        wait(16)
                        loadSettings()
                        TeleportToAfk()
                    end
                elseif game.PlaceId == 6990129309 then
                    local afk = statDisplay:FindFirstChild("AfkGem")
                    if afk then
                        wait(1)
                        print('AFK')
                        if _G.Settings.currency == "Raid" then
                        changecurrency = game:GetService("Players").LocalPlayer.PlayerGui.AfkGui.CenterUIFrame.Frame.ChangeCurrency
                        local Signals = {'MouseButton1Down'}
                        for i,v in pairs(Signals) do
                        firesignal(changecurrency[v])
                        end
                        end
                        while task.wait() do
                            spawn(antiafk)
                            spawn(function()
                                wait(0.1)
                                if _G.Settings.infiniteRaid then
                                    time = os.date ("*t")
                                    minute = time.min
                                    if minute >= 0 and minute <= 9 then
                                        local A_1 = "TeleportToLobbyAFK"
                                        local A_2 = true
                                        local Event = game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction
                                        Event:InvokeServer(A_1, A_2)
                                        wait(20)
                                        Teleport()
                                    end
                                end
                            end)
                        end
                    end
                end
                end)
            end
        end)
        spawn(function()
            while task.wait(.2) do
                gameMap = game:GetService("Workspace").GameMap:GetChildren()
                _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
                player = game.Players.LocalPlayer.Name
                _G.Player = game.Players.LocalPlayer
                _G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
                _G.GamePlace = game.PlaceId
                --_G.StatDisplay = game:GetService("ReplicatedStorage")[tostring(_G.Player).."StatDisplay"]
                CoinBlack = game:GetService("Players")[tostring(_G.Player)].PlayerGui.UniversalGui.LeftUIFrame.OwnHealthBarFrame:GetChildren()
                for i,v in pairs(CoinBlack) do
                if i == 13 then
                _G.AllGold = v.Gold.Text
                end
                if i == 14 then
                _G.AllGem = v.Gem.Text
                end
                end
                _G.AllRaid = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Shop.Frame.ShopRaidTokenCounter.ShopRaidTokenAmount.Text
                _G.Trait = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.CharacterTraitFrame.Frame.TraitTokenChangeTrait.Text
                reward = {}
                paths = game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.RewardFrame.RewardGridFrame:GetChildren()
                for i,v in pairs(paths) do
                    i_count = i
                end
                if tonumber(i_count) >= 2 then
                    wait(4)
                for i,v in pairs(paths) do
                    if tostring(v) ~= "UIGridLayout" then
                    wait(0.1)
                    table.insert(reward, tostring(v))
                    end
                    count = i
                end
                counting = true
                end
                if counting and tonumber(count) >= 2 then
                    wait(3)
                    _G.BossrushCurrency = game:GetService("Players")[tostring(_G.Player)].PlayerGui.MainGui.CenterUIFrame.BossRushShop.BossRushShopCurrencyCounter.BossRushShopCurrencyAmount.Text
                    local data = {
                    ["content"] = "",
                    ["embeds"] = {
                        {
                        ["title"] = "",
                        ["description"] = "**User : " .. tostring(_G.Player).. "**\n**LEVEL : " .. tostring(_G.StatDisplay.Level.Value).."**\n**Exploit Detect : " .. tostring(_G.StatDisplay.ExploitsDetected.Value).."**\n** Bossrush Raid : " .. tostring(_G.BossrushCurrency) .."**\n**Gold ** : **"..tostring(_G.AllGold).."**\n** Gem ** : **"..tostring(_G.AllGem).."**\n** RaidToken ** :** "..tostring(_G.AllRaid).."**\n** Trait : ".. tostring(_G.Trait).. "**\n".."\n**[ "..tostring(unpack(gameMap)).." Rewards ]**\n",
                        ["color"] = 3092790,
                        ["fields"] = {
                        {
                        ["name"] = "━━━━━━━━━━━━━━━━━━━━━━━━━",
                        --["value"]=  "\n",
                        ["value"]=  "**"..table_to_string(reward).."**",
                        ["inline"] = true
                        }
                        },
                        ["author"]= {
                        ["name"]= "Anime Dimensions Simulator",
                        ["icon_url"]= ""
                        },
                        ["footer"]= {
                            ["text"]= "𝐌𝐈𝐆𝐑𝐀𝐈𝐍𝐄 ┊ ᴋɴɪxɴᴋᴋ",
                            ["icon_url"]= "https://c.tenor.com/yY_2I-E9xNIAAAAC/head-banging-anime.gif"
                        },
                        ["thumbnail"] = {
                            ["url"] = "https://cdn.discordapp.com/attachments/972688226315800596/972688266157506570/walking.gif",
                            ["height"] = "0",
                            ["width"] = "0"
                        },
                        ["timestamp"]= "2076-12-31T17:00:00.000Z"
                        }
                        },
                        ["username"] = "Anime Dimensions Simulator LOGS",
                        ["avatar_url"] = "https://wallpapercave.com/wp/wp7976100.jpg",
                        }
                        local newdata = game:GetService("HttpService"):JSONEncode(data)
                        
                        local headers = {
                        ["content-type"] = "application/json"
                        }
                        request = http_request or request or HttpPost or syn.request
                        local abcdef = {Url = tostring(_G.Settings.URL), Body = newdata, Method = "POST", Headers = headers}
                        request(abcdef)
                        wait(20)
                    end
                end
            end)
    end
end
