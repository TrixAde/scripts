-- Objects

local MysterySolved = Instance.new("ScreenGui")
local Topframe = Instance.new("Frame")
local Mainframe = Instance.new("Frame")
local NameBox = Instance.new("TextBox")
local NumberBox = Instance.new("TextBox")
local GotoPlayer = Instance.new("TextButton")
local GotoSpawn = Instance.new("TextButton")
local Godmode = Instance.new("TextButton")
local LoopGodmode = Instance.new("TextButton")
local TPCoins = Instance.new("TextButton")
local BringGun = Instance.new("TextButton")
local Clip = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local LoopUnlockWS = Instance.new("TextButton")
local UnlockWS = Instance.new("TextButton")
local NormalGrav = Instance.new("TextButton")
local LowGrav = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local minititle = Instance.new("TextLabel")

-- Properties

MysterySolved.Name = "MysterySolved"
MysterySolved.Parent = game.Players.LocalPlayer.PlayerGui

Topframe.Name = "Topframe"
Topframe.Parent = MysterySolved
Topframe.BackgroundColor3 = Color3.new(0, 0, 0)
Topframe.BorderColor3 = Color3.new(0, 0, 0)
Topframe.Position = UDim2.new(0.0740393624, 0, 0.0924214423, 0)
Topframe.Size = UDim2.new(0, 389, 0, 21)
Topframe.Active = true
Topframe.Draggable = true

Mainframe.Name = "Mainframe"
Mainframe.Parent = Topframe
Mainframe.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Mainframe.BorderColor3 = Color3.new(0, 0, 0)
Mainframe.Position = UDim2.new(0, 0, 1, 0)
Mainframe.Size = UDim2.new(0, 389, 0, 178)

NameBox.Name = "NameBox"
NameBox.Parent = Mainframe
NameBox.BackgroundColor3 = Color3.new(0, 0, 0)
NameBox.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
NameBox.Position = UDim2.new(0.581895471, 0, 0.0352941193, 0)
NameBox.Size = UDim2.new(0, 157, 0, 19)
NameBox.Font = Enum.Font.SourceSans
NameBox.Text = "Player Name"
NameBox.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
NameBox.TextSize = 14

NumberBox.Name = "NumberBox"
NumberBox.Parent = Mainframe
NumberBox.BackgroundColor3 = Color3.new(0, 0, 0)
NumberBox.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
NumberBox.Position = UDim2.new(0.581895471, 0, 0.176734969, 0)
NumberBox.Size = UDim2.new(0, 157, 0, 19)
NumberBox.Font = Enum.Font.SourceSans
NumberBox.Text = "Number"
NumberBox.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
NumberBox.TextSize = 14

GotoPlayer.Name = "GotoPlayer"
GotoPlayer.Parent = Mainframe
GotoPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
GotoPlayer.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
GotoPlayer.Position = UDim2.new(0.015424164, 0, 0.0337078646, 0)
GotoPlayer.Size = UDim2.new(0, 104, 0, 19)
GotoPlayer.Font = Enum.Font.SourceSans
GotoPlayer.Text = "TP to player"
GotoPlayer.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
GotoPlayer.TextSize = 14
GotoPlayer.MouseButton1Click:Connect(function()
		getplr = function(plxr)
	for i, v in pairs(game.Players:GetPlayers()) do
		if string.find(v.Name, plxr) then
			return v
		elseif v.Name:sub(1, plxr:len()):lower()== plxr:lower() then
			return v
		end
	end
end
local plr = getplr(NameBox.Text)
	game.Players.LocalPlayer.Character:MoveTo(plr.Character.Torso.Position)
end)

GotoSpawn.Name = "GotoSpawn"
GotoSpawn.Parent = Mainframe
GotoSpawn.BackgroundColor3 = Color3.new(0, 0, 0)
GotoSpawn.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
GotoSpawn.Position = UDim2.new(0.298200518, 0, 0.0337078646, 0)
GotoSpawn.Size = UDim2.new(0, 104, 0, 19)
GotoSpawn.Font = Enum.Font.SourceSans
GotoSpawn.Text = "TP to spawn"
GotoSpawn.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
GotoSpawn.TextSize = 14
GotoSpawn.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end)

