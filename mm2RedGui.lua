
local SlaughterHouse = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local ClickTp = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local HeadTp = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local Sprint = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local GrabCoins = Instance.new("TextButton")
local God = Instance.new("TextButton")
local TeleportLobby = Instance.new("TextButton")
local GMS = Instance.new("TextButton")
local WS = Instance.new("TextButton")
local BTD = Instance.new("TextButton")
local BTG = Instance.new("TextButton")
local BTC = Instance.new("TextButton")
local BT = Instance.new("TextButton")
local LOCK = Instance.new("TextButton")
local Value = Instance.new("TextBox")
local Open = Instance.new("TextButton")
 
-- Properties
 
SlaughterHouse.Name = "SlaughterHouse"
SlaughterHouse.Parent = game.Players.LocalPlayer.PlayerGui
SlaughterHouse.Enabled = true
SlaughterHouse.ResetOnSpawn = false
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = SlaughterHouse
MainFrame.BackgroundColor3 = Color3.new(0.580392, 0, 0)
MainFrame.BorderColor3 = Color3.new(0.223529, 0.34902, 0.439216)
MainFrame.BorderSizePixel = 4
MainFrame.Position = UDim2.new(0, 800, 0, 200)
MainFrame.Size = UDim2.new(0, 500, 0, 300)
 
Noclip.Name = "Noclip"
Noclip.Parent = MainFrame
Noclip.BackgroundColor3 = Color3.new(0.639216, 0, 0)
Noclip.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
Noclip.BorderSizePixel = 5
Noclip.Position = UDim2.new(0, 350, 0, 75)
Noclip.Size = UDim2.new(0, 25, 0, 25)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = ""
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14
 
