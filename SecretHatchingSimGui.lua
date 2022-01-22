local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Secret Hatching Simulator 2")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedEgg = "Common Egg"
Egg = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    if not table.find(Egg,v.Name) then
        table.insert(Egg,v.Name)
    end
end

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

f:Dropdown("Select Egg",Egg,true,function(a)
    SelectedEgg = a
end)
 
f:Toggle("AutoBuyEgg",function(bool)
    shared.toggle = bool
    AutoBuyEgg = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Maxgat5") then
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Maxgat5"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

game:GetService('RunService').Stepped:connect(function()
    spawn(function()
        if AutoClicker == true then
            if game:GetService("Players").LocalPlayer.PlayerGui.aaa.CoinsNAutoCoins.Clicks:FindFirstChild("Click") then
                game:GetService("Players").LocalPlayer.PlayerGui.aaa.CoinsNAutoCoins.Clicks.Click.Name = "Click1"
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.aaa.CoinsNAutoCoins.Clicks:FindFirstChild("Click1") then
                game:GetService("Players").LocalPlayer.PlayerGui.aaa.CoinsNAutoCoins.Clicks.Click1.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Maxgat5
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Maxgat5:FindFirstChild("Click1") then
                game:service'VirtualUser':ClickButton1(Vector2.new())
            end
        else
            if game:GetService("Players").LocalPlayer.PlayerGui.Maxgat5:FindFirstChild("Click1") then
                game:GetService("Players").LocalPlayer.PlayerGui.Maxgat5.Click1.Parent = game:GetService("Players").LocalPlayer.PlayerGui.aaa.CoinsNAutoCoins.Clicks
            end
        end
    end)
    
    spawn(function()
        if AutoBuyEgg == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Eggs[SelectedEgg].View.CFrame.Position + Vector3.new(0,10,0))
            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer(SelectedEgg,"Buy1")
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end 
    end)
end)
