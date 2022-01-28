repeat wait() until game:IsLoaded()
wait(0.5)
for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ScreenGui" then
        if v:FindFirstChild('Frame') then if v.Frame:FindFirstChild('topbar') then
            v:Destroy()
        end
    end
    end
end
for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Zen X - Trade Tower" then
        v.Main.Visible = false
    end
end
getgenv().selfdestruct = false
getgenv().IrisAd = true

local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Zen X - Trade Tower", 5013109572)

spawn(function()
  Notification.Notify("LOADING", "Loading the script!", "rbxassetid://4914902889");
end)


plr = game.Players.LocalPlayer
player = game.Players.LocalPlayer
IsMod = false

game.Players.PlayerAdded:Connect(function(player)
    if player:GetRankInGroup(6293029) == 240 then
        if getgenv().modnotifierr then
            local url = getgenv().webhookurl
    
            local data = {
                ["content"] = "",
                    ["embeds"] = {{
                        ["title"] = "__**MOD NOTIFIER**__",
                        ["description"] = "A moderator named " .. player.Name .. " has joined your game.", 
                        ["type"] = "rich",
                        ["color"] = tonumber(0x32CD32),
                    }}
                }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
        
            local headers = {
                ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
        end
        if autokick then
            local playerToKick = game.Players.LocalPlayer
            playerToKick:Kick("You have been kicked because a moderator joined")
        else
            if getgenv().serverhopwhenamodjoins then
                while wait(1) do
                local x = {}
                for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                    if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                        x[#x + 1] = v.id
                    end
                end
                if #x > 0 then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
                else
                    print('failed to find server')
                end
            end
            else
                if not getgenv().selfdestruct then
                    venyx:Notify("WARNING", "A game moderator joined!")
                end
            end
        end
    end
end)

Players = game:GetService('Players')

local formatNumber = (function (n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

player = game.Players.LocalPlayer
IsMod = false

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

    local commands = {}
        
    local prefix = "/"

    commands.e = function(arguments)
        local CMD = arguments[1]
        
        if CMD == 'rejoin' or CMD == 'rj' then
            Players.LocalPlayer:Kick("Rejoining")
            wait()
            game:GetService('TeleportService'):Teleport(game.PlaceId, Players.LocalPlayer)
        end
        if CMD == 'serverhop' or CMD == 'shop' then
            local x = {}
            for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                    x[#x + 1] = v.id
                end
            end
            if #x > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
            else
                print('failed to find server')
            end
        end
        if CMD == 'korblox' then
            local Leg = 'Right' 
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                char[Leg..'UpperLeg']:Destroy()
                char[Leg..'LowerLeg']:Destroy()
                char[Leg..'Foot']:Destroy()
                else
                    char[Leg..' Leg']:Destroy()
            end
        end
        if CMD == 'zoom' or CMD == 'infzoom' then
            player.CameraMaxZoomDistance = math.huge
        end
        if CMD == 'fov' then
            if game.Workspace:FindFirstChildWhichIsA('Camera') then
                game.Workspace:FindFirstChildWhichIsA('Camera').FieldOfView = tonumber(arguments[2])
            end
        end
        if CMD == 're' then
            player.Character.Humanoid:Destroy()
            wait(0.1)
            for i, v in pairs(player.Character:GetChildren()) do
                v:Destroy()
            end
        end
        if CMD == 'sit' then
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
        end
        if CMD == 'shield' then
            if IsMod == true then
                DisableMod = true
                spawn(function()
                    Notification.Notify("IMUNNITY", "Immune to mod commands.", "rbxassetid://4914902889");
                end)
            end
        end
        if CMD == 'unshield' then
            if IsMod == true then
                DisableMod = false
                spawn(function()
                    Notification.Notify("IMUNNITY", "Unimmune to mod commands.", "rbxassetid://4914902889");
                end)
            end
        end
        if CMD == 'faceless' or CMD == 'noface' then
            player.Character.Head.face:Destroy()
        end
        if CMD == 'remotespy' then
            loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
        end
    end
player.Chatted:Connect(function(message,recipient)
    message = string.lower(message)
    local splitString = message:split(" ")
    local slashCommand = splitString[1]
    local cmd = slashCommand:split(prefix)
    local cmdName = cmd[2]
    if commands[cmdName] then
        local arguments = {}
        for i = 2, #splitString, 1 do
        table.insert(arguments,splitString[i])
        end
    commands[cmdName](arguments)
    end
end)
LocalPlayer = game.Players.LocalPlayer
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
local InfoModule = require(game.ReplicatedStorage.Modules.Info)
local MainFunctions = require(game:GetService("Players").LocalPlayer.PlayerGui.Gui.GuiModules.MainFunctions)
local inv = require(game:GetService("Players").LocalPlayer.PlayerGui.Gui.GuiModules.Inventory)
local AuctionFunctions = require(game:GetService("Players").LocalPlayer.PlayerGui.AuctionBoard.AuctionFunctions)
local auctionBoard = LocalPlayer.PlayerGui.AuctionBoard
local auctionCountdown = auctionBoard.Status
local auctionHeader = auctionBoard.Header
local auctionBidders = auctionBoard.Bidders
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local List = game.Players.LocalPlayer.PlayerGui.Gui.Frames.Inventory.Body.Holder
local maxPrice = 50000
local jackpotTier = 1
local minJackpotChance = 95
local waitTime = .9
local quicksearch = false
local minAutomarketSell = 50000
local maxAutomarketSell = 9e9
local percentToMarketSell = 104/100
local maxPercentOfValueToBid = 70/100
local autoAuctionWaitTime = .9


local function removeAllFromMarketPlace()
    for _, frame in pairs(LocalPlayer.PlayerGui.Gui.Frames.Market.SubMarket.Holder.List:GetChildren()) do
        if frame:IsA("Frame") and frame.Name == LocalPlayer.Name then
            local itemName = frame:WaitForChild("ItemName").Text
            spawn(function()
                local args = {
                    [1] = "Marketplace",
                    [2] = itemName
                }

                game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
            end)
        end
    end
    marketItemsLPInfo = {}
end

local function sellItem(itemName, amount)
    spawn(function()
	pcall(function()
       	    List[itemName]:Destroy()
	end)
        local args = {
            [1] = "QuickSell",
            [2] = itemName,
            [3] = amount
        }
        game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
    end)
end

local function marketSellItem(itemName, amount, value)
    spawn(function()
        local args = {
            [1] = "Marketplace",
            [2] = itemName,
            [3] = value,
            [4] = amount
        }

        game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
    end)
end


local function getItemPrice(name, rolimonsVal)
    if rolimonsVal == "rolimonsValue" then
        return InfoModule:ReturnItemFromModule(name).rolimonsValue
    elseif rolimonsVal == "recentAveragePrice" then
        return InfoModule:ReturnItemFromModule(name).recentAveragePrice
    end
end


function isValidItem(name, maxprice)
    local RAP = getItemPrice(name, "recentAveragePrice")
    local value = getItemPrice(name, "rolimonsValue")
    if getgenv().automarketplace and (value >= minAutomarketSell and value <= maxAutomarketSell) then
        return true, "marketsell", value * percentToMarketSell
    elseif (getgenv().autosell and RAP <= maxPrice) and (not getgenv().pureraponly or RAP == value) then
        return true, "sell"
    end
    return false
end

function getLowestItem(name, maxprice)
    local RAP = getItemPrice(name, "recentAveragePrice")
    local value = getItemPrice(name, "rolimonsValue")
    if getgenv().autotraderaponly then
        if (getgenv().autotrade and RAP <= maxprice) then
            return true
        end
    elseif getgenv().autotradevalueonly then
        if (getgenv().autotrade and value <= maxprice) then
            return true
        end
    end
    return false
end

function isUnder50K(name)
    local RAP = getItemPrice(name, "recentAveragePrice")
    if (RAP <= 50000) then
        return true
    end
    return false
end

local items = {}
function updateCurrentItems()
    items = {}
    for i,v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            if not items[v.Name] then
                items[v.Name] = 1
            else
                items[v.Name] = items[v.Name] + 1
            end
        end
    end
end

updateCurrentItems()

--[[function ok()
    updateCurrentItems()
    for itemName, amount in pairs(items) do
        local valid = getLowestItem(itemName, 1000)
        if valid then
            print(itemName)
        end
    end
end]]

local items = {}
function updateCurrentItems()
    items = {}
    for i,v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            if not items[v.Name] then
                items[v.Name] = 1
            else
                items[v.Name] = items[v.Name] + 1
            end
        end
    end
end
updateCurrentItems()

function sellCurrentItems()
    updateCurrentItems()
    for itemName, amount in pairs(items) do
        local valid, sellType, value = isValidItem(itemName, maxPrice)
        if valid then
            if sellType == "sell" then
                sellItem(itemName, amount)
            elseif sellType == "marketsell" then
                marketSellItem(itemName, amount, value)
            end
        end
    end
end


List.ChildAdded:Connect(function(item)
    if item:IsA("Frame") then
        local valid, sellType, value = isValidItem(item.Name, maxPrice)
        if valid then
            if sellType == "sell" then
                sellItem(item.Name, amount)
            elseif sellType == "marketsell" then
                marketSellItem(item.Name, amount, value)
            end
        end
    end
end)


local MoneyLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/ZaigoYT/wfwefw/main/sad'))()
local NSumClosestLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/ZaigoYT/wfwefw/main/dsag'))()

local function convertRobux(num)
    local shortValue = num
    local longValue = MoneyLib.ShortToLong(shortValue)
    return tonumber(longValue) or tonumber(shortValue) 
end


local Countdown = player.PlayerGui.Gui.Frames.Games.Jackpot.Timer.Countdown
local jackpotLPInfo = {
    [1] = {
        ["total"] = 0,
        ["itemsAlreadyIn"] = 0
    },
    [2] = {
        ["total"] = 0,
        ["itemsAlreadyIn"] = 0
    },
    [3] = {
        ["total"] = 0,
        ["itemsAlreadyIn"] = 0
    }
}

local function resetJackpotLPInfo()
    for _, tier in ipairs(jackpotLPInfo) do
        for index, value in pairs(tier) do
            tier[index] = 0
        end
    end
end

Countdown:GetPropertyChangedSignal("Text"):Connect(function()
    local countdownText = Countdown.Text
    local resetted = (string.match(countdownText:lower(), "win") == "win" or string.match(countdownText:lower(), "won") == "won")
    if resetted then
        resetJackpotLPInfo()
    end
end)

ReplicatedStorage:WaitForChild("Events"):WaitForChild("DataSend").OnClientEvent:Connect(function(signature, name, value, tier)
    if signature == "JackpotItem" and name == LocalPlayer.Name then
        jackpotLPInfo[tier]["total"] = jackpotLPInfo[tier]["total"] + value -- put + before = on both if they dont work ex. +=
        jackpotLPInfo[tier]["itemsAlreadyIn"] = jackpotLPInfo[tier]["itemsAlreadyIn"]+ 1
    end
end)

local function getSortedItems()
    local items = {}
    local inventory = inv.PlayersLocalInv
    for itemName, itemInfo in pairs(inv.PlayersLocalInv) do
        for amount = 1, itemInfo.amount do
            items[#items + 1] = {
                ["rolimonsValue"] = (getItemPrice(itemName, "rolimonsValue")),
                ["name"] = itemName
            }
        end
    end
    return MainFunctions:ReturnSortedDictionary(items, "rolimonsValue", true, true)
end

local function getTotalJackpot()
    local total = 0
    for _, plrInfo in pairs(LocalPlayer.PlayerGui.Gui.Frames.Jackpot.SubJackpot.Pools[jackpotTier].List:GetChildren()) do
        if plrInfo.Name ~= "UIGridLayout" then
            for _, RAP in pairs(plrInfo:GetChildren()) do
                if RAP.Name == "RAP" then
                    local num = string.gsub(RAP.text, "%$", "")
                    total = total + convertRobux(num)
                end
            end 
        end
    end
    return total
end

local function getTotalAmountAbleToPutIn(sortedItems, n, maxJackpotPrice)
    local sol
    if getgenv().quicksearch then
        sol = NSumClosestLib.QuickNSumClosest(sortedItems, n, maxJackpotPrice)
    else
        sol = NSumClosestLib.NSumClosest(sortedItems, n, maxJackpotPrice)
    end
    if sol.Success then
        local totalInv = sol.Result
        local itemsForJackpot = sol.MadeWith
        return totalInv, itemsForJackpot
    else
        return false
    end
end

local function getMaxAmountAbleToPutIn(sortedItems, n, maxJackpotPrice)
    local closestSum = math.huge
    local targetItemsForJackpot

    repeat
        local totalInv, itemsForJackpot = getTotalAmountAbleToPutIn(sortedItems, n, maxJackpotPrice)
        if totalInv then
            local diff = math.abs(maxJackpotPrice - totalInv)
            if diff <= math.abs(closestSum - totalInv) then
                closestSum = totalInv
                targetItemsForJackpot = itemsForJackpot
            end
        end
        n = n - 1
    until
        n < 1
    return closestSum + jackpotLPInfo[jackpotTier]["total"], targetItemsForJackpot
end

Countdown:GetPropertyChangedSignal("Text"):Connect(function()
    local countdownText = Countdown.Text
    local timeLeft = string.match(countdownText:lower(), "win") ~= "win" and string.gsub(countdownText, "%D", "")
    if getgenv().autojackpot and timeLeft == "1" then
        wait(waitTime)
        local tierMax = (jackpotTier == 1 and 250000) or (jackpotTier == 2 and 5000000) or (jackpotTier == 3 and math.huge)
        local sortedItems = getSortedItems()
        local itemsAlreadyIn = jackpotLPInfo[jackpotTier]["itemsAlreadyIn"]
        local LPTotalAlreadyIn = jackpotLPInfo[jackpotTier]["total"]
        local n = (#sortedItems + itemsAlreadyIn >= 10 and 10 - itemsAlreadyIn) or (#sortedItems + itemsAlreadyIn < 10 and #sortedItems)
        local totalInv, itemsForJackpot = getMaxAmountAbleToPutIn(sortedItems, n, tierMax - LPTotalAlreadyIn)
        local totalJackpot = getTotalJackpot()
        if totalInv and totalInv / (totalJackpot + totalInv) >= (minJackpotChance / 100) and totalJackpot - LPTotalAlreadyIn > 0 then
            for _, itemInfo in pairs(itemsForJackpot) do
                local args = {
                    [1] = "Jackpot",
                    [2] = itemInfo.name,
                    [3] = 1, 
                    [4] = jackpotTier
                }
                spawn(function()
                    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
                    pcall(function()
                        LocalPlayer.PlayerGui.Gui.Frames.Jackpot.SubJackpot.LocalInventory.List[itemInfo.name]:Destroy()
                    end)
                end)
            end
            spawn(function()
                Notification.Notify("JACKPOT", "Attempted to join", "rbxassetid://4914902889");
            end)
        elseif not totalInv then
            spawn(function()
                Notification.Notify("JACKPOT", "Failed to join! you need items", "rbxassetid://4914902889");
            end)
        elseif totalJackpot <= 0 then
            spawn(function()
                Notification.Notify("JACKPOT", "Failed to join, no participants", "rbxassetid://4914902889");
            end)
        elseif totalInv / (totalJackpot + totalInv) < (minJackpotChance / 100) then
            spawn(function()
                Notification.Notify("JACKPOT", "% not high enough: " .. totalInv / (totalJackpot + totalInv * 100 .. "% | " .. minJackpotChance .. "%"), "rbxassetid://4914902889");
            end)
        elseif totalJackpot - LPTotalAlreadyIn <= 0 then
            spawn(function()
                Notification.Notify("JACKPOT", "You were the only one participating! Did not join.", "rbxassetid://4914902889");
            end)
        end
    end
end)

local auctionBoard = LocalPlayer.PlayerGui.AuctionBoard
local auctionCountdown = auctionBoard.Status
local auctionHeader = auctionBoard.Header
local auctionBidders = auctionBoard.Bidders

local function bidAuction(num)
    local args = {
        [1] = "AuctionBid",
        [2] = num
    }
    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
end

local function getTopAuctionBid()
    local last
    for playerName, bid in pairs(AuctionFunctions.BidTable) do
        last = bid
        if playerName == LocalPlayer.Name then
            last = nil
        end
    end
    return bid
end

auctionCountdown:GetPropertyChangedSignal("Text"):Connect(function()
    local countdownText = auctionCountdown.Text
    local timeLeft = string.match(countdownText:lower(), "win") ~= "win" and string.gsub(countdownText, "%D", "")
    if getgenv().autobidtoauction and timeLeft == "1" then
        wait(autoAuctionWaitTime)
        local itemName = string.match(auctionHeader.Text, "%(.*%)"):gsub("[%(%)]","")
        local value = getItemPrice(itemName, "rolimonsValue")
        local topBid = getTopAuctionBid()
        if not topBid then
            bidAuction(value * .6)
        elseif topBid/value <= maxPercentOfValueToBid then
            bidAuction(topBid + 1e-307)
        end
    end
end)

local function setCrash(num)
    local args = {
        [1] = "Crash",
        [2] = num
    }
    
    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
end

crashcount = game.Players.LocalPlayer.PlayerGui.Gui.Frames.Games.Crash.Countdown

crashcount:GetPropertyChangedSignal("Text"):Connect(function()
    local crashCountdown = game.Players.LocalPlayer.PlayerGui.Gui.Frames.Games.Crash.Countdown.Text
    if getgenv().crash then
        if crashCountdown == ("x" .. payout) then
            setCrash(crashamount)
        else 
            if crashCountdown == "Game beginning in: 1" then
                setCrash(crashamount)
            end
        end
    end
end)

coroutine.resume(coroutine.create(function(v)
    while wait() do
        if getgenv().autocollectpresents then
                for _,v in pairs(game.Workspace:GetChildren()) do 
                if v.Name == "Present" then
                firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
                end
        end
    end
end))

coroutine.resume(coroutine.create(function(v)
    while wait(0.1) do
        if getgenv().autoclick then
            game:GetService("ReplicatedStorage").Events.ClientClick:FireServer()
        end
    end
end))

coroutine.resume(coroutine.create(function(v)
    while true do
        if getgenv().autoupgrade then
            local args = {
                [1] = "Upgrade",
                [2] = "Clicks"
            }

            game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(unpack(args))
        end
        wait()
    end
end))

coroutine.resume(coroutine.create(function(v)
    while wait() do
        if getgenv().casetime then
            wait(10)
            if getgenv().casetime then
                local args = {
                    [1] = "Upgrade",
                    [2] = "CaseTime"
                }

                game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(unpack(args))
            end
        end
    end
end))

coroutine.resume(coroutine.create(function(v)
while wait() do
if getgenv().spamitems then
updateCurrentItems()
for itemName in pairs(items) do

local args = {
    [1] = "Equip",
    [2] = itemName
}

game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
end
end
end
end))



cf = false

coroutine.resume(coroutine.create(function(v)
    while true and wait(1) do
        if getgenv().cf then
            if cfamount and cfside then
                if cfside == "Heads" then
                    local args = {
                        [1] = "Coinflip",
                        [2] = cfamount,
                        [3] = true
                    }
                    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
                else
                    local args = {
                        [1] = "Coinflip",
                        [2] = cfamount,
                        [3] = false
                    }
                    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
                end
            end
        end
    end
end))

local VirtualUser=game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

coroutine.resume(coroutine.create(function(v)
    while wait() do
        if getgenv().autocase then
            local args = {
                [1] = getgenv().selectedcase
                }
            game:GetService("ReplicatedStorage").Events.OpenCase:InvokeServer(unpack(args))
        end
    end
end))

coroutine.resume(coroutine.create(function(v)
    game:GetService('RunService').RenderStepped:Connect(function()
        if getgenv().tixstock then
            local stock = game:GetService("ReplicatedStorage").GameCountdowns.Stock.Value
            if stock <= tonumber(buybelow) then
                local args = {
                    [1] = "Stock",
                    [2] = "Buy",
                    [3] = 1
                }

                game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
            else
                if stock >= tonumber(sellabove) then
                    local args = {
                        [1] = "Stock",
                        [2] = "Sell",
                        [3] = 1
                    }

                    game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
                end
            end
        end
    end)
end))

Players = game.Players

local function findPlayer(name)
    for _, Player in ipairs(Players:GetPlayers()) do
        if (string.lower(name) == string.sub(string.lower(Player.Name), 1, #name)) then
            return Player;
        end
    end
end

function spec()
    pcall(function()
        local plrtoview = Skid
        if plrtoview then
            local ptv = findPlayer(plrtoview)
            if ptv and game.Workspace[ptv.Name] then
                spectate = true  
                local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
                repeat view(ptv.Name) until not spectate or not game.Workspace[ptv.Name]
                Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
            end
        end
    end)
end

function view(plr)
    wait()
    if game.Players:FindFirstChild(plr) then
        if game.Players[plr].Character then
            game.Workspace:FindFirstChildWhichIsA('Camera').CameraSubject = game.Players:FindFirstChild(plr).Character.HumanoidRootPart
        else
            spectate = false
        end
    else
        spectate = false
    end
end

coroutine.resume(coroutine.create(function(v)
    while wait() do
        if getgenv().autotixexchange then
            if tonumber(game:GetService("ReplicatedStorage").GameCountdowns.ExchangeRate.Value) >= tonumber(getgenv().exchangeat) then
                playerTix45 = convertRobux(game:GetService("Players").LocalPlayer.PlayerGui.Gui.Hotbar.Stats.Tix.Amount.Text)
                local args = {
                    [1] = "Exchange",
                    [2] = playerTix45
                }

                game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer(unpack(args))
            end
        end
    end
end))

List.ChildRemoved:Connect(function(name)
    kay = name
    if getgenv().itemnotifyremove then
        local webhookcheck =
        is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
        secure_load and "s" or
        KRNL_LOADED and "k" or
        SONA_LOADED and "s" or
        "e"
        
        local url = getgenv().webhookurl
        
        local data = {
            ["content"] = "",
                ["embeds"] = {{
                    ["title"] = "__**REMOVED**__",
                    ["description"] = tostring(kay) .. " has been removed from your inventory", 
                    ["type"] = "rich",
                    ["color"] = tonumber(0x00000),
                }}
            }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        
        local headers = {
            ["content-type"] = "application/json"
        }
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
        print('Webhook sent. If it did not send, you did something wrong.')
    end
end)

List.ChildAdded:Connect(function(name)
    it305 = name
    if getgenv().itemnotifyadded then
        local webhookcheck =
        is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
        secure_load and "s" or
        KRNL_LOADED and "k" or
        SONA_LOADED and "s" or
        "e"
    
        local url = getgenv().webhookurl
    
        local data = {
            ["content"] = "",
                ["embeds"] = {{
                    ["title"] = "__**ADDED**__",
                    ["description"] = tostring(it305) .. " has been added to your inventory.", 
                    ["type"] = "rich",
                    ["color"] = tonumber(0x32CD32),
                }}
            }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
    
        local headers = {
            ["content-type"] = "application/json"
        }
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
    end
end)

local currentTime = 0

--User Local Variables
local username = game:GetService("Players").LocalPlayer.Name
local playerID = game:GetService("Players").LocalPlayer.userId
local rank

-- Currency Local Variables
local robuxTitle = "Robux"
local robuxImage = 6489711561
local robuxCurrent; local robuxStart; local robuxEnd; local robuxDiff; local robuxTable = {};

local tixTitle = "Tix"
local tixImage = 6489786101
local tixCurrent; local tixStart; local tixEnd; local tixDiff; local tixTable = {};

local fantasyTitle = "Value"
local fantasyImage = 7435829177
local fantasyCurrent; local fantasyStart; local fantasyEnd; local fantasyDiff; local fantasyTable = {};

function robux()
    return game.Players.LocalPlayer.Currencies:GetAttribute('Robux')
end

function tix()
    return game.Players.LocalPlayer.Currencies:GetAttribute('Tix')
end

-- Functions
local function addValues(table)
    local value = 0
    for i, v in next, table do
        value = value + v
    end
    return value
end
local function commaValue(amount)
    local formatted = amount
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
        if (k == 0) then
            break
        end
    end
    return formatted
end
local function currencyCurrent()
    local args = {[1] = "RAP", [2] = username}
    playerRAP = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
    local args = {[1] = "Value", [2] = username}
    playerValue = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
    robuxCurrent = robux()
    tixCurrent = tix()
    fantasyCurrent = playerValue
end
local function currencyBefore()
    local args = {[1] = "Value", [2] = username}
    playerValue = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
    fantasyStart = playerValue
    tixStart = tix()
    robuxStart = robux()
end
local function currencyAfter()
    local args = {[1] = "Value", [2] = username}
    playerValue = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
    fantasyEnd = playerValue
    tixEnd = tix()
    robuxEnd = robux()
end
local function currencyDifference()
    fantasyDiff = tonumber(fantasyEnd) - tonumber(fantasyStart)
    tixDiff = tonumber(tixEnd) - tonumber(tixStart)
    robuxDiff = tonumber(robuxEnd) - tonumber(robuxStart)

    table.insert(robuxTable, robuxDiff)
    table.insert(tixTable, tixDiff)
    table.insert(fantasyTable, fantasyDiff)
end

coroutine.resume(coroutine.create(function(v)
-- loop --
while getgenv().tracker do

    currencyCurrent()
    currencyBefore()

    wait(60)

    currentTime = currentTime + getgenv().waitTime

    currencyAfter()
    currencyDifference()
    local statTrackData = {
        ["content"] = "",
        ["embeds"] = {
            ----------------------------------------------------------------------------------------------- User Information
            {
                ["title"] = "__**Trade Tower Stat Tracker**__",
                ["type"] = "rich",
                ["color"] = tonumber(0x000000),
                ["thumbnail"] = {
                    ["url"] = ("https://www.roblox.com/bust-thumbnail/image?userId=%s&width=420&height=420&format=png"):format(playerID),
                },
                ["footer"] = {
                    ["text"] = ("Next update in %s seconds.."):format(waitTime),
                    ["icon_url"] = ("%s"):format("https://i.imgur.com/bsyz0PN.jpg")
                },
                ["fields"] = {
                    {
                        ["name"] = "__Username__",
                        ["value"] = ("||%s||"):format(username),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Robux__",
                        ["value"] = ("%s"):format(commaValue(robuxCurrent)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Tix__",
                        ["value"] = ("%s"):format(commaValue(tixCurrent)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__RAP__",
                        ["value"] = ("%s"):format(commaValue(playerRAP)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Value__",
                        ["value"] = ("%s"):format(commaValue(playerValue)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Version__",
                        ["value"] = ("%s"):format('v1.0'),
                        ["inline"] = true
                    }
                },
            },

            ----------------------------------------------------------------------------------------------- Coin Information
            {
                ["title"] = "__**Robux Statistics**__",
                ["type"] = "rich",
                ["color"] = tonumber(0x32CD32),
                ["thumbnail"] = {
                    ["url"] = ("https://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=110&ht=110&aid=%s"):format(robuxImage)
                },
                ["fields"] = {
                    {
                        ["name"] = ("__Last %s Seconds__"):format(waitTime),
                        ["value"] = commaValue(robuxDiff),
                        ["inline"] = true
                    },
                    {
                        ["name"] = ("__Session Total (%s minutes)__"):format(math.round(currentTime/60)),
                        ["value"] = commaValue(addValues(robuxTable)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Average Per Minute__",
                        ["value"] = commaValue(math.round(addValues(robuxTable) / math.round(currentTime/60))),
                        ["inline"] = true
                    }
                }
            },
            ----------------------------------------------------------------------------------------------- Diamonds Information
            {
                ["title"] = "__**Tix Statistics**__",
                ["type"] = "rich",
                ["color"] = tonumber(0xFFFF00),
                ["thumbnail"] = {
                    ["url"] = ("https://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=110&ht=110&aid=%s"):format(tixImage)
                },
                ["fields"] = {
                    {
                        ["name"] = ("__Last %s Seconds__"):format(waitTime),
                        ["value"] = commaValue(tixDiff),
                        ["inline"] = true
                    },
                    {
                        ["name"] = ("__Session Total (%s minutes)__"):format(math.round(currentTime/60)),
                        ["value"] = commaValue(addValues(tixTable)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Average Per Minute__",
                        ["value"] = commaValue(math.round(addValues(tixTable) / math.round(currentTime/60))),
                        ["inline"] = true
                    },
                }
            },
            ----------------------------------------------------------------------------------------------- Fantasy Coins Information
            {
                ["title"] = "__**Value Statistics**__",
                ["type"] = "rich",
                ["color"] = tonumber(0xFFFFFF),
                ["thumbnail"] = {
                    ["url"] = ("https://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=110&ht=110&aid=%s"):format(fantasyImage)
                },
                ["fields"] = {
                    {
                        ["name"] = ("__Last %s Seconds__"):format(waitTime),
                        ["value"] = commaValue(fantasyDiff),
                        ["inline"] = true
                    },
                    {
                        ["name"] = ("__Session Total (%s minutes)__"):format(math.round(currentTime/60)),
                        ["value"] = commaValue(addValues(fantasyTable)),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "__Average Per Minute__",
                        ["value"] = commaValue(math.round(addValues(fantasyTable) / math.round(currentTime/60))),
                        ["inline"] = true
                    }
                }
            }
        }
    }
    
    local statTrackEmbedPush = {
        Url = getgenv().webhookurl,
        Method = "Post",
        Headers = {["content-type"] = "application/json"},
        Body = game:GetService("HttpService"):JSONEncode(statTrackData),
    }
    if syn then
        syn.request(statTrackEmbedPush)
    else
        request(statTrackEmbedPush)
    end
end
end))

local mainpage = venyx:addPage("Auto Farm", 6489711561)
local main = mainpage:addSection("Auto")

local jackpotpage = venyx:addPage("Auto Jackpot", 6527447356)
local jackpot = jackpotpage:addSection("Auto Jackpot")

local auctionpage = venyx:addPage("Auto Auction", 6486125159)
local autoauction = auctionpage:addSection("Auto Auction")

crashpage = venyx:addPage("Auto Crash/CF", 6651113272)
autocrash = crashpage:addSection("Auto Crash/Coinflip")

stockpage = venyx:addPage("Auto Stock", 7240616535)
local autotixstock = stockpage:addSection("Auto Tix Stock")

targetpage = venyx:addPage("Target", 5012544693)
local target = targetpage:addSection("Target")

miscpage = venyx:addPage("Misc", 6489759757)
local misc = miscpage:addSection("Miscellaneous")

apartpage = venyx:addPage("Apartments", 6489721802)
local apartments = apartpage:addSection("TP to Apartments")

webhookpage = venyx:addPage("Webhook", 6489722998)
local webhook = webhookpage:addSection("Webhook Stuff")

main:addToggle("Auto click",nil,function(v)
    getgenv().autoclick = v
    print(v)
end)

main:addToggle("Auto upgrade: Tradebucks",autoupgradetradebucks,function(v)
    getgenv().autoupgrade = v
    autoupgradetradebucks = v
end)

main:addToggle("Auto upgrade: Case time",autoupgradecasetime,function(v)
    getgenv().casetime = v
    autoupgradecasetime = v
end)

main:addToggle("Auto case",autocase,function(v)
    getgenv().autocase = v
end)
main:addDropdown("Select Case",{"Starter", "Noobie", "Stepping", "Learning", "Funding" ,"Business", "Legendary", "Marcellus", "Famous", "Mythic", "Eirene", "Aeschylus", "Olysseus"},function(value)
    getgenv().selectedcase = value
end)

main:addToggle("Auto sell",autosell,function(v)
    getgenv().autosell = v
    autosell = v
    sellCurrentItems()
end)

main:addToggle("Autosell: Pure rap",autosellpurerap,function(v)
    getgenv().pureraponly = v
    autosellpurerap = v
    sellCurrentItems()
end)

main:addSlider("Max price to autosell",autosellmaxprice,1,50000,function(v)
    maxPrice = v
    autosellmaxprice = v
    sellCurrentItems()
end)

main:addToggle("Auto collect supply drops",autocollectsupplydrops,function(v)
    getgenv().autopickup = v
    autocollectsupplydrops = v
end)

main:addToggle("Auto Tix Exchange",autotixexchange,function(v)
    getgenv().autotixexchange = v
    autotixexchange = v
end)

main:addTextbox('Exchange at: ',exchangeat,function(v, focusLost)
    if focusLost then
        getgenv().exchangeat = v
        exchangeat = v
    end
end)

main:addToggle("Auto collect presents",autocollectsupplydrops,function(v)
    getgenv().autocollectpresents = v
end)

main:addButton('Collect all snowmans',function()
    for _,v in pairs(game:GetService("Workspace").Snowmen:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(0.2)
        fireclickdetector(v.ClickDetector)
        wait()
    end
end)

misc:addToggle("Disable AFK",disableafk,function(v)
    getgenv().spamafk = v
    disableafk = v
end)

misc:addToggle("Kick when a mod joins",kickwhenamodjoins,function(v)
    getgenv().autokick = v
    kickwhenamodjoins = v
end)

misc:addToggle("Serverhop when a mod joins",kickwhenamodjoins,function(v)
    getgenv().serverhopwhenamodjoins = v
    serverhopwhenamodjoins = v
end)

misc:addToggle("Spam Equip/Unequip Items (USE W/ CAUTION)",nil,function(v)
    getgenv().spamitems = v
end)

misc:addButton("Anti Lag",function(v)
    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end)
misc:addButton("Invite all players to apartment",function()
    for _,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            local args = {
                [1] = "Invite",
                [2] = v.Name
            }

            game:GetService("ReplicatedStorage").Events.ApartmentsActions:InvokeServer(unpack(args))
            wait()
        end
    end
end)

misc:addButton("Self Destruct",function()
    getgenv().autoclick = false
    getgenv().autoupgrade = false
    getgenv().autoCase = false
    getgenv().autosell = false
    getgenv().pureraponly = false
    getgenv().autopickup = false
    getgenv().antiafk = false
    getgenv().spamafkk = false
    getgenv().spamafk = false
    getgenv().autokick = false
    getgenv().autojackpot = false
    getgenv().quicksearch = false
    getgenv().tixstock = false
    getgenv().automarketplace = false
    getgenv().autobidtoauction = false
    getgenv().crash = false
    getgenv().cf = false
    getgenv().selfdestruct = true
    local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
    Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
    spectate = false
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "Zen X - Trade Tower (AUTO TRADE IN DEVELOPMENT, DONT USE)" then
            v:Destroy()
        end
    end
    if not player.Character:FindFirstChild('RightFoot') then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(560, -53, -674)
        wait(0.2)
        game:GetService("Workspace")[game.Players.LocalPlayer.Name].Head:Destroy()
    end
end)

jackpot:addToggle("Auto jackpot",autojackpot,function(v)
    getgenv().autojackpot = v
    autojackpot = v
end)

jackpot:addToggle("Quick search",quicksearch,function(v)
    getgenv().quicksearch = v
    quicksearch = v
end)

jackpot:addDropdown("Select Jackpot Tier",{"1 (250k Cap)", "2 (5M Cap)", "3 (INF Cap)"},function(jackpotTierString)
    jackpotTier = tonumber(jackpotTierString:sub(1, 1))
end)

jackpot:addSlider("Min. Jackpot Chance to Join",minjackpotchance,1,100,function(t)
    minJackpotChance = t
    minjackpotchance = t
end)

if webhookurl ~= nil then
    showurl = webhookurl
else
    showurl = "URL"
end

webhook:addToggle("Send Webhooks",sendwebhooks,function(v)
    getgenv().sendwebhooks = v
    sendwebhooks =  v
end)

webhook:addTextbox("Webook url: ",showurl,function(v)
    getgenv().webhookurl = v
end)

webhook:addToggle("Item Notify: Added",itemnotifyadded,function(v)
    getgenv().itemnotifyadded = v
    itemnotifyadded = v
end)

webhook:addToggle("Item Notify: Removed",itemnotifyremove,function(v)
    getgenv().itemnotifyremove = v
    itemnotifyremove = v
end)

webhook:addToggle("Stat Tracker (1)",stattracker,function(v)
    getgenv().stattracker = v
    stattracker = v
end)

webhook:addToggle("Stat Tracker (2)",stattrackerr,function(v)
    getgenv().stattrackerr = v
    stattrackerr = v
end)

webhook:addToggle("Mod Notifier",modnotifier,function(v)
    getgenv().modnotifierr = v
    modnotifier = v
end)

autoauction:addToggle("Auto Bid",autobid,function(v)
    getgenv().autobidtoauction = v
    autobid = v
end)

autoauction:addSlider("Max. % of value to bid",percenttobid,60,200,function(v)
    maxPercentOfValueToBid = v/100
    percenttobid = v
end)



    autocrash:addToggle("Auto Crash",autocrash,function(v)
        getgenv().crash = v
        autocrash = v
    end)

    autocrash:addTextbox("Amount",crashamount,function(v)
        crashamount = v
        crashamount = v
    end)

    autocrash:addTextbox("Payout At (ex. 1.23)",payoutat,function(v)
        payout = v
        payoutat = v
    end)

    autocrash:addToggle("Auto Coinflip",autocf,function(v)
        getgenv().cf = v
        autocf = v
    end)

    autocrash:addTextbox("Amount",cfamount,function(v)
        cfamount = v
        cfamount = v
        spawn(function()
            Notification.Notify("COINFLIP", "Set flip amount to " .. v, "rbxassetid://4914902889");
        end)
    end)

    autocrash:addDropdown("Select Side",{"Heads", "Tails"},function(v)
        cfside = v
        cfside = v
    end)

autotixstock:addToggle('Auto Tix Stock',autotixstock,function(v)
    getgenv().tixstock = v
    autotixstock = v
end)

autotixstock:addTextbox("Buy at/below","",function(v)
    buybelow = v
    buyat = v
    spawn(function()
        Notification.Notify("BUYING AT", "Set buying at to: " .. v, "rbxassetid://4914902889");
    end)
end)

autotixstock:addTextbox("Sell at/above","",function(v)
    sellabove = v
    sellat = v
    spawn(function()
        Notification.Notify("SELLING AT", "Set selling at to: " .. v, "rbxassetid://4914902889");
    end)
end)

target:addTextbox("Target","",function(value, focusLost)
    if focusLost then
    for _, v in pairs(game:GetService("Players"):GetChildren()) do
        if (string.sub(string.lower(v.Name), 1, string.len(value))) == string.lower(value) then
            Skid = v.Name
        end
    end
    spawn(function()
        Notification.Notify("SELECTED", "Set target to " .. Skid, "rbxassetid://4914902889");
    end)
end
end)

target:addButton("Spectate", function()
    pcall(function() spec() end)
end)

target:addButton("Unspectate", function()
    local Camera = game.Workspace:FindFirstChildWhichIsA('Camera')
    Camera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
    spectate = false
end)

target:addButton("Information",function()
    local args = {[1] = "RAP", [2] = Skid}
    local playerRAP = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
    local args = {[1] = "Value", [2] = Skid}
    local playerValue = game:GetService("ReplicatedStorage").Events.ReturnData:InvokeServer(unpack(args))
        venyx:Notify(Skid, "RAP: " .. playerRAP .. " | Value: " .. playerValue .. "\nRobux: " .. game.Players[Skid].Currencies:GetAttribute('Robux') .. " | Tix:" .. game.Players[Skid].Currencies:GetAttribute('Tix') .. "\nCases opened: " .. game.Players[Skid].Statistics:GetAttribute('Cases') .. " | Jackpots won: " .. game.Players[Skid].Statistics:GetAttribute('JackpotsWon'));
end)

target:addButton("Teleport",function()
    player.Character.HumanoidRootPart.CFrame = game.Players[Skid].Character.HumanoidRootPart.CFrame
end)

misc:addButton("Rejoin",function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

misc:addButton("Free Korblox (USE W/ CAUTION)",function()
    local Leg = 'Right' 
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        char[Leg..'UpperLeg']:Destroy()
        char[Leg..'LowerLeg']:Destroy()
        char[Leg..'Foot']:Destroy()
        else
            char[Leg..' Leg']:Destroy()
    end
end)

misc:addButton("Free Headless (Client Sided)",function()
    game.Workspace[game.Players.LocalPlayer.Name].Head.MeshId = 134082579
end)

misc:addButton("Save Settings",function()
    Save()
end)

FLYSPEED = 20

misc:addButton("Fly // X to toggle (USE W/ CAUTION)", function()
    local plr = game.Players.LocalPlayer
    local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
    local mouse = plr:GetMouse()
    localplayer = plr
    if workspace:FindFirstChild("Core") then
        workspace.Core:Destroy()
    end
    local Core = Instance.new("Part")
    Core.Name = "Core"
    Core.Size = Vector3.new(0.05, 0.05, 0.05)
    spawn(function()
        Core.Parent = workspace
        local Weld = Instance.new("Weld", Core)
        Weld.Part0 = Core
        Weld.Part1 = localplayer.Character.LowerTorso
        Weld.C0 = CFrame.new(0, 0, 0)
    end)
    workspace:WaitForChild("Core")
    local torso = workspace.Core
    flying = true
    local speed=FLYSPEED
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
        gyro.cframe = torso.CFrame
        repeat
            wait()
            Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=FLYSPEED
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed
                end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed
            end
            if speed>FLYSPEED then
                speed=FLYSPEED
            end
            pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
            until flying == false
            if gyro then gyro:Destroy() end
            if pos then pos:Destroy() end
            flying=false
                Humanoid.PlatformStand=false
                speed=FLYSPEED
            end
            e1=mouse.KeyDown:connect(function(key)
                if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
                if key=="w" then
                    keys.w=true
                elseif key=="s" then
                    keys.s=true
                elseif key=="a" then
                    keys.a=true
                elseif key=="d" then
                    keys.d=true
                elseif key=="x" then
                    if flying==true then
                        flying=false
                    else
                        flying=true
                        start()
                    end
                end
            end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
    start()
end)

local plrTable = {}
for i,v in pairs(game.Players:GetChildren()) do
    if game.Workspace.Apartments:FindFirstChild(v.Name) then
        if game.Workspace.Apartments[v.Name]:FindFirstChild("!basepart") then
            table.insert(plrTable, v.Name)
        end
    end
end
lol = apartments:addDropdown('Apartments',plrTable,function(v)
    selectedplayerr = v
    print(selectedplayerr)
end)

apartments:addButton('Teleport',function(v)
    if selectedplayerr then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game.Workspace.Apartments[selectedplayerr]['!basepart'].CFrame * CFrame.new(0, 5, 0))
    end
end)

apartments:addButton('Update Dropdown',function(v)
    local plrTable = {}
    for i,v in pairs(game.Players:GetChildren()) do
        if game.Workspace.Apartments:FindFirstChild(v.Name) then
            if game.Workspace.Apartments[v.Name]:FindFirstChild("!basepart") then
                table.insert(plrTable, v.Name)
            end
        end
    end
    apartments:updateDropdown(lol,'Apartments',plrTable,function(v)
    end)
end)
misc:addKeybind("Toggle Keybind", Enum.KeyCode.RightShift, function()
    venyx:toggle()
end)

wait(0.1)
spawn(function()
    Notification.Notify("LOADED", "Join the discord! Automatically copied link", "rbxassetid://4914902889");
end)

function comma_value(amount)
    local formatted = amount
    while true do  
      formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
      if (k==0) then
        break
      end
    end
    return formatted
  end