TextLabel.Parent = Noclip
TextLabel.BackgroundColor3 = Color3.new(0.666667, 0, 0)
TextLabel.BorderSizePixel = 2
TextLabel.Position = UDim2.new(0, 35, 0, 0)
TextLabel.Size = UDim2.new(0, 75, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Noclip [F]"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 50
TextLabel.TextWrapped = true
 
ClickTp.Name = "ClickTp"
ClickTp.Parent = MainFrame
ClickTp.BackgroundColor3 = Color3.new(0.639216, 0, 0)
ClickTp.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
ClickTp.BorderSizePixel = 5
ClickTp.Position = UDim2.new(0, 350, 0, 125)
ClickTp.Size = UDim2.new(0, 25, 0, 25)
ClickTp.Font = Enum.Font.SourceSans
ClickTp.Text = ""
ClickTp.TextColor3 = Color3.new(1, 1, 1)
ClickTp.TextSize = 14
 
TextLabel_2.Parent = ClickTp
TextLabel_2.BackgroundColor3 = Color3.new(0.666667, 0, 0)
TextLabel_2.BorderSizePixel = 2
TextLabel_2.Position = UDim2.new(0, 35, 0, 0)
TextLabel_2.Size = UDim2.new(0, 75, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "ClickTp [R]"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 50
TextLabel_2.TextWrapped = true
 
HeadTp.Name = "HeadTp"
HeadTp.Parent = MainFrame
HeadTp.BackgroundColor3 = Color3.new(0.639216, 0, 0)
HeadTp.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
HeadTp.BorderSizePixel = 5
HeadTp.Position = UDim2.new(0, 350, 0, 25)
HeadTp.Size = UDim2.new(0, 25, 0, 25)
HeadTp.Font = Enum.Font.SourceSans
HeadTp.Text = ""
HeadTp.TextColor3 = Color3.new(1, 1, 1)
HeadTp.TextSize = 14
 
TextLabel_3.Parent = HeadTp
TextLabel_3.BackgroundColor3 = Color3.new(0.666667, 0, 0)
TextLabel_3.BorderSizePixel = 2
TextLabel_3.Position = UDim2.new(0, 35, 0, 0)
TextLabel_3.Size = UDim2.new(0, 100, 0, 25)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Head Tp [Tab]"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 50
TextLabel_3.TextWrapped = true
 
Sprint.Name = "Sprint"
Sprint.Parent = MainFrame
Sprint.BackgroundColor3 = Color3.new(0.639216, 0, 0)
Sprint.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
Sprint.BorderSizePixel = 5
Sprint.Position = UDim2.new(0, 350, 0, 175)
Sprint.Size = UDim2.new(0, 25, 0, 25)
Sprint.Font = Enum.Font.SourceSans
Sprint.Text = ""
Sprint.TextColor3 = Color3.new(1, 1, 1)
Sprint.TextSize = 14
 
TextLabel_4.Parent = Sprint
TextLabel_4.BackgroundColor3 = Color3.new(0.666667, 0, 0)
TextLabel_4.BorderSizePixel = 2
TextLabel_4.Position = UDim2.new(0, 35, 0, 0)
TextLabel_4.Size = UDim2.new(0, 100, 0, 25)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "Sprint[SHIFT]"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 50
TextLabel_4.TextWrapped = true
 
GrabCoins.Name = "GrabCoins"
GrabCoins.Parent = MainFrame
GrabCoins.BackgroundColor3 = Color3.new(0.639216, 0, 0)
GrabCoins.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
GrabCoins.BorderSizePixel = 4
GrabCoins.Position = UDim2.new(0, 10, 0, 20)
GrabCoins.Size = UDim2.new(0, 150, 0, 35)
GrabCoins.Font = Enum.Font.SourceSans
GrabCoins.Text = "Grab Coins"
GrabCoins.TextColor3 = Color3.new(1, 1, 1)
GrabCoins.TextScaled = true
GrabCoins.TextSize = 14
GrabCoins.TextWrapped = true
 
God.Name = "God"
God.Parent = MainFrame
God.BackgroundColor3 = Color3.new(0.639216, 0, 0)
God.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
God.BorderSizePixel = 4
God.Position = UDim2.new(0, 10, 0, 70)
God.Size = UDim2.new(0, 150, 0, 35)
God.Font = Enum.Font.SourceSans
God.Text = "God Mode"
God.TextColor3 = Color3.new(1, 1, 1)
God.TextScaled = true
God.TextSize = 14
God.TextWrapped = true
 
TeleportLobby.Name = "TeleportLobby"
TeleportLobby.Parent = MainFrame
TeleportLobby.BackgroundColor3 = Color3.new(0.639216, 0, 0)
TeleportLobby.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
TeleportLobby.BorderSizePixel = 4
TeleportLobby.Position = UDim2.new(0, 10, 0, 120)
TeleportLobby.Size = UDim2.new(0, 150, 0, 35)
TeleportLobby.Font = Enum.Font.SourceSans
TeleportLobby.Text = "Tp To Lobby"
TeleportLobby.TextColor3 = Color3.new(1, 1, 1)
TeleportLobby.TextScaled = true
TeleportLobby.TextSize = 14
TeleportLobby.TextWrapped = true
 
GMS.Name = "GMS"
GMS.Parent = MainFrame
GMS.BackgroundColor3 = Color3.new(0.639216, 0, 0)
GMS.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
GMS.BorderSizePixel = 4
GMS.Position = UDim2.new(0, 10, 0, 170)
GMS.Size = UDim2.new(0, 150, 0, 35)
GMS.Font = Enum.Font.SourceSans
GMS.Text = "Get Murderer And Sheriff"
GMS.TextColor3 = Color3.new(1, 1, 1)
GMS.TextScaled = true
GMS.TextSize = 14
GMS.TextWrapped = true
 
WS.Name = "WS"
WS.Parent = MainFrame
WS.BackgroundColor3 = Color3.new(0.639216, 0, 0)
WS.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
WS.BorderSizePixel = 4
WS.Position = UDim2.new(0, 10, 0, 220)
WS.Size = UDim2.new(0, 150, 0, 35)
WS.Font = Enum.Font.SourceSans
WS.Text = "Walkspeed"
WS.TextColor3 = Color3.new(1, 1, 1)
WS.TextScaled = true
WS.TextSize = 14
WS.TextWrapped = true
 
BTD.Name = "BTD"
BTD.Parent = MainFrame
BTD.BackgroundColor3 = Color3.new(0.639216, 0, 0)
BTD.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
BTD.BorderSizePixel = 4
BTD.Position = UDim2.new(0, 180, 0, 170)
BTD.Size = UDim2.new(0, 150, 0, 35)
BTD.Font = Enum.Font.SourceSans
BTD.Text = "Delete Tool"
BTD.TextColor3 = Color3.new(1, 1, 1)
BTD.TextScaled = true
BTD.TextSize = 14
BTD.TextWrapped = true
 
BTG.Name = "BTG"
BTG.Parent = MainFrame
BTG.BackgroundColor3 = Color3.new(0.639216, 0, 0)
BTG.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
BTG.BorderSizePixel = 4
BTG.Position = UDim2.new(0, 180, 0, 20)
BTG.Size = UDim2.new(0, 150, 0, 35)
BTG.Font = Enum.Font.SourceSans
BTG.Text = "Grab Tool"
BTG.TextColor3 = Color3.new(1, 1, 1)
BTG.TextScaled = true
BTG.TextSize = 14
BTG.TextWrapped = true
 
BTC.Name = "BTC"
BTC.Parent = MainFrame
BTC.BackgroundColor3 = Color3.new(0.639216, 0, 0)
BTC.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
BTC.BorderSizePixel = 4
BTC.Position = UDim2.new(0, 180, 0, 70)
BTC.Size = UDim2.new(0, 150, 0, 35)
BTC.Font = Enum.Font.SourceSans
BTC.Text = "Clone Tool"
BTC.TextColor3 = Color3.new(1, 1, 1)
BTC.TextScaled = true
BTC.TextSize = 14
BTC.TextWrapped = true
 
BT.Name = "BT"
BT.Parent = MainFrame
BT.BackgroundColor3 = Color3.new(0.639216, 0, 0)
BT.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
BT.BorderSizePixel = 4
BT.Position = UDim2.new(0, 180, 0, 120)
BT.Size = UDim2.new(0, 150, 0, 35)
BT.Font = Enum.Font.SourceSans
BT.Text = "Btools"
BT.TextColor3 = Color3.new(1, 1, 1)
BT.TextScaled = true
BT.TextSize = 14
BT.TextWrapped = true
 
LOCK.Name = "LOCK"
LOCK.Parent = MainFrame
LOCK.BackgroundColor3 = Color3.new(0.639216, 0, 0)
LOCK.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
LOCK.BorderSizePixel = 4
LOCK.Position = UDim2.new(0, 180, 0, 220)
LOCK.Size = UDim2.new(0, 150, 0, 35)
LOCK.Font = Enum.Font.SourceSans
LOCK.Text = "Unlock All"
LOCK.TextColor3 = Color3.new(1, 1, 1)
LOCK.TextScaled = true
LOCK.TextSize = 14
LOCK.TextWrapped = true
 
Value.Name = "Value"
Value.Parent = MainFrame
Value.BackgroundColor3 = Color3.new(0.639216, 0, 0)
Value.BorderColor3 = Color3.new(0.176471, 0.27451, 0.345098)
Value.BorderSizePixel = 4
Value.Position = UDim2.new(0, 340, 0, 220)
Value.Size = UDim2.new(0, 150, 0, 35)
Value.Font = Enum.Font.SourceSans
Value.Text = "Value"
Value.TextColor3 = Color3.new(1, 1, 1)
Value.TextScaled = true
Value.TextSize = 14
Value.TextWrapped = true
 
Open.Name = "Open"
Open.Parent = SlaughterHouse
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BorderSizePixel = 4
Open.Position = UDim2.new(0, 0, 0, 500)
Open.Size = UDim2.new(0, 100, 0, 25)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
 
 
 
Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()
UserInputService = game:GetService('UserInputService')
noclip = false
ctp = false
headTp = false
sprint = false
 
 
Noclip.MouseButton1Down:connect(function()
    print("hi")
    if noclip == false then
        noclip = true
        Noclip.BackgroundColor3 = Color3.new(0, 0, 0)
    else
        noclip = false
        Noclip.BackgroundColor3 = MainFrame.BackgroundColor3
 
    end
end)
 
   
ClickTp.MouseButton1Click:connect(function()
    if ctp == false then
        ctp = true
        ClickTp.BackgroundColor3 = Color3.new(0, 0, 0)
    else
        ctp = false
    ClickTp.BackgroundColor3 = MainFrame.BackgroundColor3
    end
end)
 
HeadTp.MouseButton1Click:connect(function()
    if headTp == false then
        headTp = true
        script.Parent.HeadTp.BackgroundColor3 = Color3.new(0, 0, 0)
    else
        headTp = false
    script.Parent.HeadTp.BackgroundColor3 = MainFrame.BackgroundColor3
    end
end)
 
 
 
BTD.MouseButton1Click:connect(function()
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "Hammer"
end)
 
 
BTC.MouseButton1Click:connect(function()
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "Clone"
end)
 
 
BTG.MouseButton1Click:connect(function()
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "GameTool"
end)
 
 
BT.MouseButton1Click:connect(function()
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "Hammer"
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "Clone"
 
local tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
tool.BinType = "GameTool"
end)
 
WS.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(script.Parent.Value.Text)
end)
 
 
LOCK.MouseButton1Click:connect(function()
function unlockParts(root)
for _,v in pairs(root:GetChildren()) do
if v:IsA("Part") then
v.Locked = false
end
unlockParts(v)
end
end
unlockParts(game.Workspace)
end)
 
TeleportLobby.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-109.56, 150, -11.75))
end)
   