Godmode.Name = "Godmode"
Godmode.Parent = Mainframe
Godmode.BackgroundColor3 = Color3.new(0, 0, 0)
Godmode.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
Godmode.Position = UDim2.new(0.015424164, 0, 0.174157292, 0)
Godmode.Size = UDim2.new(0, 104, 0, 19)
Godmode.Font = Enum.Font.SourceSans
Godmode.Text = "Godmode"
Godmode.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
Godmode.TextSize = 14
Godmode.MouseButton1Down:connect(function() 
	game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
end)

LoopGodmode.Name = "LoopGodmode"
LoopGodmode.Parent = Mainframe
LoopGodmode.BackgroundColor3 = Color3.new(0, 0, 0)
LoopGodmode.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
LoopGodmode.Position = UDim2.new(0.298200518, 0, 0.174157292, 0)
LoopGodmode.Size = UDim2.new(0, 104, 0, 19)
LoopGodmode.Font = Enum.Font.SourceSans
LoopGodmode.Text = "Loop Godmode"
LoopGodmode.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
LoopGodmode.TextSize = 14
LoopGodmode.MouseButton1Down:connect(function() 
	while true do
	game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
	
	wait(1)
	
	game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
end	
end)

TPCoins.Name = "TPCoins"
TPCoins.Parent = Mainframe
TPCoins.BackgroundColor3 = Color3.new(0, 0, 0)
TPCoins.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TPCoins.Position = UDim2.new(0.015424164, 0, 0.446629196, 0)
TPCoins.Size = UDim2.new(0, 104, 0, 19)
TPCoins.Font = Enum.Font.SourceSans
TPCoins.Text = "TP coins"
TPCoins.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TPCoins.TextSize = 14
TPCoins.MouseButton1Down:connect(function() 
	for i = 10, 1, -1 do
		for i,v in pairs(game.Workspace:GetChildren()) do
			local s = v:FindFirstChild("CoinContainer")
			local e = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
			if e and s then
				for i,c in pairs(s:GetChildren()) do
					c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
				end
			end
		end
		wait(0.7)
	end
end)

BringGun.Name = "BringGun"
BringGun.Parent = Mainframe
BringGun.BackgroundColor3 = Color3.new(0, 0, 0)
BringGun.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
BringGun.Position = UDim2.new(0.298200518, 0, 0.446629196, 0)
BringGun.Size = UDim2.new(0, 104, 0, 19)
BringGun.Font = Enum.Font.SourceSans
BringGun.Text = "Bring Gun"
BringGun.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
BringGun.TextSize = 14
BringGun.MouseButton1Down:connect(function() 
	game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end)

Clip.Name = "Clip"
Clip.Parent = Mainframe
Clip.BackgroundColor3 = Color3.new(0, 0, 0)
Clip.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
Clip.Position = UDim2.new(0.298200518, 0, 0.306179762, 0)
Clip.Size = UDim2.new(0, 104, 0, 19)
Clip.Font = Enum.Font.SourceSans
Clip.Text = "Clip"
Clip.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
Clip.TextSize = 14
Clip.MouseButton1Click:Connect(function()
	local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = true elseif v.ClassName == "Model" then v.Head.CanCollide = true end end) end end game:service("RunService").Stepped:wait() end
end)

Noclip.Name = "Noclip"
Noclip.Parent = Mainframe
Noclip.BackgroundColor3 = Color3.new(0, 0, 0)
Noclip.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
Noclip.Position = UDim2.new(0.015424164, 0, 0.306179762, 0)
Noclip.Size = UDim2.new(0, 104, 0, 19)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
Noclip.TextSize = 14
Noclip.MouseButton1Click:Connect(function()
	local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end)

Btools.Name = "Btools"
Btools.Parent = Mainframe
Btools.BackgroundColor3 = Color3.new(0, 0, 0)
Btools.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
Btools.Position = UDim2.new(0.015424164, 0, 0.721910119, 0)
Btools.Size = UDim2.new(0, 104, 0, 19)
Btools.Font = Enum.Font.SourceSans
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
Btools.TextSize = 14
Btools.MouseButton1Click:Connect(function()
	Player = game.Players.LocalPlayer

function Give(x)
	H = Instance.new("HopperBin", Player.Backpack)
	H.BinType = x
end

for i = 2, 4 do
Give(i)
end
end)

