-- Objects

local MurderGUI = Instance.new("ScreenGui")
local MurderFrame = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local PlayerQ = Instance.new("TextLabel")
local TeleportButton = Instance.new("TextButton")
local PlayerHere = Instance.new("TextBox")
local LocalCommands = Instance.new("TextLabel")
local TpSpawn = Instance.new("TextButton")
local God = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local TpC = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local TpG = Instance.new("TextButton")
local HighJ = Instance.new("TextButton")
local Bypassed = Instance.new("TextButton")
local SpeedW = Instance.new("TextButton")
local RegGrav = Instance.new("TextButton")
local LowGrav = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local JustLOL = Instance.new("TextLabel")
local JustLOL2 = Instance.new("TextLabel")
local ToggleClose = Instance.new("TextButton")
local DESTROY = Instance.new("TextButton")
local BypassedFrame = Instance.new("Frame")
local ByPassedIDs = Instance.new("TextLabel")
local ExitButton = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")

-- Properties

MurderGUI.Name = "MurderGUI"
MurderGUI.Parent = game.CoreGui

MurderFrame.Name = "MurderFrame"
MurderFrame.Parent = MurderGUI
MurderFrame.Active = true
MurderFrame.Draggable=true
MurderFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MurderFrame.BorderColor3 = Color3.new(1, 0.333333, 0)
MurderFrame.BorderSizePixel = 2
MurderFrame.Position = UDim2.new(0.27293402, 0, 0.217440546, 0)
MurderFrame.Selectable = true
MurderFrame.Size = UDim2.new(0, 598, 0, 498)

Logo.Name = "Logo"
Logo.Parent = MurderFrame
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0.144150823, 0, 0.0498879924, 0)
Logo.Size = UDim2.new(0, 452, 0, 72)
Logo.Image = "rbxassetid://2069673357"

PlayerQ.Name = "PlayerQ"
PlayerQ.Parent = MurderFrame
PlayerQ.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PlayerQ.BorderColor3 = Color3.new(1, 0.333333, 0)
PlayerQ.BorderSizePixel = 2
PlayerQ.Position = UDim2.new(0, 0, 0.194304854, 0)
PlayerQ.Size = UDim2.new(0, 362, 0, 50)
PlayerQ.Font = Enum.Font.SourceSans
PlayerQ.Text = "Player name   ="
PlayerQ.TextColor3 = Color3.new(1, 1, 0)
PlayerQ.TextSize = 25

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = MurderFrame
TeleportButton.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TeleportButton.BorderColor3 = Color3.new(1, 0.333333, 0)
TeleportButton.BorderSizePixel = 2
TeleportButton.Position = UDim2.new(0.305500627, 0, 0.316518933, 0)
TeleportButton.Size = UDim2.new(0, 231, 0, 50)
TeleportButton.Font = Enum.Font.SourceSans
TeleportButton.Text = "Teleport"
TeleportButton.TextColor3 = Color3.new(1, 1, 0)
TeleportButton.TextSize = 20

PlayerHere.Name = "PlayerHere"
PlayerHere.Parent = MurderFrame
PlayerHere.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PlayerHere.BorderColor3 = Color3.new(1, 0.333333, 0)
PlayerHere.BorderSizePixel = 2
PlayerHere.Position = UDim2.new(0.494983286, 0, 0.194779113, 0)
PlayerHere.Size = UDim2.new(0, 302, 0, 50)
PlayerHere.Font = Enum.Font.SourceSans
PlayerHere.Text = "Player Here"
PlayerHere.TextColor3 = Color3.new(1, 1, 0)
PlayerHere.TextSize = 20

LocalCommands.Name = "Local Commands"
LocalCommands.Parent = MurderFrame
LocalCommands.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
LocalCommands.BorderColor3 = Color3.new(1, 0.333333, 0)
LocalCommands.BorderSizePixel = 2
LocalCommands.Position = UDim2.new(0, 0, 0.431726903, 0)
LocalCommands.Size = UDim2.new(0, 598, 0, 50)
LocalCommands.Font = Enum.Font.SourceSans
LocalCommands.Text = "Local Commands "
LocalCommands.TextColor3 = Color3.new(1, 1, 0)
LocalCommands.TextSize = 25