GrabCoins.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace:GetChildren()) do
local f = v:FindFirstChild("CoinContainer")
local q = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
if q and f then
for i,c in pairs(f:GetChildren()) do
c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
end
end
end
end)
   
God.MouseButton1Down:connect(function()
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)
 
GMS.MouseButton1Down:connect(function()
    local Players = game.Players:GetChildren()
for i,v in pairs(Players) do
 
if v:FindFirstChild("Backpack") or v:FindFirstChild("Character")then
   
if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
   
   
local BBG = Instance.new("BillboardGui")
--[[BBG.Adornee = BBG.Parent
BBG.Size = UDim2.new(0, 25, 0, 25)
BBG.AlwaysOnTop = true
local BBGF = Instance.new("Frame", BBG)
BBGF.Size = UDim2.new(0, 25, 0, 25)
BBGF.BackgroundColor3 = Color3.new(255, 0, 0)]]
 
        BBG.Parent = v.Character.Head
        BBG.Adornee = v.Character.Head
        BBG.Size = UDim2.new(2, 0, 1, 0)
        BBG.StudsOffset = Vector3.new(-2.5, 6, 0)
        local text = Instance.new("TextLabel", BBG)
        text.Text = "Murderer"
        text.Size = UDim2.new(4, 0, 8, 0)
        text.Position = UDim2.new(0, 0, 0, 0)
        text.TextScaled = true
        text.TextColor3 = Color3.new(255, 0, 0)
        text.BackgroundTransparency = 1
 
 
end
 
end
end
 
 
for i,v in pairs(Players) do
 
if v:FindFirstChild("Backpack") or v:FindFirstChild("Character")then
   
if v.Backpack:FindFirstChild("Revolver") or v.Character:FindFirstChild("Revolver") then
   
   
local BBG = Instance.new("BillboardGui")
--[[BBG.Adornee = BBG.Parent
BBG.Size = UDim2.new(0, 25, 0, 25)
BBG.AlwaysOnTop = true
local BBGF = Instance.new("Frame", BBG)
BBGF.Size = UDim2.new(0, 25, 0, 25)
BBGF.BackgroundColor3 = Color3.new(255, 0, 0)]]
 
        BBG.Parent = v.Character.Head
        BBG.Adornee = v.Character.Head
        BBG.Size = UDim2.new(2, 0, 1, 0)
        BBG.StudsOffset = Vector3.new(-2.5, 6, 0)
        local text = Instance.new("TextLabel", BBG)
        text.Text = "Sheriff"
        text.Size = UDim2.new(4, 0, 8, 0)
        text.Position = UDim2.new(0, 0, 0, 0)
        text.TextScaled = true
        text.TextColor3 = Color3.new(0, 0, 255)
        text.BackgroundTransparency = 1
       
 
end
 
end
end
end)
   
           
Sprint.MouseButton1Click:connect(function()
    if sprint == false then
    sprint = true
    Sprint.BackgroundColor3 = Color3.new(0, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    else
    sprint = false
    Sprint.BackgroundColor3 = MainFrame.BackgroundColor3
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    end
end)
 
 
wait()
 
game.Players.LocalPlayer.Character.HumanoidRootPart.Touched:connect(function(part)
    if noclip == true then
        part.CanCollide = false
        wait(1)
        part.CanCollide = true
    end
end)
 
game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
    wait(6)
game.Players.LocalPlayer.Character.HumanoidRootPart.Touched:connect(function(part)
    if Noclip == true then
        part.CanCollide = false
        wait(1)
        part.CanCollide = true
    end
end)
end)
 
 
 
 
------------------Hotkeys---------------------
 