ESP.Name = "ESP"
ESP.Parent = Mainframe
ESP.BackgroundColor3 = Color3.new(0, 0, 0)
ESP.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
ESP.Position = UDim2.new(0.298200518, 0, 0.721910119, 0)
ESP.Size = UDim2.new(0, 104, 0, 19)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "Enable ESP"
ESP.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
ESP.TextSize = 14
ESP.MouseButton1Click:Connect(function()
	espenabled = false
ESP.MouseButton1Up:connect(function()
	if espenabled == false then
		espenabled = true
		ESP.Text = ("Disable ESP")

--Made by !!!RelentlessRaptor#5709 on discord

local faces = {"Back","Bottom","Front","Left","Right","Top"}
for _, v in pairs(game.Players:GetChildren()) do if v.Name ~= game.Players.LocalPlayer.Name then
	local bgui = Instance.new("BillboardGui",v.Character.Head)
	bgui.Name = ("EGUI")
	bgui.AlwaysOnTop = true
	bgui.ExtentsOffset = Vector3.new(0,3,0)
	bgui.Size = UDim2.new(0,200,0,50)
	local nam = Instance.new("TextLabel",bgui)
	nam.Text = v.Name
	nam.BackgroundTransparency = 1
	nam.TextSize = 30
	nam.Font = ("Arial")
	nam.TextColor3 = Color3.new(0,0,0)
	nam.Size = UDim2.new(0,200,0,50)
	if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
		for _, p in pairs(v.Character:GetChildren()) do
			if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
				for _, f in pairs(faces) do
					local m = Instance.new("SurfaceGui",p)
					m.Name = ("EGUI")
					m.Face = f
					m.AlwaysOnTop = true
					local mf = Instance.new("Frame",m)
					mf.Size = UDim2.new(1,0,1,0)
					mf.BorderSizePixel = 0
					mf.BackgroundTransparency = 0.5
					mf.BackgroundColor3 = Color3.new(0,0,255)
				end
			end
		end
	elseif v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
		for _, p in pairs(v.Character:GetChildren()) do
			if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
				for _, f in pairs(faces) do
					local m = Instance.new("SurfaceGui",p)
					m.Name = ("EGUI")
					m.Face = f
					m.AlwaysOnTop = true
					local mf = Instance.new("Frame",m)
					mf.Size = UDim2.new(1,0,1,0)
					mf.BorderSizePixel = 0
					mf.BackgroundTransparency = 0.5
					mf.BackgroundColor3 = Color3.new(255,0,0)
				end
			end
		end
	else
		for _, p in pairs(v.Character:GetChildren()) do
			if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
				for _, f in pairs(faces) do
					local m = Instance.new("SurfaceGui",p)
					m.Name = ("EGUI")
					m.Face = f
					m.AlwaysOnTop = true
					local mf = Instance.new("Frame",m)
					mf.Size = UDim2.new(1,0,1,0)
					mf.BorderSizePixel = 0
					mf.BackgroundTransparency = 0.5
					mf.BackgroundColor3 = Color3.new(0,255,0)
					local q = ("traeglaelnltlejsjs.rkakpythocr")
				end
			end
		end
	end
end end

	else
		espenabled = false
		ESP.Text = ("Enable ESP")
		for _, v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == ("EGUI") then
				v:Remove()
			end
		end
	end
end)
end)

LoopUnlockWS.Name = "LoopUnlockWS"
LoopUnlockWS.Parent = Mainframe
LoopUnlockWS.BackgroundColor3 = Color3.new(0, 0, 0)
LoopUnlockWS.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
LoopUnlockWS.Position = UDim2.new(0.298200518, 0, 0.581460655, 0)
LoopUnlockWS.Size = UDim2.new(0, 104, 0, 19)
LoopUnlockWS.Font = Enum.Font.SourceSans
LoopUnlockWS.Text = "Loop Unlock WS"
LoopUnlockWS.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
LoopUnlockWS.TextSize = 14
LoopUnlockWS.MouseButton1Click:Connect(function()
	while true do
function unlock(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)

wait(1)

function unlock(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)
end
end)