TpSpawn.Name = "TpSpawn"
TpSpawn.Parent = MurderFrame
TpSpawn.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TpSpawn.BorderColor3 = Color3.new(1, 0.333333, 0)
TpSpawn.BorderSizePixel = 2
TpSpawn.Position = UDim2.new(0.68394649, 0, 0.538152635, 0)
TpSpawn.Size = UDim2.new(0, 189, 0, 50)
TpSpawn.Font = Enum.Font.SourceSans
TpSpawn.Text = "Tp to Spawn"
TpSpawn.TextColor3 = Color3.new(1, 1, 0)
TpSpawn.TextSize = 20

God.Name = "God"
God.Parent = MurderFrame
God.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
God.BorderColor3 = Color3.new(1, 0.333333, 0)
God.BorderSizePixel = 2
God.Position = UDim2.new(0, 0, 0.538152635, 0)
God.Size = UDim2.new(0, 189, 0, 50)
God.Font = Enum.Font.SourceSans
God.Text = "GodMode"
God.TextColor3 = Color3.new(1, 1, 0)
God.TextSize = 20

Esp.Name = "Esp"
Esp.Parent = MurderFrame
Esp.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Esp.BorderColor3 = Color3.new(1, 0.333333, 0)
Esp.BorderSizePixel = 2
Esp.Position = UDim2.new(0.68394649, 0, 0.638554215, 0)
Esp.Size = UDim2.new(0, 189, 0, 55)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "Esp"
Esp.TextColor3 = Color3.new(1, 1, 0)
Esp.TextSize = 20

TpC.Name = "TpC"
TpC.Parent = MurderFrame
TpC.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TpC.BorderColor3 = Color3.new(1, 0.333333, 0)
TpC.BorderSizePixel = 2
TpC.Position = UDim2.new(0, 0, 0.638554215, 0)
TpC.Size = UDim2.new(0, 189, 0, 55)
TpC.Font = Enum.Font.SourceSans
TpC.Text = "Tp Coins"
TpC.TextColor3 = Color3.new(1, 1, 0)
TpC.TextSize = 20

Fly.Name = "Fly"
Fly.Parent = MurderFrame
Fly.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Fly.BorderColor3 = Color3.new(1, 0.333333, 0)
Fly.BorderSizePixel = 2
Fly.Position = UDim2.new(0.68394649, 0, 0.755020082, 0)
Fly.Size = UDim2.new(0, 189, 0, 48)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly"
Fly.TextColor3 = Color3.new(1, 1, 0)
Fly.TextSize = 20

Noclip.Name = "Noclip"
Noclip.Parent = MurderFrame
Noclip.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Noclip.BorderColor3 = Color3.new(1, 0.333333, 0)
Noclip.BorderSizePixel = 2
Noclip.Position = UDim2.new(0, 0, 0.755020082, 0)
Noclip.Size = UDim2.new(0, 189, 0, 50)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 0)
Noclip.TextSize = 20

TpG.Name = "TpG"
TpG.Parent = MurderFrame
TpG.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TpG.BorderColor3 = Color3.new(1, 0.333333, 0)
TpG.BorderSizePixel = 2
TpG.Position = UDim2.new(0, 0, 0.855421662, 0)
TpG.Size = UDim2.new(0, 189, 0, 46)
TpG.Font = Enum.Font.SourceSans
TpG.Text = "Tp Gun"
TpG.TextColor3 = Color3.new(1, 1, 0)
TpG.TextSize = 20

HighJ.Name = "HighJ"
HighJ.Parent = MurderFrame
HighJ.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
HighJ.BorderColor3 = Color3.new(1, 0.333333, 0)
HighJ.BorderSizePixel = 2
HighJ.Position = UDim2.new(0.68394649, 0, 0.855421662, 0)
HighJ.Size = UDim2.new(0, 189, 0, 46)
HighJ.Font = Enum.Font.SourceSans
HighJ.Text = "High Jump"
HighJ.TextColor3 = Color3.new(1, 1, 0)
HighJ.TextSize = 20

Bypassed.Name = "Bypassed "
Bypassed.Parent = MurderFrame
Bypassed.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Bypassed.BorderColor3 = Color3.new(1, 0.333333, 0)
Bypassed.BorderSizePixel = 2
Bypassed.Position = UDim2.new(0.31605351, 0, 0.538152635, 0)
Bypassed.Size = UDim2.new(0, 220, 0, 50)
Bypassed.Font = Enum.Font.SourceSans
Bypassed.Text = "Bypassed Song ID's"
Bypassed.TextColor3 = Color3.new(1, 1, 0)
Bypassed.TextSize = 20