UserInputService.InputBegan:connect(function(Input, Processed)
   
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.F then
if noclip == false then
    noclip = true
    Noclip.BackgroundColor3 = Color3.new(0, 0, 0)
else
    noclip = false
    Noclip.BackgroundColor3 = MainFrame.BackgroundColor3
end
end
if Input.KeyCode == Enum.KeyCode.R then
if ctp == false then
    ctp = true
    ClickTp.BackgroundColor3 = Color3.new(0, 0, 0)
else
    ctp = false
    ClickTp.BackgroundColor3 = MainFrame.BackgroundColor3
end
end
 
 
 
if Input.KeyCode == Enum.KeyCode.Tab then
if headTp == false then
    headTp = true
    HeadTp.BackgroundColor3 = Color3.new(0, 0, 0)
else
    headTp = false
    HeadTp.BackgroundColor3 = MainFrame.BackgroundColor3
end
end
 
if Input.KeyCode == Enum.KeyCode.LeftShift then
if sprint == false then
    sprint = true
    Sprint.BackgroundColor3 = Color3.new(0, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
else
    sprint = false
    Sprint.BackgroundColor3 = MainFrame.BackgroundColor3
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end
 
 
 
end
end)
 
 
 
 
 
 
 
 
 
-------------------------------------------
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Mouse.Button1Down:connect(function()
if  ctp == true then
Player.Character:MoveTo(Mouse.Hit.p)
end
end)
 
 
 
 
 
for i = 1, math.huge, 1 do
wait(0.5)
for i,v in pairs(game.Players:GetChildren())do
    if v.Name ~= game.Players.LocalPlayer.Name and HeadTp == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-109.56, 150, -11.75))
v.Character.Head.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-1,2)
end
end
end