UnlockWS.Name = "UnlockWS"
UnlockWS.Parent = Mainframe
UnlockWS.BackgroundColor3 = Color3.new(0, 0, 0)
UnlockWS.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
UnlockWS.Position = UDim2.new(0.015424164, 0, 0.581460655, 0)
UnlockWS.Size = UDim2.new(0, 104, 0, 19)
UnlockWS.Font = Enum.Font.SourceSans
UnlockWS.Text = "Unlock Workspace"
UnlockWS.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
UnlockWS.TextSize = 14
UnlockWS.MouseButton1Click:Connect(function()
function unlock(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
v.Locked = false
end
unlock(v)
end
end
unlock(workspace)
end)

NormalGrav.Name = "NormalGrav"
NormalGrav.Parent = Mainframe
NormalGrav.BackgroundColor3 = Color3.new(0, 0, 0)
NormalGrav.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
NormalGrav.Position = UDim2.new(0.298200518, 0, 0.865168571, 0)
NormalGrav.Size = UDim2.new(0, 104, 0, 19)
NormalGrav.Font = Enum.Font.SourceSans
NormalGrav.Text = "Normal Gravity"
NormalGrav.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
NormalGrav.TextSize = 14
NormalGrav.MouseButton1Click:Connect(function()
	game.Workspace.Gravity = 196.2
end)

LowGrav.Name = "LowGrav"
LowGrav.Parent = Mainframe
LowGrav.BackgroundColor3 = Color3.new(0, 0, 0)
LowGrav.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
LowGrav.Position = UDim2.new(0.0154241649, 0, 0.865168512, 0)
LowGrav.Size = UDim2.new(0, 104, 0, 19)
LowGrav.Font = Enum.Font.SourceSans
LowGrav.Text = "Low Gravity"
LowGrav.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
LowGrav.TextSize = 14
LowGrav.MouseButton1Click:Connect(function()
	game.Workspace.Gravity = 80
end)

TextLabel.Parent = Mainframe
TextLabel.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TextLabel.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.580976844, 0, 0.30898875, 0)
TextLabel.Size = UDim2.new(0, 157, 0, 44)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Shift to sprint  |  Set sprint speed with the number box"
TextLabel.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Mainframe
TextLabel_2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TextLabel_2.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.580976844, 0, 0.584269643, 0)
TextLabel_2.Size = UDim2.new(0, 157, 0, 44)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Left CTRL to toggle the GUI"
TextLabel_2.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Mainframe
TextLabel_3.BackgroundColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_3.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.580976844, 0, 0.556179702, 0)
TextLabel_3.Size = UDim2.new(0, 157, 0, 2)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Mainframe
TextLabel_4.BackgroundColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_4.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.580976844, 0, 0.8539325, 0)
TextLabel_4.Size = UDim2.new(0, 157, 0, 2)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = ""
TextLabel_4.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Mainframe
TextLabel_5.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TextLabel_5.BorderColor3 = Color3.new(0.490196, 0.0352941, 0.686275)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.633676052, 0, 0.865168512, 0)
TextLabel_5.Size = UDim2.new(0, 116, 0, 19)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Psykek#3180"
TextLabel_5.TextColor3 = Color3.new(0.701961, 0.0509804, 1)
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

title.Name = "title"
title.Parent = Topframe
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.2422719, 0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 21)
title.Text = "Mystery Solved"
title.TextColor3 = Color3.new(0.501961, 0.0352941, 0.717647)
title.TextSize = 14

minititle.Name = "minititle"
minititle.Parent = Topframe
minititle.BackgroundColor3 = Color3.new(0, 0, 0)
minititle.BorderSizePixel = 0
minititle.Position = UDim2.new(0.680265486, 0, 0.333333343, 0)
minititle.Size = UDim2.new(0, 20, 0, 14)
minititle.Font = Enum.Font.Arial
minititle.Text = "MM2"
minititle.TextColor3 = Color3.new(0.501961, 0.0352941, 0.717647)
minititle.TextSize = 10

function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.LeftControl then
		    if Topframe.Visible == false then
        Topframe.Visible = true
    else
        Topframe.Visible = false
    end
	end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

function onKeyPress(inputObject, gameProcessedEvent)
local mouse = game.Players.LocalPlayer:GetMouse()
local running = false

function getTool()	
	for _, kid in ipairs(script.Parent:GetChildren()) do
		if kid.className == "Tool" then return kid end
	end
	return nil
end


mouse.KeyDown:connect(function (key) -- Run function
	key = string.lower(key)
	if string.byte(key) == 48 then
		running = true
		local keyConnection = mouse.KeyUp:connect(function (key)
			if string.byte(key) == 48 then
				running = false
			end
		end)
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
			wait()
		end
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (NumberBox.Text) --What the walkspeed is as you click [SHIFT]
		repeat wait () until running == false
		keyConnection:disconnect()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 --Normal Walkspeed
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
			wait()
		end
	end
end)
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