SpeedW.Name = "SpeedW"
SpeedW.Parent = MurderFrame
SpeedW.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
SpeedW.BorderColor3 = Color3.new(1, 0.333333, 0)
SpeedW.BorderSizePixel = 2
SpeedW.Position = UDim2.new(0.31605351, 0, 0.74899596, 0)
SpeedW.Size = UDim2.new(0, 220, 0, 52)
SpeedW.Font = Enum.Font.SourceSans
SpeedW.Text = "Speed Walk"
SpeedW.TextColor3 = Color3.new(1, 1, 0)
SpeedW.TextSize = 20

RegGrav.Name = "RegGrav"
RegGrav.Parent = MurderFrame
RegGrav.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
RegGrav.BorderColor3 = Color3.new(1, 0.333333, 0)
RegGrav.BorderSizePixel = 2
RegGrav.Position = UDim2.new(0.31605351, 0, 0.638554215, 0)
RegGrav.Size = UDim2.new(0, 220, 0, 55)
RegGrav.Font = Enum.Font.SourceSans
RegGrav.Text = "Reg Gravity"
RegGrav.TextColor3 = Color3.new(1, 1, 0)
RegGrav.TextSize = 20

LowGrav.Name = "LowGrav"
LowGrav.Parent = MurderFrame
LowGrav.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
LowGrav.BorderColor3 = Color3.new(1, 0.333333, 0)
LowGrav.BorderSizePixel = 2
LowGrav.Position = UDim2.new(0.31605351, 0, 0.855421662, 0)
LowGrav.Size = UDim2.new(0, 220, 0, 46)
LowGrav.Font = Enum.Font.SourceSans
LowGrav.Text = "Low Gravity"
LowGrav.TextColor3 = Color3.new(1, 1, 0)
LowGrav.TextSize = 20

Credits.Name = "Credits"
Credits.Parent = MurderFrame
Credits.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Credits.BorderColor3 = Color3.new(1, 0.333333, 0)
Credits.BorderSizePixel = 2
Credits.Position = UDim2.new(0, 0, 0.947791159, 0)
Credits.Size = UDim2.new(0, 598, 0, 26)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Made by ThisW0ntGetBanned#7965, Scripted by ThisW0ntGetBanned, Youtube FlameExecutor"
Credits.TextColor3 = Color3.new(1, 1, 0)
Credits.TextSize = 21
Credits.TextWrapped = true

JustLOL.Name = "JustLOL"
JustLOL.Parent = MurderFrame
JustLOL.BackgroundColor3 = Color3.new(1, 1, 1)
JustLOL.BackgroundTransparency = 1
JustLOL.Position = UDim2.new(0.772913814, 0, 0.316582918, 0)
JustLOL.Rotation = 100
JustLOL.Size = UDim2.new(0, 64, 0, 51)
JustLOL.Font = Enum.Font.SourceSans
JustLOL.Text = ":)"
JustLOL.TextColor3 = Color3.new(0, 1, 0)
JustLOL.TextSize = 30

JustLOL2.Name = "JustLOL2"
JustLOL2.Parent = MurderFrame
JustLOL2.BackgroundColor3 = Color3.new(1, 1, 1)
JustLOL2.BackgroundTransparency = 1
JustLOL2.Position = UDim2.new(0.113543093, 0, 0.318257958, 0)
JustLOL2.Rotation = 2
JustLOL2.Size = UDim2.new(0, 64, 0, 51)
JustLOL2.Font = Enum.Font.SourceSans
JustLOL2.Text = "¯\\_(?)_/¯"
JustLOL2.TextColor3 = Color3.new(0, 1, 0)
JustLOL2.TextSize = 30

ToggleClose.Name = "Toggle Close"
ToggleClose.Parent = MurderFrame
ToggleClose.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ToggleClose.BorderColor3 = Color3.new(1, 0.333333, 0)
ToggleClose.BorderSizePixel = 2
ToggleClose.Position = UDim2.new(0.857859552, 0, 0, 0)
ToggleClose.Size = UDim2.new(0, 85, 0, 25)
ToggleClose.Font = Enum.Font.SourceSans
ToggleClose.Text = "Toggle Close"
ToggleClose.TextColor3 = Color3.new(1, 1, 0)
ToggleClose.TextSize = 18

DESTROY.Name = "DESTROY"
DESTROY.Parent = MurderFrame
DESTROY.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
DESTROY.BorderColor3 = Color3.new(1, 0.333333, 0)
DESTROY.BorderSizePixel = 2
DESTROY.Size = UDim2.new(0, 112, 0, 32)
DESTROY.Font = Enum.Font.SourceSans
DESTROY.Text = "Destroy GUI"
DESTROY.TextColor3 = Color3.new(1, 1, 0)
DESTROY.TextSize = 20

BypassedFrame.Name = "BypassedFrame"
BypassedFrame.Parent = MurderFrame
BypassedFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
BypassedFrame.BorderColor3 = Color3.new(1, 0.333333, 0)
BypassedFrame.BorderSizePixel = 2
BypassedFrame.Position = UDim2.new(-0.585284293, 0, 0.172690764, 0)
BypassedFrame.Size = UDim2.new(0, 291, 0, 303)
BypassedFrame.Visible = false

ByPassedIDs.Name = "ByPassedID's"
ByPassedIDs.Parent = BypassedFrame
ByPassedIDs.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ByPassedIDs.BackgroundTransparency = 1
ByPassedIDs.Position = UDim2.new(0.0586088412, 0, 0.0877826065, 0)
ByPassedIDs.Size = UDim2.new(0, 257, 0, 271)
ByPassedIDs.Font = Enum.Font.SourceSans
ByPassedIDs.Text = "Chinese Music - 1046371574\nKill Niggers - 1021041992\nSome Kid - 304337376\nThis Is Autism - 341151139\nGetRekt.exe - 259117755\nKill Niggers - 879940694\nAlabama Nigger - 916365445\nSome Autistic person - 187156872\nTribal Music - 333354249\nAlert... Online daters detected - 977396990\nGood Shit - 260845388\nYou Are An Idiot - 283166091"
ByPassedIDs.TextColor3 = Color3.new(0, 1, 0)
ByPassedIDs.TextSize = 19

ExitButton.Name = "ExitButton"
ExitButton.Parent = BypassedFrame
ExitButton.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ExitButton.BorderColor3 = Color3.new(1, 0.333333, 0)
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(0.8041237, 0, 0, 0)
ExitButton.Size = UDim2.new(0, 57, 0, 27)
ExitButton.Font = Enum.Font.SourceSans
ExitButton.Text = "X"
ExitButton.TextColor3 = Color3.new(1, 1, 0)
ExitButton.TextSize = 30

Toggle.Name = "Toggle"
Toggle.Parent = MurderGUI
Toggle.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Toggle.BorderColor3 = Color3.new(1, 0.333333, 0)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0, 0, 0.671574235, 0)
Toggle.Size = UDim2.new(0, 200, 0, 50)
Toggle.Visible = false
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle Open"
Toggle.TextColor3 = Color3.new(1, 1, 0)
Toggle.TextSize = 25

ToggleClose.MouseButton1Click:connect(function()
	Toggle.Visible=true
	MurderFrame.Visible=false
end)

Toggle.MouseButton1Click:connect(function()
	Toggle.Visible=false
	MurderFrame.Visible=true
end)

DESTROY.MouseButton1Click:connect(function()
	MurderFrame:Destroy()
end)

Bypassed.MouseButton1Click:connect(function()
	BypassedFrame.Visible=true
end)

ExitButton.MouseButton1Click:connect(function()
	BypassedFrame.Visible=false
end)

TeleportButton.MouseButton1Click:connect(function()
	getplr = function(plxr)
	for i, v in pairs(game.Players:GetPlayers()) do
		if string.find(v.Name, plxr) then
			return v
		elseif v.Name:sub(1, plxr:len()):lower()== plxr:lower() then
			return v
		end
	end
end
local plr = getplr(PlayerHere.Text)
	game.Players.LocalPlayer.Character:MoveTo(plr.Character.Torso.Position)
end)

TpSpawn.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end)

God.MouseButton1Down:connect(function() 
	game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
end)

LowGrav.MouseButton1Click:connect(function()
	game.Workspace.Gravity = 80
end)

RegGrav.MouseButton1Click:connect(function()
	game.Workspace.Gravity = 196.2
end)

TpC.MouseButton1Down:connect(function() 
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

Noclip.MouseButton1Click:Connect(function()
	local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end)

Esp.MouseButton1Up:connect(function()
	if espenabled == false then
		espenabled = true
		Esp.Text = ("Disable ESP")
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
		Esp.Text = ("Enable ESP")
		for _, v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == ("EGUI") then
				v:Remove()
			end
		end
	end
end)

HighJ.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end)

SpeedW.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Fly.MouseButton1Click:connect(function()
	-- Fucking press e to activate and Deactivate --
repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

TpG.MouseButton1Click:connect(function()
	game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end)
