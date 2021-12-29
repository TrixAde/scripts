local UserId = tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))])

local UserName = game:GetService('HttpService'):JSONDecode(game:HttpGet('http://api.roblox.com/users/'..UserId)).Username

if UNLOAD_ADMIN then 
	UNLOAD_ADMIN()
end 

local version = "v1.41"
local prefix = "."
local SCRIPT_UNLOADED = false
ANTI_CRASH_DISABLED = true

if ANTI_CRASH_DISABLED then
	warn('Synapse is BUTTCRACK rn, wait until they fix their api for anti-crash to work :(')
end

ownsSwat = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(UserId, 96651)

glass = {
	workspace["Prison_Halls"].glass:GetChildren()[1],
	workspace["Prison_Halls"].glass:GetChildren()[2],
	workspace["Prison_Halls"].glass:GetChildren()[3],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[1],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[2],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[3],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[4],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[5],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[6],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[7],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[8],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[9],
	workspace["Prison_Guard_Outpost"].doorwindow:GetChildren()[10],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[1],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[2],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[3],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[4],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[5],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[6],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[7],
	workspace["Prison_Guard_Outpost"].window:GetChildren()[8],
	workspace["Prison_Cafeteria"].Model.Model:GetChildren()[1],
	workspace["Prison_Cafeteria"].Model.Model:GetChildren()[2],
	workspace["Prison_Cafeteria"].Model.Model:GetChildren()[3],
	workspace["Prison_Cafeteria"].Model.Model:GetChildren()[4],
	workspace["Prison_Cafeteria"].Model.Model:GetChildren()[5],
}

glassParts = {}

for _,v in pairs(glass) do
	table.insert(glassParts,{v,v.Parent})
end

wallParts = {}

for i,v in pairs(game:GetService("Workspace")["Prison_Halls"]:GetChildren()) do 
	if v.Name ~= ("floor") then
		if v.Name ~= ("lights") then
			table.insert(wallParts,{v,v.Parent})
		end
	end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Guard_Outpost"]:GetChildren()) do 
	if v.Name ~= ("floor") then
		if v.Name ~= ("lights") then
			table.insert(wallParts,{v,v.Parent})
		end
	end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Cafeteria"]:GetChildren()) do 
	if v.Name ~= ("floor") then
		if v.Name ~= ("lights") then
			table.insert(wallParts,{v,v.Parent})
		end
	end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Fences"]:GetChildren()) do 
	table.insert(wallParts,{v,v.Parent})
end
for i,v in pairs(game:GetService("Workspace")["Prison_OuterWall"]:GetChildren()) do 
	table.insert(wallParts,{v,v.Parent})
end
for i,v in pairs(game:GetService("Workspace")["Doors"]:GetChildren()) do 
	table.insert(wallParts,{v,v.Parent})
end
for i,v in pairs(game:GetService("Workspace")["Prison_Administration"]:GetChildren()) do 
	if v.Name ~= ("light_floor1") then
		if v.Name ~= ("light_floor2") then
			table.insert(wallParts,{v,v.Parent})
		end
	end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Cellblock"]:GetChildren()) do 
	if v.Name ~= ("c_floor") then
		if v.Name ~= ("a_lights") then
			if v.Name ~= ("b_lights") then
				if v.Name ~= ("c_lights") then
					table.insert(wallParts,{v,v.Parent})
				end
			end
		end
	end
end

grass = Instance.new("Part")
grass.Anchored = true
grass.Name = "tempGrass"
grass.Parent = game:GetService("Lighting")
grass.Size = Vector3.new(402, 1.463, 475)
grass.Position = Vector3.new(929.5, 94.2336, 2273.6)
grass.Material = Enum.Material.Grass
grass.Color = Color3.fromRGB(75, 151, 75)
grass.Orientation = Vector3.new(0, 0, 0)

if game.Players.LocalPlayer.PlayerGui.TestGui:FindFirstChild("TextButton") then
	game.Players.LocalPlayer.PlayerGui.TestGui.TextButton:Destroy()
end

local Watermark = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local RETARDEDLABELS = Instance.new("TextLabel")
local RETARDEDLABELS_2 = Instance.new("TextLabel")
local VersionLabel = Instance.new("TextLabel")

Watermark.Name = "Watermark"
Watermark.Parent = game.CoreGui
Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Holder.Name = "Holder"
Holder.Parent = Watermark
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.Position = UDim2.new(0, 0, 1, -37)
Holder.Size = UDim2.new(0, 211, 0, 32)

RETARDEDLABELS.Name = "RETARDEDLABELS"
RETARDEDLABELS.Parent = Holder
RETARDEDLABELS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RETARDEDLABELS.BackgroundTransparency = 1.000
RETARDEDLABELS.Position = UDim2.new(0.037914671, 0, 0.183227539, 0)
RETARDEDLABELS.Size = UDim2.new(0.545604885, 0, 0.625000536, 0)
RETARDEDLABELS.Font = Enum.Font.SourceSansBold
RETARDEDLABELS.Text = "SCORPION"
RETARDEDLABELS.TextColor3 = Color3.fromRGB(0, 0, 0)
RETARDEDLABELS.TextSize = 28.000

RETARDEDLABELS_2.Name = "RETARDEDLABELS"
RETARDEDLABELS_2.Parent = Holder
RETARDEDLABELS_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RETARDEDLABELS_2.BackgroundTransparency = 1.000
RETARDEDLABELS_2.Position = UDim2.new(0.578780293, 0, 0.183227539, 0)
RETARDEDLABELS_2.Size = UDim2.new(0.345114082, 0, 0.625, 0)
RETARDEDLABELS_2.Font = Enum.Font.SourceSansBold
RETARDEDLABELS_2.Text = "ADMIN"
RETARDEDLABELS_2.TextColor3 = Color3.fromRGB(255, 255, 255)
RETARDEDLABELS_2.TextSize = 28.000

VersionLabel.Name = "VersionLabel"
VersionLabel.Parent = Holder
VersionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.BackgroundTransparency = 1.000
VersionLabel.Position = UDim2.new(0.923894346, 0, 0.276977539, 0)
VersionLabel.Size = UDim2.new(0.241706163, 0, 0.4375, 0)
VersionLabel.Font = Enum.Font.SourceSans
VersionLabel.Text = version
VersionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.TextSize = 14.000
VersionLabel.TextXAlignment = Enum.TextXAlignment.Left

local ScorpionAdmin = Instance.new("ScreenGui")
local Commands = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Commands_2 = Instance.new("Frame")
local Padding = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local Logo = Instance.new("ImageButton")
local Credits = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Close_2 = Instance.new("TextButton")
local Credits_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Logo_2 = Instance.new("ImageButton")
local Loader = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Close_3 = Instance.new("TextButton")
local ON = Instance.new("Frame")
local OFF = Instance.new("Frame")
local LoadingMessage = Instance.new("TextLabel")
local Logo_3 = Instance.new("ImageButton")
local Main = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Input = Instance.new("TextBox")
local ShowOutput = Instance.new("TextButton")
local ShowCommands = Instance.new("TextButton")
local Title_4 = Instance.new("TextLabel")
local Logo_4 = Instance.new("ImageButton")
local Output = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local Close_4 = Instance.new("TextButton")
local Output_2 = Instance.new("Frame")
local Padding_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Logo_5 = Instance.new("ImageButton")
local Hover1 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Hover2 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Hover3 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Hover4 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")

ScorpionAdmin.Name = "Scorpion Admin"
ScorpionAdmin.Parent = game.CoreGui
ScorpionAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Loader.Name = "Loader"
Loader.Parent = ScorpionAdmin
Loader.AnchorPoint = Vector2.new(0.5, 0.5)
Loader.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Loader.BorderSizePixel = 0
Loader.Position = UDim2.new(0.5, 0, 0.5, 0)
Loader.Size = UDim2.new(0, 263, 0, 102)

Title_3.Name = "Title"
Title_3.Parent = Loader
Title_3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.125991181, 0, 0, 5)
Title_3.Size = UDim2.new(0, 194, 0, 22)
Title_3.Font = Enum.Font.Code
Title_3.Text = "Scorpion Admin-Loader "..version
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 12.000

Close_3.Name = "Close"
Close_3.Parent = Loader
Close_3.Active = false
Close_3.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0.892115176, 0, 0, 5)
Close_3.Selectable = false
Close_3.Size = UDim2.new(0, 22, 0, 22)
Close_3.Font = Enum.Font.Code
Close_3.Text = "_"
Close_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_3.TextSize = 14.000

ON.Name = "ON"
ON.Parent = Loader
ON.AnchorPoint = Vector2.new(0.5, 0.5)
ON.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
ON.BorderSizePixel = 0
ON.Position = UDim2.new(0.489852607, 0, 0.470588237, 10)
ON.Size = UDim2.new(0, 248, 0, 20)

OFF.Name = "OFF"
OFF.Parent = ON
OFF.AnchorPoint = Vector2.new(1, 0)
OFF.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
OFF.BorderSizePixel = 0
OFF.Position = UDim2.new(1, 0, 0, 0)
OFF.Size = UDim2.new(0, 248, 0, 20)

LoadingMessage.Name = "LoadingMessage"
LoadingMessage.Parent = Loader
LoadingMessage.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
LoadingMessage.BorderSizePixel = 0
LoadingMessage.Position = UDim2.new(0.0171102658, 0, 0.754901946, 0)
LoadingMessage.Size = UDim2.new(0, 249, 0, 18)
LoadingMessage.Font = Enum.Font.SourceSans
LoadingMessage.Text = "Checking Whitelist..."
LoadingMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingMessage.TextSize = 14.000

Logo_3.Name = "Logo"
Logo_3.Parent = Loader
Logo_3.Active = false
Logo_3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Logo_3.BorderSizePixel = 0
Logo_3.Position = UDim2.new(0.0195272341, 0, 0, 5)
Logo_3.Selectable = false
Logo_3.Size = UDim2.new(0, 22, 0, 22)
Logo_3.Image = "http://www.roblox.com/asset/?id=5838736530"
Logo_3.ScaleType = Enum.ScaleType.Fit

wait(0.3)
LoadingMessage.Text = "Checking Updates..."
OFF.Size = UDim2.new(0, 208, 0, 20)
wait(0.3)
LoadingMessage.Text = "Checking Validation..."
OFF.Size = UDim2.new(0, 188, 0, 20)
wait(0.3)
LoadingMessage.Text = "Loading UI..."
OFF.Size = UDim2.new(0, 160, 0, 20)
wait(0.3)
LoadingMessage.Text = "Finalizing..."
OFF.Size = UDim2.new(0, 80, 0, 20)
wait(0.3)
OFF.Size = UDim2.new(0, 0, 0, 20)
OFF.Visible = false
Loader.Visible = false

Commands.Name = "Commands"
Commands.Parent = ScorpionAdmin
Commands.AnchorPoint = Vector2.new(0,1)
Commands.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Commands.BorderSizePixel = 0
Commands.Position = UDim2.new(0.5, 0, 0.5, 0)
Commands.Size = UDim2.new(0, 263, 0, 198)
Commands.Visible = false

Title.Name = "Title"
Title.Parent = Commands
Title.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.125991181, 0, 0, 5)
Title.Size = UDim2.new(0, 194, 0, 22)
Title.Font = Enum.Font.Code
Title.Text = "Scorpion Admin-Commands"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 12.000

Close.Name = "Close"
Title.BackgroundTransparency = 1.000
Close.Parent = Commands
Close.Active = false
Close.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.892115176, 0, 0, 5)
Close.Selectable = false
Close.Size = UDim2.new(0, 22, 0, 22)
Close.Font = Enum.Font.Code
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

Commands_2.Name = "Commands"
Commands_2.Parent = Commands
Commands_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Commands_2.BorderSizePixel = 0
Commands_2.Position = UDim2.new(0.0114068445, 0, 0.161616161, 0)
Commands_2.Size = UDim2.new(0, 256, 0, 161)

Padding.Name = "Padding"
Padding.Parent = Commands_2
Padding.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Padding.BorderSizePixel = 0
Padding.Position = UDim2.new(0.0166666508, 0, 0.0421051607, 0)
Padding.Selectable = false
Padding.Size = UDim2.new(0, 249, 0, 148)
Padding.ScrollBarThickness = 7

TextLabel.Parent = nil
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Font = Enum.Font.Code
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.Size = UDim2.new(1, 0, 0, TextLabel.TextSize)
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

local UIListLayout = Instance.new("UIListLayout")

UIListLayout.Parent = Padding
UIListLayout.SortOrder = Enum.SortOrder.Name

Logo.Name = "Logo"
Logo.Parent = Commands
Logo.Active = false
Logo.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0195272341, 0, 0, 5)
Logo.Selectable = false
Logo.Size = UDim2.new(0, 22, 0, 22)
Logo.Image = "http://www.roblox.com/asset/?id=5838736530"
Logo.ScaleType = Enum.ScaleType.Fit

Credits.Name = "Credits"
Credits.Parent = ScorpionAdmin
Credits.AnchorPoint = Vector2.new(0.5, 0.5)
Credits.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.5, 0, 0.5, 0)
Credits.Size = UDim2.new(0, 190, 0, 102)
Credits.Visible = false

Title_2.Name = "Title"
Title_2.Parent = Credits
Title_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.151106179, 0, 0, 5)
Title_2.Size = UDim2.new(0, 127, 0, 22)
Title_2.Font = Enum.Font.Code
Title_2.Text = "Scorpion Admin-Credit"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 12.000

Close_2.Name = "Close"
Close_2.Parent = Credits
Close_2.Active = false
Close_2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.857894659, 0, 0, 5)
Close_2.Selectable = false
Close_2.Size = UDim2.new(0, 22, 0, 22)
Close_2.Font = Enum.Font.Code
Close_2.Text = "X"
Close_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_2.TextSize = 14.000

Credits_2.Name = "Credits"
Credits_2.Parent = Credits
Credits_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Credits_2.BorderSizePixel = 0
Credits_2.Position = UDim2.new(0.0247903932, 0, 0.330659747, 0)
Credits_2.Size = UDim2.new(0, 180, 0, 62)

TextLabel_2.Parent = Credits_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.027777778, 0, 0.0967741907, 0)
TextLabel_2.Size = UDim2.new(0.949999988, 0, 0.806451619, 0)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Made By Vapin' Cat#7950\nMotivated By .phantom#2458\nDiscord Server:\nhttps://discord.gg/4vZhZs8"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 12.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

Logo_2.Name = "Logo"
Logo_2.Parent = Credits
Logo_2.Active = false
Logo_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Logo_2.BorderSizePixel = 0
Logo_2.Position = UDim2.new(0.0195272341, 0, 0, 5)
Logo_2.Selectable = false
Logo_2.Size = UDim2.new(0, 22, 0, 22)
Logo_2.Image = "http://www.roblox.com/asset/?id=5838736530"
Logo_2.ScaleType = Enum.ScaleType.Fit

Main.Name = "Main"
Main.Parent = ScorpionAdmin
Main.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 5, 1, -100)
Main.Size = UDim2.new(0, 190, 0, 59)
Main.Visible = true

Bar.Name = "Bar"
Bar.Parent = Main
Bar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.0195272341, 0, 0.545114696, 0)
Bar.Size = UDim2.new(0, 182, 0, 22)

Input.Name = "Input"
Input.Parent = Bar
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.BackgroundTransparency = 1.000
Input.Position = UDim2.new(0.0164835174, 0, 0.0909090936, 0)
Input.Size = UDim2.new(0, 175, 0, 17)
Input.Font = Enum.Font.SourceSans
Input.PlaceholderText = "Press . to focus command bar."
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14.000
Input.TextXAlignment = Enum.TextXAlignment.Left

ShowOutput.Name = "ShowOutput"
ShowOutput.Parent = Main
ShowOutput.Active = false
ShowOutput.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
ShowOutput.BorderSizePixel = 0
ShowOutput.Position = UDim2.new(0.705263197, 0, 0.0782889426, 0)
ShowOutput.Selectable = false
ShowOutput.Size = UDim2.new(0, 22, 0, 22)
ShowOutput.Font = Enum.Font.Code
ShowOutput.Text = ">_"
ShowOutput.TextColor3 = Color3.fromRGB(255, 255, 255)
ShowOutput.TextSize = 14.000

ShowCommands.Name = "ShowCommands"
ShowCommands.Parent = Main
ShowCommands.Active = false
ShowCommands.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
ShowCommands.BorderSizePixel = 0
ShowCommands.Position = UDim2.new(0.857894659, 0, 0.0782889426, 0)
ShowCommands.Selectable = false
ShowCommands.Size = UDim2.new(0, 22, 0, 22)
ShowCommands.Font = Enum.Font.Code
ShowCommands.Text = "?"
ShowCommands.TextColor3 = Color3.fromRGB(255, 255, 255)
ShowCommands.TextSize = 14.000

Title_4.Name = "Title"
Title_4.Parent = Main
Title_4.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.151106179, 0, 0.0874871686, 0)
Title_4.Size = UDim2.new(0, 99, 0, 22)
Title_4.Font = Enum.Font.Code
Title_4.Text = "Scorpion Admin"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 12.000

Logo_4.Name = "Logo"
Logo_4.Parent = Main
Logo_4.Active = false
Logo_4.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Logo_4.BorderSizePixel = 0
Logo_4.Position = UDim2.new(0.0195272341, 0, 0.0874871686, 0)
Logo_4.Selectable = false
Logo_4.Size = UDim2.new(0, 22, 0, 22)
Logo_4.Image = "http://www.roblox.com/asset/?id=5838736530"
Logo_4.ScaleType = Enum.ScaleType.Fit

Output.Name = "Output"
Output.Parent = ScorpionAdmin
Output.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Output.BorderSizePixel = 0
Output.Position = UDim2.new(0.5, 0, 0.5, 0)
Output.Size = UDim2.new(0, 190, 0, 132)
Output.Visible = false

Title_5.Name = "Title"
Title_5.Parent = Output
Title_5.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title_5.BackgroundTransparency = 1.000
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.151106179, 0, 0, 5)
Title_5.Size = UDim2.new(0, 127, 0, 22)
Title_5.Font = Enum.Font.Code
Title_5.Text = "Scorpion Admin-Output"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 12.000

Close_4.Name = "Close"
Close_4.Parent = Output
Close_4.Active = false
Close_4.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Close_4.BorderSizePixel = 0
Close_4.Position = UDim2.new(0.857894659, 0, 0, 5)
Close_4.Selectable = false
Close_4.Size = UDim2.new(0, 22, 0, 22)
Close_4.Font = Enum.Font.Code
Close_4.Text = "X"
Close_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_4.TextSize = 14.000

Output_2.Name = "Output"
Output_2.Parent = Output
Output_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Output_2.BorderSizePixel = 0
Output_2.Position = UDim2.new(0.0195272341, 0, 0.24242425, 0)
Output_2.Size = UDim2.new(0, 180, 0, 95)

Padding_2.Name = "Padding"
Padding_2.Parent = Output_2
Padding_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Padding_2.BorderSizePixel = 0
Padding_2.ClipsDescendants = true
Padding_2.Position = UDim2.new(0.0166666675, 0, 0.042105265, 0)
Padding_2.Size = UDim2.new(0, 174, 0, 87)

TextLabel_3.Parent = Padding_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(1, 0, 1, 0)
TextLabel_3.Font = Enum.Font.Code
TextLabel_3.Text = "\n\n\n\n\n\n\n"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_3.TextYAlignment = Enum.TextYAlignment.Bottom

Logo_5.Name = "Logo"
Logo_5.Parent = Output
Logo_5.Active = false
Logo_5.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Logo_5.BorderSizePixel = 0
Logo_5.Position = UDim2.new(0.0195272341, 0, 0, 5)
Logo_5.Selectable = false
Logo_5.Size = UDim2.new(0, 22, 0, 22)
Logo_5.Image = "http://www.roblox.com/asset/?id=5838736530"
Logo_5.ScaleType = Enum.ScaleType.Fit

Hover1.Name = "Hover1"
Hover1.Parent = ScorpionAdmin
Hover1.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Hover1.BorderColor3 = Color3.fromRGB(60, 60, 60)
Hover1.Position = UDim2.new(0.0090009002, 0, 0.490291268, 0)
Hover1.Size = UDim2.new(0, 156, 0, 16)
Hover1.Visible = false

TextLabel_4.Parent = Hover1
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 4, 0, 0)
TextLabel_4.Size = UDim2.new(1, -4, 1, 0)
TextLabel_4.Font = Enum.Font.Code
TextLabel_4.Text = "Opens Commands Window"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

Hover2.Name = "Hover2"
Hover2.Parent = ScorpionAdmin
Hover2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Hover2.BorderColor3 = Color3.fromRGB(60, 60, 60)
Hover2.Position = UDim2.new(0.0090009002, 0, 0.519417465, 0)
Hover2.Size = UDim2.new(0, 91, 0, 16)
Hover2.Visible = false

TextLabel_5.Parent = Hover2
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0, 4, 0, 0)
TextLabel_5.Size = UDim2.new(1, -4, 1, 0)
TextLabel_5.Font = Enum.Font.Code
TextLabel_5.Text = "Opens Output"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Hover3.Name = "Hover3"
Hover3.Parent = ScorpionAdmin
Hover3.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Hover3.BorderColor3 = Color3.fromRGB(60, 60, 60)
Hover3.Position = UDim2.new(0.0090009002, 0, 0.548543692, 0)
Hover3.Size = UDim2.new(0, 91, 0, 16)
Hover3.Visible = false

TextLabel_6.Parent = Hover3
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0, 4, 0, 0)
TextLabel_6.Size = UDim2.new(1, -4, 1, 0)
TextLabel_6.Font = Enum.Font.Code
TextLabel_6.Text = "Close Window"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 14.000
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Hover4.Name = "Hover4"
Hover4.Parent = ScorpionAdmin
Hover4.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Hover4.BorderColor3 = Color3.fromRGB(60, 60, 60)
Hover4.Position = UDim2.new(0.00988959521, 0, 0.576456308, 0)
Hover4.Size = UDim2.new(0, 113, 0, 16)
Hover4.Visible = false

TextLabel_7.Parent = Hover4
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0, 4, 0, 0)
TextLabel_7.Size = UDim2.new(1, -4, 1, 0)
TextLabel_7.Font = Enum.Font.Code
TextLabel_7.Text = "Minimize Window"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 14.000
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

function IsEven(num)
	return num % 2 == 0
end

local UserInputService = game:GetService("UserInputService")

function draggable(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

draggable(Main)
draggable(Output)
draggable(Commands)
draggable(Credits)

function openCredits()
	Credits.Visible = true
end

Logo.MouseButton1Down:Connect(openCredits)
Logo_2.MouseButton1Down:Connect(openCredits)
Logo_3.MouseButton1Down:Connect(openCredits)
Logo_4.MouseButton1Down:Connect(openCredits)
Logo_5.MouseButton1Down:Connect(openCredits)

ShowCommands.MouseButton1Down:Connect(function()
	Commands.Visible = true
	Commands.Position = Main.Position + UDim2.new(0,Main.Size.X.Offset+5,0,Main.Size.Y.Offset)
end)
ShowOutput.MouseButton1Down:Connect(function()
	Output.Visible = true
	Output.Position = Main.Position + UDim2.new(0,0,0,-135)
end)
Close_4.MouseButton1Down:Connect(function()
	Output.Visible = false
end)
Close.MouseButton1Down:Connect(function()
	Commands.Visible = false
end)
Close_2.MouseButton1Down:Connect(function()
	Credits.Visible = false
end)

allcmds = {
	"--- Player ---",
	"re / respawn - respawns",
	"to [plr] - Teleports to player.",
	"sheild - Gives shield.",
	"armor - Gives armor.",
	"kit - Gives kit.",
	"rj - Rejoins the game.",
	"cmds - Shows commands",
	"serverhop - Hops to another server.",
	"sa / spam arrest [plr, off] - spam arrests the player.",
	"bullets [count] - sets guns bullets.",
	"remove/ removehomescreen - removes black film.",
	"",
	"--- Server ---",
	"kill [plr, _i, _g, _c, _n, _s] - Kills player.",
	"arrest [plr] - Arrests player.",
	"admin [plr] - Admins player.",
	"unadmin [plr] - Unadmins player.",
	"clearadmin - Clears all admins.",
	"loopkill / lk [plr, _i, _g, _c, _n, _s] - Loopkills player.",
	"unloopkill / unlk [plr] - Unloopkills player.",
	"clearloopkill / clk - Clears all loopkills.",
	"spike / lagspike [time] - lags server for the specified amount of seconds.",
	"toilet [plr] - Toilets player.",
	"snack [plr] - Snacks player.",
	"trash [plr] - Trashes player.",
	"crash - crashes server - thx Globals#9393",
	"endserver - disconnects everyone in the server (SWAT) - thx High#9991",
	"trap [plr] - Traps player.",
	"",
	"--- Toggles ---", 
	"antifling - antifling [on] and [off] (BETA)",
	"antishield - antishield [on] and [off]",
	"antiinvis - detects skiddy skid skids [on] and [off]",
	"localplayerhitbox / lph - toggles localplayer hitbox [on] and [off]",
	"killaura / ka - toggles killaura [on] and [off]",
	"anticrash - automatically on [on] and [off] to toggle.",
	"curvebul - curved bullets aimbot [on] and [off]",
	"antiafk - automatically on [on] and [off] to toggle.",
	"autoia / autoinfammo - autoinfammo [on] and [off]",
	"aguns / autoguns - autoguns [on] and [off]",
	"alock / autolock - autolock [on] and [off]",
	"auto / autorespawn - [on] and [off].",
	"doors - [on] and [off]",
	"windows - [on] and [off]",
	"walls - [on] and [off]",
	"fp / fastpunch - fastpunch [on] and [off]",
	"gui - gui [on] and [off].",
	"esp - esp [on] and [off].",
	"espteams - team color matching for esp [on] and [off].",
	"on / off - Turns all toggles [on] or [off].",
	"",
	"--- Other ---",
	"view [plr] - views player.",
	"unview - stops viewing player.",
	"antilag / removetextures - PERMANENTLY removes textures.",
	"brightness / bri [amount] - sets lighting brightness.",
	"fly - turns on fly.",
	"unfly - turns off fly.",
	"flyspeed - changes fly speed.",
	"noclip - turns on noclip.",
	"clip - turns off noclip.",
	"ws / walkspeed - sets walkspeed",
	"jp / jumppower - sets jumppower",
	"gv / gravity - sets gravity",
	"hh / hipheight - sets hipheight",
	"rws / resetwalkspeed - resets walkspeed",
	"rjp / resetjumppower - resets jumppower",
	"rgv / resetgravity - resets gravity",
	"rhh / resethipheight - resets hipheight",
	"quit - closes roblox.",
	"brag - chats about this script.",
	"getusers - gets scorpion admin users.",
	"",
	"--- Teleports --- thx FATE#1646",
	"nex - teleports to nexus.",
	"yar - teleports to yard.",
	"arm - teleports to armory.",
	"sew - teleports to sewers.",
	"cbase - teleports to crim base.",
	"garage - teleports to garage.",
	"tower - teleports to yard tower.",
	"bus - teleports to bus stop.",
	"bridge - teleports to under the bridge.",
	"store - teleports to the store.",
	"gas - teleports to the gas station.",
	"hell - teleports to hell.",
	"cafe - teleports to prison cafe.",
	"cell - teleports to prison cells.",
	"roof - teleports to prison roof.",
	"gate - teleports to prison gate.",
	"crat - teleports to crates.",
	"barn - teleports to barn.",
	"house - teleports to houses.",
	"spawn - teleports to spawn.",
	"yum - teleports to food in cafe.",
	"cage - teleports to cage.",
	"flag - teleports to flag in yard.",
	"back - teleports to back.",
	"power - teleports to power lines.",
	"office - teleports to office.",
	"secret - teleports to secret ;)",
	"safe - teleports to safe place.",
	"empty - teleports to empty.",
	"gtower - teleports to guard tower.",
	"4walls - teleports to an area you cant escape.",
	"bum - teleports to hitchhiking area",
	"visitor - teleports to visitor area in prison.",
	"dungeon - teleports to sex dungeon.",
	"grass - teleports to grass.",
	"vent - teleports to vent.",
	"lot - teleports to parking lot.",
	"candy - teleports to vending machine.",
	"meeting - teleports to meeting room",
	"unknown - teleports to U N K O W N . . .",
	"mountain - teleports to mountain.",
}

longestText = 0

for i,v in pairs(allcmds) do
	clone = TextLabel:Clone()
	clone.Parent = Padding
	clone.Text = TextLabel.Text..v
	textSize = game:GetService("TextService"):GetTextSize(
	TextLabel.Text..v,
	TextLabel.TextSize,
	TextLabel.Font,
	TextLabel.AbsoluteSize
	)
	if textSize.X > longestText then
		longestText = textSize.X
	end
	if IsEven(i) then
		clone.TextColor3 = Color3.fromRGB(255,255,255)
	else
		clone.TextColor3 = Color3.fromRGB(125,125,125)
	end
	clone.LayoutOrder = i
end

Padding.CanvasSize = UDim2.new(0,longestText,0,TextLabel.TextSize * #allcmds)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if prefix == "/" then
		if key == ";" and ScorpionAdmin.Enabled then
			Input:CaptureFocus()
		end
	else
		if key == prefix and ScorpionAdmin.Enabled then
			Input:CaptureFocus()
		end
	end
end)

function changeprefix(prefix_text)
	prefix = prefix_text
	Input.PlaceholderText = "Press "..prefix.." to focus command bar."
end

local admins = {}
local states = {}
local connections = {} 
local loopkills = {}

states.noclip = false

flySpeed = 1

bodyGyro = Instance.new("BodyGyro", game:GetService("Players").LocalPlayer.Character.Torso)
bodyGyro.P = 0
bodyGyro.MaxTorque = Vector3.new(0,0,0)
bodyGyro.CFrame = game:GetService("Players").LocalPlayer.Character.Torso.CFrame

bodyVelocity = Instance.new("BodyVelocity", game:GetService("Players").LocalPlayer.Character.Torso)
bodyVelocity.MaxForce = Vector3.new(0,0,0)
bodyVelocity.Velocity = Vector3.new(0,0,0)

Controls = {"w","s","a","d","e","q"}
ControlInd = {1,-1,-1,1,-1,1}
ControlStatus = {w = 0,s = 0,a = 0,d = 0,e = 0,q = 0,}

function startFly()
	pcall(function()
		bodyGyro:Destroy()
		bodyVelocity:Destroy()
		bodyGyro = nil
		bodyVelocity = nil
	end) pcall(function()
		bodyGyro = Instance.new("BodyGyro", game:GetService("Players").LocalPlayer.Character.Torso)
		bodyGyro.P = 0
		bodyGyro.MaxTorque = Vector3.new(0,0,0)
		bodyGyro.CFrame = game:GetService("Players").LocalPlayer.Character.Torso.CFrame

		bodyVelocity = Instance.new("BodyVelocity", game:GetService("Players").LocalPlayer.Character.Torso)
		bodyVelocity.MaxForce = Vector3.new(0,0,0)
		bodyVelocity.Velocity = Vector3.new(0,0,0)

		flying = true
		bodyGyro.P = 9e4
		bodyGyro.MaxTorque = Vector3.new(9e4,9e4,9e4)
		bodyGyro.CFrame = game:GetService("Players").LocalPlayer.Character.Torso.CFrame

		bodyVelocity.MaxForce = Vector3.new(9e4,9e4,9e4)
		bodyVelocity.Velocity = Vector3.new(0,0,0)
	end)
end

function endFly()
	pcall(function()
		flying = false

		bodyGyro.P = 0
		bodyGyro.MaxTorque = Vector3.new(0,0,0)
		bodyGyro.CFrame = game:GetService("Players").LocalPlayer.Character.Torso.CFrame

		bodyVelocity.MaxForce = Vector3.new(0,0,0)
		bodyVelocity.Velocity = Vector3.new(0,0,0)
		game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
		bodyGyro:Destroy()
		bodyVelocity:Destroy()
		bodyGyro = nil
		bodyVelocity = nil
	end)
end

connection = game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
	endFly()
end)
table.insert(connections, connection)

game:GetService("RunService").RenderStepped:Connect(function()
	if flying then
		bodyGyro.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.Torso.Position, workspace.CurrentCamera.CFrame.p) * CFrame.Angles(0,math.rad(180),0)
		bodyVelocity.Velocity = ((bodyGyro.CFrame.lookVector + Vector3.new(0,0.25,0)) * (ControlStatus['w']+ControlStatus['s'])) + ((bodyGyro.CFrame * CFrame.new(ControlStatus['a']+ControlStatus['d'],(ControlStatus['q']+ControlStatus['e']),0).p) - (bodyGyro.CFrame.p))
		game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = true
	end
end)

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	for i,v in pairs(Controls) do
		if key == v then
			ControlStatus[key] = ControlInd[i]*flySpeed*25
		end
	end
end)

game:GetService("Players").LocalPlayer:GetMouse().KeyUp:Connect(function(key)
	for i,v in pairs(Controls) do
		if key == v then
			ControlStatus[key] = ControlInd[i]*0
		end
	end
end)

states.anticrash = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local ReplicateEvent = ReplicatedStorage:WaitForChild("ReplicateEvent")

local Connections = getconnections(ReplicateEvent.OnClientEvent)

function DisableShootEvent()
	states.anticrash = true
	for _,v in pairs(Connections) do
		v:Disable()
	end
end

function EnableShootEvent()
	states.anticrash = false
	for _,v in pairs(Connections) do
		v:Enable()
	end
end

ReplicateEvent.OnClientEvent:Connect(function(Bullets)
	if states.anticrash and (not ANTI_CRASH_DISABLED) then
	    if #Bullets <= 10 then
	        local ProcessedBullets = {}

	        for i = 1, #Bullets do
	            if Bullets[i].Distance <= 1000 then
	                table.insert(ProcessedBullets, Bullets[i])
	            end
	        end

	        for i,v in pairs(Connections) do
	            v.Function(Bullets)
	        end
	    end
	end
end)

DisableShootEvent()

--[[ Command Functions ]]

function getBoolFromString(str)
	local yes = {'true', 'yes', 'y', 'on'} 
	local no = {'false', 'no', 'n', 'off'}
	for i,v in pairs(yes) do yes[v] = true end 
	for i,v in pairs(no) do no[v] = true end 
	if yes[str] then 
		return true 
	elseif no[str] then 
		return false 
	else
		return nil 
	end
end 
local function GetPlayerFromString(nameString)
	if not nameString then return end 
	local matches= {}
	for _, player in ipairs (game.Players:GetPlayers()) do
		if string.lower(player.Name):match(string.lower(nameString)) then
			table.insert(matches, player)
		end
	end
	if #matches== 1 then
		return matches[1]
	else
		return nil
	end
end

function notify(message)
	local combinemsg = ""
	local splitmsg = TextLabel_3.Text:split("\n")

	splitmsg[1] = splitmsg[2]
	splitmsg[2] = splitmsg[3]
	splitmsg[3] = splitmsg[4]
	splitmsg[4] = splitmsg[5]
	splitmsg[5] = splitmsg[6]
	splitmsg[6] = splitmsg[7]
	splitmsg[7] = splitmsg[8]
	splitmsg[8] = "[*] "..message

	for _,v in pairs(splitmsg) do
		combinemsg = combinemsg..v.."\n"
	end

	TextLabel_3.Text = combinemsg:sub(1,#combinemsg-1)
end

function GetPlayersInTeam(TeamName)
	return game:GetService("Teams")[tostring(TeamName)]:GetPlayers()
end

function chat(message)
	local args = {
		[1] = message,
		[2] = "All"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

function GetRootOri()
	a1,a2,a3 = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:ToOrientation()
	return CFrame.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Y, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Z) * CFrame.fromOrientation(0,a2,0)
end

function bigboibullet(player, distance, pos)
	local PL = game.Players.LocalPlayer
	if not player then return end 
	local head = workspace:WaitForChild(player.Name,0.3) and workspace:WaitForChild(player.Name,0.3):WaitForChild("Head",0.3)
	local gun = PL:FindFirstChild("Backpack"):FindFirstChild("Remington 870") or workspace:WaitForChild(PL.Name):FindFirstChild("Remington 870")
	if not gun then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	end
	gun = PL:FindFirstChild("Backpack"):FindFirstChild("Remington 870") or workspace:WaitForChild(PL.Name):FindFirstChild("Remington 870")
	if player and head and gun then
		game.ReplicatedStorage.ShootEvent:FireServer({
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
			{Hit = head,RayObject = Ray.new(Vector3.new(),Vector3.new()),Distance = distance, Cframe = pos},
		},gun)
	end
end


function smite(player, distance, time)  
	local player = GetPlayerFromString(player) 
	local RService = game:GetService("RunService")
	if player then 
		local character = workspace:FindFirstChild(player.Name) 
		RService:BindToRenderStep(player.Name..'smite', math.huge, function()
			bigboibullet(player, distance or 150, character.HumanoidRootPart.CFrame)
		end)
		if time then 
			delay(time, function()
				pcall(function()
					RService:UnbindFromRenderStep(player.name..'smite')
				end)
			end)
		end
	end
end



function bring(target,u)
	speaker = game.Players.LocalPlayer
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	wait()
	if target ~= nil then
		local NormPos = speaker.Character.HumanoidRootPart.CFrame
		savecf = speaker.Character.HumanoidRootPart.CFrame
		workspace.Remote.loadchar:InvokeServer()
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		wait()
		speaker.Character.HumanoidRootPart.CFrame = savecf
		wait()
		repeat wait() until speaker.Character ~= nil and speaker.Character.HumanoidRootPart
		wait(0.3)

		local hrp = speaker.Character.HumanoidRootPart
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = speaker.Character.HumanoidRootPart
		local hrp2 = target.Character.HumanoidRootPart
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
		for i = 1,10 do
			wait()
			hrp.CFrame = NormPos
		end
		workspace.Remote.loadchar:InvokeServer()
		wait()
		querty = NormPos * CFrame.Angles(math.rad(-180), 0, 0)
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = querty
	end
end

function teleport(target,position)
	speaker = game.Players.LocalPlayer
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	wait()
	if target ~= nil then
		htrjh4treg = speaker.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
		local NormPos = speaker.Character.HumanoidRootPart.CFrame
		savecf = speaker.Character.HumanoidRootPart.CFrame
		workspace.Remote.loadchar:InvokeServer()
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		wait()
		speaker.Character.HumanoidRootPart.CFrame = savecf
		wait()
		repeat wait() until speaker.Character ~= nil and speaker.Character.HumanoidRootPart
		wait(0.3)

		local hrp = speaker.Character.HumanoidRootPart
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = speaker.Character.HumanoidRootPart
		local hrp2 = target.Character.HumanoidRootPart
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
		for i = 1,10 do
			wait()
			hrp.CFrame = NormPos * CFrame.Angles(math.rad(90), 0, 0)
		end
		workspace.Remote.loadchar:InvokeServer()
		wait()
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = htrjh4treg
	end
end

function team(team)
	if team == "n" or team == "c" or team == "i" or team == "g" then
		if team == "n" then
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		if team == "c" then
			Bruh = workspace["Criminals Spawn"].SpawnLocation
			Bruh.CanCollide = false
			Bruh.Transparency = 1
			Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait()
			Bruh.CanCollide = true
			Bruh.Transparency = 0
			Bruh.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		end
		if team == "i" then
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end
		if team == "g" then
			workspace.Remote.TeamEvent:FireServer("Bright blue")
		end
	else
		if team ~= nil then
			savedcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			if arg3 ~= nil then
				workspace.Remote.loadchar:InvokeServer("",team.." "..arg3)
			else
				workspace.Remote.loadchar:InvokeServer("",team)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcframe
		else
			return nil
		end
	end
end

function chatnotify(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {Text = text; Color = Color3.new(50,255,50); Font = Enum.Font.SourceSans; FontSize = Enum.FontSize.Size42})
end

camera = workspace.CurrentCamera

function toScreen(a) -- World to screen
	a,b = camera:WorldToViewportPoint(a)
	return Vector2.new(a.X,a.Y),b
end

function onScreen(a) -- World to screen
	a,b = camera:WorldToViewportPoint(a)
	return b
end

function getPlayers() -- Get players
	return game.Players:GetPlayers()
end

function getSkeleton(plr) -- Create skeleton function
	a = {}
	pcall(function() -- Head
		table.insert(a,{
			toScreen((plr.Character.Head.CFrame).p),
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p),
			((not onScreen((plr.Character.Head.CFrame).p)) or (not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p)))
		}) 
	end)
	pcall(function() -- Left Shoulder
		table.insert(a,{
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p),
			toScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,.5,0)).p),
			((not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p)) or (not onScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,.5,0)).p)))
		}) 
	end)
	pcall(function() -- Right Shoulder
		table.insert(a,{
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p),
			toScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,.5,0)).p),
			((not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p)) or (not onScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,.5,0)).p)))
		}) 
	end)
	pcall(function() -- Left Hip
		table.insert(a,{
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p),
			toScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,.5,0)).p),
			((not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p)) or (not onScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,.5,0)).p)))
		}) 
	end)
	pcall(function() -- Right Hip
		table.insert(a,{
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p),
			toScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,.5,0)).p),
			((not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p)) or (not onScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,.5,0)).p)))
		}) 
	end)
	pcall(function() -- Torso
		table.insert(a,{
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p),
			toScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p),
			((not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,1,0)).p)) or (not onScreen((plr.Character.Torso.CFrame*CFrame.new(0,-1,0)).p)))
		})
	end)
	pcall(function() -- Left Arm
		table.insert(a,{
			toScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,.5,0)).p),
			toScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,-.5,0)).p),
			((not onScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,.5,0)).p)) or (not onScreen((plr.Character['Left Arm'].CFrame*CFrame.new(0,-.5,0)).p)))
		}) 
	end)
	pcall(function() -- Right Arm
		table.insert(a,{
			toScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,.5,0)).p),
			toScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,-.5,0)).p),
			((not onScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,.5,0)).p)) or (not onScreen((plr.Character['Right Arm'].CFrame*CFrame.new(0,-.5,0)).p)))
		}) 
	end)
	pcall(function() -- Left Leg
		table.insert(a,{
			toScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,.5,0)).p),
			toScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,-.5,0)).p),
			((not onScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,.5,0)).p)) or (not onScreen((plr.Character['Left Leg'].CFrame*CFrame.new(0,-.5,0)).p)))
		}) 
	end)
	pcall(function() -- Right Leg
		table.insert(a,{
			toScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,.5,0)).p),
			toScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,-.5,0)).p),
			((not onScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,.5,0)).p)) or (not onScreen((plr.Character['Right Leg'].CFrame*CFrame.new(0,-.5,0)).p)))
		}) 
	end)
	return a
end

lines = {} -- Create line table

esp = false
espTeams = false
espColor = Color3.fromRGB(0, 255, 0)

function espToggle(a)
	if a == true then
		esp = true
	elseif a == false then
		esp = false
		for _,v in pairs(lines) do
			if v then
				v:Remove()
			end
		end

		lines = {} 
	end
end

coroutine.wrap(function()
	while game:GetService('RunService').RenderStepped:Wait() do
		if esp then
			for i,v in pairs(lines) do
				if v then
					v:Remove()
				end
			end

			lines = {} 

			for _,player in pairs(getPlayers()) do -- Looping through players
				for _,v in pairs(getSkeleton(player)) do -- Looping through skeleton
					if not v[3] then -- Checking if on screen
						local Line = Drawing.new("Line") -- Create line
						Line.Visible = true
						Line.From = v[1]
						Line.To = v[2]
						if espTeams then
							Line.Color = player.TeamColor.Color
						else
							Line.Color = espColor
						end
						Line.Thickness = 2
						Line.Transparency = 1
						table.insert(lines, Line) -- Inserting line to table
					end
				end
			end
		end
	end
end)()

function arrest(plr, times)
	local times = times or 1
	if plr.TeamColor.Name == "Really red" then
		local m_char = workspace:FindFirstChild(UserName)
		local m_h = m_char and m_char:FindFirstChild("HumanoidRootPart")
		local plr_char = workspace:FindFirstChild(plr.Name)
		local plr_h = plr_char and plr_char:FindFirstChild("HumanoidRootPart")
		if m_char and m_h and plr_char and plr_h then 
			local savedcframe = m_h.CFrame
			repeat 
				m_h.CFrame = plr_h.CFrame * CFrame.new(0,0,1.3)
				local args = {plr_char:FindFirstChild("Head")}
				for i=1,times do 
					workspace.Remote.arrest:InvokeServer(unpack(args))
				end
			until plr_char.Head:FindFirstChild("handcuffedGui")
			m_char.Humanoid.Sit = false
			m_h.CFrame = savedcframe
		end
	end
end

curved_bullets = false

local function a()
	local Player = game.Players.LocalPlayer
	local Mouse = Player:GetMouse()

	local function Draw(point1, point2)
		local part = Instance.new('Part',workspace)
		part.Size = Vector3.new(0.1,0.1,0.1)
		part.Anchored = true
		part.CanCollide = false
		part.Material = Enum.Material.Neon
		part.Transparency = 0.5
		part.Color = Color3.fromRGB(255,255,0)

		local magnitude = (point1 - point2).magnitude
		part.Size = Vector3.new(part.Size.X, part.Size.Y, magnitude)
		part.CFrame = CFrame.new(point1:Lerp(point2, 0.5),point2)

		game:GetService('Debris'):AddItem(part, 0.05)
	end

	local function GetClosestVector3(vecPoint)
		local closestPlayer, smallestMagnitude = nil,math.huge

		for _, player in pairs(game.Players:GetPlayers()) do
		     local distance = player:DistanceFromCharacter(vecPoint)
		     if distance < smallestMagnitude and player.TeamColor ~= game.Players.LocalPlayer.TeamColor then
		          smallestMagnitude = distance
		          closestPlayer = player
		     end
		end

		return closestPlayer
	end

	local Debounce = false

	local function Click()
		local Gun = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Tool')
		local ClickPos = Mouse.Hit.p
		local Closest = GetClosestVector3(ClickPos)

		local function quadBezier(t, p0, p1, p2)
			return (1 - t)^2 * p0 + 2 * (1 - t) * t * p1 + t^2 * p2
		end

		local function visuals()
			Gun.Handle.FireSound:Play()
			game:GetService("ReplicatedStorage").SoundEvent:FireServer(Gun.Handle.FireSound,Gun)
			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Gun.GunInterface.Shoot2H):Play()
		end

		if curved_bullets and Gun and Closest and workspace:FindFirstChild(Closest.Name) and workspace[Closest.Name]:FindFirstChild('Head') and not Debounce then
			Debounce = true
			local Muzzle = Gun.Muzzle
			local MuzzlePos = Muzzle.Position
			local GunStatus = require(Gun.GunStates)

			local Dots = {}
			local BulletTable = {}

			visuals()

			GunStatus.CurrentAmmo = 0
			GunStatus.MaxAmmo = 0

			for i = 1,GunStatus.Bullets do
				Dots = {}
				local Count = 1

				local Spread = (MuzzlePos-Closest.Character.Head.Position).magnitude/GunStatus.Spread
				Spread = Vector3.new(math.random(-Spread,Spread),math.random(-Spread,Spread),math.random(-Spread,Spread))

				for time = 0,1,0.03 do
					table.insert(Dots,quadBezier(time, MuzzlePos, ClickPos+Spread, Closest.Character.Head.Position))
				end
				
				for index,dot in pairs(Dots) do
					if index < #Dots then
						local Point1 = dot
						local Point2 = Dots[index+1]

						local RayObject = Ray.new(Point1, Point2)
						local Distance = (Point1-Point2).magnitude
						local Cframe = CFrame.new(Point1:Lerp(Point2, 0.5),Point2)

						if Count == 1 then
							table.insert(BulletTable, {["RayObject"] = RayObject,["Distance"] = Distance,["Cframe"] = Cframe,["Hit"] = Closest.Character.Head})
						else
							table.insert(BulletTable, {["RayObject"] = RayObject,["Distance"] = Distance,["Cframe"] = Cframe,["Hit"] = nil})
						end
						Draw(dot, Dots[index+1])
						Count = Count + 1
					end
				end
			end

			local FireRate = GunStatus.FireRate

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable,Gun)

			wait(FireRate)
			Debounce = false
		else
			wait()
		end
	end

	local Button1Down = false

	Mouse.Button1Down:Connect(function()
		local Gun = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Tool')
		if Gun and require(Gun.GunStates).AutoFire then
			Button1Down = true
			repeat Click() until not Button1Down
		elseif Gun then
			Click()
		end
	end)

	Mouse.Button1Up:Connect(function()
		Button1Down = false
	end)
end

a()

local function outlinePart(part)
	if part ~= nil then
		local SelectionBox = Instance.new("SelectionBox",part)

		SelectionBox.Color3 = Color3.fromRGB(255, 255, 255)
		SelectionBox.LineThickness = 0.01
		SelectionBox.Adornee = part
		SelectionBox.Name = 'Outline'
		return SelectionBox
	end
end

local function b()
	game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
		if states.LOCALPLAYER_HITBOX then
			for _,Instance in pairs(Character:GetChildren()) do
				if Instance:IsA('Part') then
					outlinePart(Instance)
				end
			end
			Character.ChildAdded:Connect(function(Instance)
				if Instance:IsA('Accessory') then
					outlinePart(Instance.Handle)
				elseif Instance:IsA('Part') then
					outlinePart(Instance)
				end
			end)
		end
	end)
end

b()

function kill(plr)
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 

	local m_char = workspace:FindFirstChild(UserName)
	local old_team = game.Players.LocalPlayer.TeamColor.Name
	local change_team = old_team == plr.TeamColor.Name

	game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
		m_char = newChar 
		backpack = game.Players.LocalPlayer.Backpack 
	end)

	if change_team then
		states.previous_position = m_char:WaitForChild("HumanoidRootPart",0.4).CFrame 
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name) 
		m_char.HumanoidRootPart.CFrame = states.previous_position
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 
	end

	local args = {
			[1] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [2] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [3] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [4] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [5] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [6] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [7] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}, [8] = {
			["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
			["Distance"] = 0, 
			["Cframe"] = CFrame.new(), 
			["Hit"] = workspace[plr.Name].Head
		}
	}

	game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, game.Players.LocalPlayer.Backpack["Remington 870"])
end

function killTeam(brickcolor)
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

	for _,plr in pairs(game.Players:GetPlayers()) do
		if plr.TeamColor == brickcolor then
			kill(plr)
		end
	end
end

function killAll()
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

	for _,plr in pairs(game.Players:GetPlayers()) do
		kill(plr)
	end
end

function killColors()
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

	for _,plr in pairs(game.Players:GetPlayers()) do
		if plr.TeamColor.Name ~= ('Really red' or 'Bright orange' or 'Bright blue' or 'Medium stone grey') then
			kill(plr)
		end
	end
end

function funct(var1, tab1)
	for _,v in pairs(tab1) do
		if v == var1 then
			return true
		end
	end
end

function dong(gun)
	if gun == "ak-47" or gun == "ak47" or gun == "ak" then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["AK-47"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0.9,2,1)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["AK-47"].Parent = game.Players.LocalPlayer.Character
	end
	if gun == "remington-870" or gun == "remington870" or gun == "remington" or gun == "rem" then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0.9,2,1)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
	end
	if gun == "m9" then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["M9"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(0.9,2,0)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["M9"].Parent = game.Players.LocalPlayer.Character
	end
	if gun == "long" then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		game.Players.LocalPlayer.Backpack["M9"].Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Backpack["AK-47"].Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
		wait()
		game.Players.LocalPlayer.Character["M9"].GripPos = Vector3.new(0.9,2,0)
		game.Players.LocalPlayer.Character["AK-47"].GripPos = Vector3.new(0.9,2,3)
		game.Players.LocalPlayer.Character["Remington 870"].GripPos = Vector3.new(0.9,2,6)
		wait()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
		wait()
		game.Players.LocalPlayer.Backpack["M9"].Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Backpack["AK-47"].Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Backpack["Remington 870"].Parent = game.Players.LocalPlayer.Character
	end
end

function command(cmd, player)
	if player and admins[player.UserId] then 
		return arg1 == admins[player.UserId].settings.prefix..cmd
	end
	return arg1 == prefix..cmd
end

states.ANTI_AFK = true

--[[ Commands ]]

function LocalPlayerChatted(msg)
	split_message = msg:split(" ")
	arg1 = split_message[1]
	arg2 = split_message[2]
	arg3 = split_message[3]
	for i = 4,#split_message do
		arg3 = arg3.." "..split_message[i]
	end
	if command("on") then
		states.AUTO_LOCK = true
		states.AUTO_RESPAWN = true
		states.ANTI_FLING = true
		states.AUTO_INF_AMMO = true
		states.AUTO_GUNS = true
		states.ANTI_SHIELD = true
		states.ANTI_INVIS = true
		notify("Set all to on.")
	end
	if command("off") then
		states.AUTO_LOCK = false
		states.AUTO_RESPAWN = false
		states.ANTI_FLING = false
		states.AUTO_INF_AMMO = false
		states.AUTO_GUNS = false
		states.ANTI_SHIELD = false
		states.ANTI_INVIS = false
		notify("Set all to off.")
	end
	if command("brag") then
		chat("Get Scorpion Admin! Best PL Admin Script! Only 1300 bobux or 5 USD! Made by vIesbain aka Vapin' Cat 7950")
		notify("Bragged to all skids.")
	end
	if command("closeroblox") or command("endrbx") or command('leave') or command('quit') then
		game:Shutdown()
	end
	if command("serverhop") or command("shop") then
		game:GetService('TeleportService'):Teleport(game.PlaceId)
	end
	if command("view") then
		viewing = GetPlayerFromString(arg2).Name
		notify("Viewing player.")
	end
	if command("unview") then
		viewing = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
		notify("Stopped viewing player.")
	end
	if command("clicktp") or command("ctp") then
		local plr = game:GetService("Players").LocalPlayer
		local mouse = plr:GetMouse()

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

		notify("Gave Click TP")
	end
	if command("spike") or command("lagspike") then
		smite(UserName, 10000, tonumber(arg2) or 25)
		notify("Spiked Server.")
	end
	if command("crash") then
		local decoded = game:GetService('HttpService'):JSONDecode(syn.request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body)
		hwid = ""

		for i, v in next, {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"} do
			if decoded.headers[v] then
				hwid = decoded.headers[v]
				break
			end
		end

		exploitname = "Undetermined"

		if syn then
			exploitname = "Synapse X"
		elseif SENTINEL_V2 then
			exploitname = "Sentinel"
		end

		crashJson = {
			embeds = {
				{
					title = "**__HWID__**",
					description = "`"..hwid.."`",
					fields = {
						{
							name = "**__Username:__**",
							value = "`"..UserName.."`",
							inline = true,
						},
						{
							name = "**__UserId:__**",
							value = "`"..tostring(UserId).."`",
							inline = true,
						},
						{
							name = "**__Hashed Ip Address:__**",
							value = "`"..syn.crypt.encrypt(game:service'HttpService':JSONDecode(game:HttpGet("https://wtfismyip.com/json")).YourFuckingIPAddress,'aoLzhDgxg6hpoEo3TwqYNMQSgoKAiaYmumnKFofYAjZKb0HooVRK1IciXRwSdMpV').."`",
							inline = true,
						},
						{
							name = "**__Exploit:__**",
							value = "`"..exploitname.."`",
							inline = true,
						},
						{
							name = "**__Game Link:__**",
							value = '[`'..game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Name..'`]('..'https://www.roblox.com/games/'..tostring(game.PlaceId)..'/'..' "Game Link")',
							inline = true,
						},
						{
							name = "**__Job Id:__**",
							value = "`"..game.JobId.."`",
							inline = true,
						},
						{
							name = "**__Account Age:__**",
							value = "`"..tostring(game.Players.LocalPlayer.AccountAge).."`",
							inline = true,
						},
						{
							name = "**__ROBLOX Premium:__**",
							value = "`"..tostring(game.Players.LocalPlayer.MembershipType == Enum.MembershipType.Premium).."`",
							inline = true,
						},
						{
							name = "**__Player Count:__**",
							value = "`"..tostring(#game.Players:GetPlayers()).."`",
							inline = true,
						},
					},
					footer = {
						text = "Crash Log"
					},
					timestamp = ""
				}
			}
		}

		syn.request(
			{
				Url = syn.crypt.decrypt(webhookUrls.crash,qwerty),
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				},
				Body = game:service("HttpService"):JSONEncode(crashJson)
			}
		)

		local PackageSize = 5000 -- How many bullets is sent through in one remote call. Thanks Globals
		local SendPackageAmountOfTimes =  5 -- How many times the remote should be called.

		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer

		local ItemHandler = workspace:WaitForChild("Remote").ItemHandler
		local ShootEvent = ReplicatedStorage:WaitForChild("ShootEvent")

		ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		local Tool = Players.LocalPlayer.Backpack["Remington 870"]

		local Packet = {
			RayObject = Ray.new(Vector3.new(-1, -1, -1), Vector3.new(1, 1, 1)),
			Distance = 2048,
			Cframe = CFrame.new(0, 0, 0),
			Hit = workspace:FindFirstChildOfClass("Part")
		}

		local Package = {}

		for i = 1, PackageSize do
			Package[i] = Packet
		end

		for i = 1, SendPackageAmountOfTimes do
			ShootEvent:FireServer(Package, Tool)
		end
	end
	if command("nex") or command("nexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.297546, 99.9900055, 2383.50928)
	end
	if command("yard") or command("yar") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(785.313904, 97.9999466, 2476.40723)
	end
	if command("armory") or command("arm") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(782.77533, 99.9900055, 2312.53613)
	end
	if command("sewer") or command("sew") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.633301, 78.7002792, 2249.14844)
	end
	if command("cbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-913.828125, 94.1287842, 2065.8103)
	end
	if command("garage") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.645264, 98.2000275, 2514.97485)
	end
	if command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(824.250122, 130.039948, 2587.96094)
	end
	if command("bus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-376.442291, 54.2000923, 1723.72534)
	end
	if command("bridge") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81.0300827, 11.099329, 1311.87549)
	end
	if command("store") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(434.462921, 11.4253635, 1183.47156)
	end
	if command("gas") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-512.839172, 54.3937874, 1666.99426)
	end
	if command("hell") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-568.503418, 10.8399124, 1414.12463)
	end
	if command("cafe") or command("caf") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924.767944, 99.9899597, 2289.30566)
	end
	if command("cell") or command("cel") or command("cells") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915.264282, 99.9899902, 2437.57007)
	end
	if command("roof") or command("rof") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(827.423523, 118.990005, 2329.62598)
	end
	if command("gate") or command("gat") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(503.799866, 102.03994, 2252.01831)
	end
	if command("crates") or command("crat") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(251.821915, 72.5167236, 2367.27686)
	end
	if command("barn") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-936.546631, 94.1287842, 1990.08435)
	end
	if command("houses") or command("house") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298.853241, 54.1751404, 2483.61841)
	end
	if command("spawn") or command("platform") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877.596741, 27.7899876, 2350.86572)
	end
	if command("food") or command("yum") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(892.924988, 99.9899597, 2220.40771)
	end
	if command("cage") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-292.095062, 74.2397537, 2030.41528)
	end
	if command("flag") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(724.799255, 129.352875, 2518.14087)
	end
	if command("back") or command("bac") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(968.299377, 100.390007, 2325.80688)
	end
	if command("power") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(926.566772, 131.871643, 2124.21411)
	end
	if command("office") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318.362366, 118.838844, 2005.66223)
	end
	if command("secret") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(698.988159, 99.9900055, 2360.90259)
	end
	if command("safe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-714.745117, 63.1439095, 2577.37939)
	end
	if command("empty") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.030426, 64.572464, 1812.73853)
	end
	if command("gtower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504.029572, 125.03994, 2308.05737)
	end
	if command("4walls") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1021.69067, 97.9999466, 2396.72119)
	end
	if command("bum") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980.914001, 66.6556778, 1821.96497)
	end
	if command("visitor") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(697.971741, 99.9900055, 2242.21411)
	end
	if command("dungeon") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(274.838928, 58.796154, 2378.58203)
	end
	if command("grass") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(654.269653, 90.4362411, 2474.74878)
	end
	if command("vent") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.434143, 124.389969, 2223.45947)
	end
	if command("lot") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-481.133789, 53.9686356, 1806.76917)
	end
	if command("candy") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(955.101563, 109.395134, 2341.72729)
	end
	if command("meeting") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789.343811, 103.199722, 2272.01416)
	end
	if command("unknown") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429.127075, 71.5994263, 1727.78857)
	end
	if command("mountain") then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1607.54736, 146.505753, 2702.39282)
	end
	if command("fly") or command("f") then
		if workspace:FindFirstChild(UserName) then
			startFly()
		end
		notify("Turned on fly.")
	end
	if command("flyspeed") or command("fs") then
		flySpeed = arg2
		notify("Changed fly speed.")
	end
	if command("nc") or command("noclip") then
		states.noclip = true
		notify("Turned on noclip.")
	end
	if command("c") or command("clip") then
		states.noclip = false
		notify("Turned off noclip.")
	end
	if command("brightness") or command("bri") then
		game.Lighting.Brightness = tonumber(arg2)
		game.Lighting.Ambient = Color3.fromRGB(tonumber(arg2),tonumber(arg2),tonumber(arg2))
		notify("Set brightness to "..arg2..".")
	end
	if command("removetextures") or command("antilag") then
		game:GetService("Lighting").Brightness = 0.6
		game:GetService("Lighting").ClockTime = 14
		game:GetService("Lighting").FogEnd = 100000
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		for _, v in pairs(game:GetDescendants()) do
		    pcall(function()
		        v.Material = Enum.Material.Plastic
		    end)
		end
		notify("Permanently turned on antilag.")
	end
	if command("unfly") or command("uf") then
		endFly()
		notify("Turned off fly.")
	end
	if command("doors") then
		if getBoolFromString(arg2) then
			game:GetService("Lighting").Doors.Parent = workspace
			notify("Restored doors.")
		else
			workspace.Doors.Parent = game:GetService("Lighting")
			notify("Deleted doors.")
		end
	end
	if command("antiafk") then
		if getBoolFromString(arg2) then
			states.ANTI_AFK = true
			notify("Antiafk toggled on.")
		else
			states.ANTI_AFK = false
			notify("Antiafk toggled off.")
		end
	end
	if command("windows") then
		if getBoolFromString(arg2) then
			for _,v in pairs(glassParts) do
				v[1].Parent = v[2]
			end
			notify("Restored windows.")
		else
			for _,v in pairs(glassParts) do
				v[1].Parent = game:GetService("Lighting")
			end
			notify("Deleted windows.")
		end
	end
	if command("walls") then
		if getBoolFromString(arg2) then
			for _,v in pairs(wallParts) do
				v[1].Parent = v[2]
			end
			grass.Parent = game:GetService("Lighting")
			notify("Restored walls.")
		else
			for _,v in pairs(wallParts) do
				v[1].Parent = game:GetService("Lighting")
			end
			grass.Parent = workspace
			notify("Deleted walls.")
		end
	end
	if command("curvedbullets") or command("curvebul") then
		if getBoolFromString(arg2) then
			curved_bullets = getBoolFromString(arg2)
			notify("Toggled curved bullets on.")
		else
			curved_bullets = getBoolFromString(arg2)
			notify("Toggled curved bullets off.")
		end
	end
	if command("anticrash") then
		if getBoolFromString(arg2) then
			DisableShootEvent()
			notify("Turned anticrash",arg2..".")
		else
			EnableShootEvent()
			notify("Turned anticrash",arg2..".")
		end
	end
	if command("esp") then
		if getBoolFromString(arg2) then
			espToggle(getBoolFromString(arg2))
			notify("Turned esp",arg2..".")
		else
			espToggle(getBoolFromString(arg2))
			notify("Turned esp",arg2..".")
		end
	end
	if command("espteams") then
		if getBoolFromString(arg2) then
			espTeams = (getBoolFromString(arg2))
			notify("Turned esp teams",arg2..".")
		else
			espTeams = (getBoolFromString(arg2))
			notify("Turned esp teams",arg2..".")
		end
	end
	if command("shield") then
		local lastPos = GetRootOri()
		local lastCam = workspace.CurrentCamera.CFrame
		game:GetService("Workspace").Remote.loadchar:InvokeServer(nil,"Bright blue")
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
		workspace.CurrentCamera.CFrame = lastCam
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		notify("Gave shield.")
	end
	if command("armor") then
		local lastPos = GetRootOri()
		local lastCam = workspace.CurrentCamera.CFrame
		game:GetService("Workspace").Remote.loadchar:InvokeServer(nil,"Bright blue")
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
		workspace.CurrentCamera.CFrame = lastCam
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		notify("Gave armor.")
	end
	if command('getusers') then
		chatnotify('Scorpion Users:')
		for _,v in pairs(game.Players:GetPlayers()) do
			if IsInGroup(v.UserId,8325547) or IsFriendsWith(v.UserId,1960197260) then
				chatnotify(v.Name)
			end
		end
	end
	if command("kit") then
		local lastPos = GetRootOri()
		local lastCam = workspace.CurrentCamera.CFrame
		game:GetService("Workspace").Remote.loadchar:InvokeServer(nil,"Bright blue")
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
		workspace.CurrentCamera.CFrame = lastCam
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		notify("Gave kit.")
	end
	if command("guns") or command("gun") then
		if ownsSwat then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)

			local plr = game:GetService("Players").LocalPlayer
			local mouse = plr:GetMouse()

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

			if game.Players.LocalPlayer.TeamColor == "Bright blue" then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
			end

			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

			local plr = game:GetService("Players").LocalPlayer
			local mouse = plr:GetMouse()

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
		end

		if states.AUTO_INF_AMMO then
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:FindFirstChild("GunStates") then
					local sM = require(v.GunStates)
					sM["MaxAmmo"] = math.huge
					sM["StoredAmmo"] = math.huge
					sM["AmmoPerClip"] = math.huge
					sM["CurrentAmmo"] = math.huge
					sM["ReloadTime"] = 0
				end
			end
			for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:FindFirstChild("GunStates") and v:IsA("Tool") then
					local sM = require(v.GunStates)
					sM["MaxAmmo"] = math.huge
					sM["StoredAmmo"] = math.huge
					sM["AmmoPerClip"] = math.huge
					sM["CurrentAmmo"] = math.huge
					sM["ReloadTime"] = 0
				end
			end
		end
		notify("Gave guns.")
	end
	if command("lock") then
		game.Players.LocalPlayer.Character:FindFirstChild("ClientInputHandler"):Destroy()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		notify("Locked.")
	end
	if command("infammo") or command("infiniteammo") or command("ia") then
		local sM = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		sM["MaxAmmo"] = math.huge
		sM["StoredAmmo"] = math.huge
		sM["AmmoPerClip"] = math.huge
		sM["CurrentAmmo"] = math.huge
		sM["ReloadTime"] = 0
		notify("Gave infinite ammo.")
	end
	if command("autolock") or command("alock") then
		states.AUTO_LOCK = getBoolFromString(arg2)
		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set autolock to "..arg2)
		end
	end
	if command("autoinfammo") or command("autoia") then
		states.AUTO_INF_AMMO = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set autoinfammo to "..arg2)
		end

		if states.AUTO_INF_AMMO then
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:FindFirstChild("GunStates") then
					local sM = require(v.GunStates)
					sM["MaxAmmo"] = math.huge
					sM["StoredAmmo"] = math.huge
					sM["AmmoPerClip"] = math.huge
					sM["CurrentAmmo"] = math.huge
					sM["ReloadTime"] = 0
				end
			end
		end
	end
	if command("ws") or command("walkspeed") or command("speed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg2
		notify("Set "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("jp") or command("jumppower") or command("jumpheight") or command("jump") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg2
		notify("Set "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("hh") or command("hipheight") or command("hheight") or command("hiph") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = arg2
		notify("Set "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("grav") or command("gravity") or command("gv") then
		workspace.Gravity = arg2
		notify("Set "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("gui") and arg2 == "on" then
		ScorpionAdmin.Enabled = true
		notify("Toggled Gui "..arg2..".")
	end
	if command("gui") and arg2 == "off" then
		ScorpionAdmin.Enabled = false
		notify("Toggled Gui "..arg2..".")
	end
	if command("rws") or command("rwalkspeed") or command("rspeed") or command("resetws") or command("resetwalkspeed") or command("resetspeed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		notify("Reset "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("rjp") or command("rjumppower") or command("rjumpheight") or command("resetjump") or command("resetjp") or command("resetjumppower") or command("resetjumpheight") or command("resetjump") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		notify("Reset "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("rhh") or command("rhipheight") or command("rhheight") or command("resethiph") or command("resethh") or command("resethipheight") or command("resethheight") or command("resethiph") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		notify("Reset "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("rgrav") or command("rgravity") or command("rgv") or command("resetgrav") or command("resetgravity") or command("resetgv") then
		workspace.Gravity = 196.2
		notify("Reset "..arg1:sub(2).." to "..tostring(arg2))
	end
	if command("remove") or command("removehomescreen") then
		notify("Removed Home Screen.")
		while true do
			wait()
			local fuck = game:GetService("StarterGui")
			local you = game:GetService("Players").LocalPlayer
			local nigger = workspace.CurrentCamera 


			you.PlayerGui.Home.intro.Visible = false 
			you.PlayerGui.Home.fadeFrame.Visible = false 
			nigger.CameraType = Enum.CameraType.Custom 
			nigger.CameraSubject = workspace:WaitForChild(you.Name,0.4) 
			fuck:SetCoreGuiEnabled(Enum.CoreGuiType.All,true)
		end
	end
	if command("to") then
		local player = GetPlayerFromString(arg2) 
		if player then 
			notify("Teleported to "..GetPlayerFromString(arg2).Name)
			local char = workspace:FindFirstChild(player.Name)
			local hum = char and char:FindFirstChild("HumanoidRootPart")
			local head = char and char:FindFirstChild("Head")

			local m_char = workspace:FindFirstChild(UserName)
			local m_hum = m_char and m_char:FindFirstChild("HumanoidRootPart")
			if m_char and m_hum and char and (char or head) then 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hum and hum.CFrame or head.CFrame
			end
		else
			notify("No player found.")
		end
	end
	if command("rj") then
		notify("Rejoining...")
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
	if command("re") or command("respawn") then
		notify("Respawned Player.")
		local lastPos = GetRootOri()
		local lastCam = workspace.CurrentCamera.CFrame
		game:GetService("Workspace").Remote.loadchar:InvokeServer()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
		workspace.CurrentCamera.CFrame = lastCam
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	end
	if command("cmds") then
		Commands.Visible = true
	end
	if command("auto") or command("autore") then
		states.AUTO_RESPAWN = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("fp") or command("fastpunch") or command("fpunch") then
		states.FAST_PUNCH = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("autoguns") or command("aguns") or command("aug") then
		states.AUTO_GUNS = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("lph") or command("localplayerhitbox") or command("lphitbox") then
		states.LOCALPLAYER_HITBOX = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
			if getBoolFromString(arg2) then
				for _,Instance in pairs(Character:GetChildren()) do
					if Instance:IsA('Part') then
						outlinePart(Instance)
					elseif Instance:IsA('Accessory') then
						outlinePart(Instance:FindFirstChild('Handle'))
					end
				end
			else
				for _,Instance in pairs(Character:GetChildren()) do
					if Instance:IsA('Part') then
						if Instance:FindFirstChildOfClass('SelectionBox') then
							Instance:FindFirstChildOfClass('SelectionBox'):Destroy()
						end
					elseif Instance:IsA('Accessory') then
						if Instance:FindFirstChild('Handle'):FindFirstChildOfClass('SelectionBox') then
							Instance:FindFirstChild('Handle'):FindFirstChildOfClass('SelectionBox'):Destroy()
						end
					end
				end
			end
		end
	end
	if command("outputchat") or command("opc") or command("opct") then
		states.OUTPUT_CHAT = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("antishield") or command("ashield") or command("antish") then
		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
			states.ANTI_SHIELD = getBoolFromString(arg2)
		end
	end
	if command("antiinvis") or command("ainvis") or command("ainv") then
		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
			states.ANTI_INVIS = getBoolFromString(arg2)
		end
	end
	if command("test") then
		notify(arg1)
		notify(arg2)
		notify(arg3)
	end
	if command("antifling") or command("antif") then
		states.ANTI_FLING = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("killaura") or command("ka") then
		states.KILLAURA = getBoolFromString(arg2)

		if getBoolFromString(arg2) == nil then
			notify(arg2.."not a valid state.")
		else
			notify("Set "..arg1:sub(2).." to "..arg2)
		end
	end
	if command("dong") then
		dong(arg2:lower())
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..arg2..".")
	end
	if command("admin") then
		local player = GetPlayerFromString(arg2)
		if player and not admins[player.UserId] then 
			admins[player.UserId] = {
				settings = {prefix = prefix } 
			}
			chat(player.Name..", you have been granted admin permissions. Type "..prefix.."cmds to see all available commands for you! PLEASE READ ALL THE MESSAGES SENT IN CMDS")
		end
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2)..".")
	end
	if command("unadmin") then
		local player = GetPlayerFromString(arg2)
		if player and admins[player.UserId] then 
			admins[player.UserId] = nil 
		end 
		chat(player.Name..", your admin permissions have been revoked.")
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("clearadmin") then
		admins = {}
		notify("Cleared Admins.")
	end
	if command("prefix") then
		changeprefix(arg2)
		notify("Prefix set to'"..arg2.."'.")
	end
	if command("kill") or command("k") then
		if funct(arg2,{'all','others','_a'}) then
			killAll()
		elseif funct(arg2,{'guards','police','cops','_g'}) then
			killTeam(BrickColor.new('Bright blue'))
		elseif funct(arg2,{'inmates','prisoners','_i'}) then
			killTeam(BrickColor.new('Bright orange'))
		elseif funct(arg2,{'criminals','crims','_c'}) then
			killTeam(BrickColor.new('Really red'))
		elseif funct(arg2,{'neutrals','neuts','skids','_n'}) then
			killTeam(BrickColor.new('Medium stone grey'))
		elseif funct(arg2,{'colors','_s'}) then
			killColors()
		else
			kill(GetPlayerFromString(arg2))
			notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
		end
	end
	if command("trash") then
		teleport(GetPlayerFromString(arg2),CFrame.new(365.445374, 10.7605114, 1100.21265))
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
		chat("Trash, kid.")
	end
	if command("toilet") then
		teleport(GetPlayerFromString(arg2),CFrame.new(959.131958, 96.6899796, 2444.74927))
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("snack") then
		teleport(GetPlayerFromString(arg2),CFrame.new(949.114136, 101.051971, 2339.53491))
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("trap") then
		teleport(GetPlayerFromString(arg2),CFrame.new(-318.588226, 54.2398338, 1967.66064))
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("teleport") then
		teleport(GetPlayerFromString(arg2),GetPlayerFromString(arg3).Character.HumanoidRootPart.CFrame)
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("void") then
		teleport(GetPlayerFromString(arg2),CFrame.new(99999999, 999999999, 0))
		notify(arg1:sub(2,2):upper()..arg1:sub(3).."ed "..GetPlayerFromString(arg2).Name..".")
	end
	if command("arrest") then
		local player = GetPlayerFromString(arg2)
		local number = tonumber(arg3)

		if funct(arg2,{'all','_a','others'}) then
			for _,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					arrest(v, number)
				end
			end
		else
			if player then 
				arrest(player, number)
			end
		end
		notify("Arresting "..GetPlayerFromString(arg2).Name)
	end
	if command("spamarrest") or command("sa") then 
		local oof = GetPlayerFromString(arg2) 
		if not oof then oof = getBoolFromString(arg2) end
		if type(oof) == "boolean" and states.spam_arrest then 
			states.spam_arrest = nil 
		elseif typeof(oof) == "Instance" and not states.spam_arrest then 
			local spawn_coords = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Vector3.new(0, 10, 0)
			local char = workspace:FindFirstChild(UserName) 
			local hr = char and char:FindFirstChild("HumanoidRootPart")
			states.spam_arrest = oof.UserId 
			if oof and char and hr then 
				for i=1,math.huge do 
					wait()
					if not states.spam_arrest or SCRIPT_UNLOADED then
						return 
					end 
					hr.CFrame = spawn_coords
					bring(oof)
					arrest(oof, 20)
				end  
			end
		end 
		notify("Spam Arresting "..GetPlayerFromString(arg2).Name)
	end
	if command("team") or command("t") then
		team(arg2)
		notify("Changed Team.")
	end
	if command("loopkill") or command("lk") then
		local function addPlayer(name)
			player = GetPlayerFromString(name)
			if player and not loopkills[player.UserId] and player ~= game.Players.LocalPlayer then 
				loopkills[player.UserId] = { player = player } 
			end 
		end

		if funct(arg2,{'all','others','_a'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				addPlayer(player.Name)
			end
			notify("Looping all.")
		elseif funct(arg2,{'guards','police','cops','_g'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				if player.TeamColor == BrickColor.new('Bright blue') then
					addPlayer(player.Name)
				end
			end
			notify("Looping guards.")
		elseif funct(arg2,{'inmates','prisoners','_i'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				if player.TeamColor == BrickColor.new('Bright orange') then
					addPlayer(player.Name)
				end
			end
			notify("Looping inmates.")
		elseif funct(arg2,{'criminals','crims','_c'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				if player.TeamColor == BrickColor.new('Really red') then
					addPlayer(player.Name)
				end
			end
			notify("Looping criminals.")
		elseif funct(arg2,{'neutrals','neuts','skids','_n'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				if player.TeamColor == BrickColor.new('Medium stone grey') then
					addPlayer(player.Name)
				end
			end
			notify("Looping neutrals.")
		elseif funct(arg2,{'colors','_s'}) then
			for _,player in pairs(game.Players:GetPlayers()) do
				if player.TeamColor.Name ~= ('Really red' or 'Bright orange' or 'Bright blue' or 'Medium stone grey') then
					addPlayer(player.Name)
				end
			end
			notify("Looping colors.")
		else
			if GetPlayerFromString(arg2) then
				addPlayer(GetPlayerFromString(arg2).Name)
				notify("Looping "..GetPlayerFromString(arg2).Name)
			end
		end
	end
	if command("unloopkill") or command("unlk") then
		local player = GetPlayerFromString(arg2)
		if player and loopkills[player.UserId] then 
			loopkills[player.UserId] = nil 
		end 
		notify("Unlooped "..GetPlayerFromString(arg2).Name)
	end
	if command("clearloopkill") or command("clk") then
		loopkills = {}
		notify("Cleared Loop Kills.")
	end
	if command("rf") or command("rapidfire") then
		local sM = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		sM["MaxAmmo"] = math.huge
		sM["StoredAmmo"] = math.huge
		sM["AmmoPerClip"] = math.huge
		sM["CurrentAmmo"] = math.huge
		sM["Damage"] = math.huge
		sM["FireRate"] = -math.huge
		sM["Range"] = math.huge
		sM["ReloadTime"] = 0
		sM["Bullets"] = 30
		sM["AutoFire"] = true
		notify("RapidFire Enabled.")
	end
	if command("bul") or command("bullets") then
		local sM = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		if states.AUTO_INF_AMMO then
			sM["MaxAmmo"] = math.huge
			sM["StoredAmmo"] = math.huge
			sM["AmmoPerClip"] = math.huge
			sM["CurrentAmmo"] = math.huge
			sM["ReloadTime"] = 0
		end
		sM["Bullets"] = tonumber(arg2)
		notify("Set Bullets to ",arg2..".")
	end
	if command("notify") then
		notify(arg2)
	end
	if command("bring") then
		bring(GetPlayerFromString(arg2))
		notify("Brought "..GetPlayerFromString(arg2).Name)
	end
	if command("crim") then
		teleport(GetPlayerFromString(arg2),CFrame.new(-919.280396, 95.3272018, 2138.47168))
		notify("Crimmed "..GetPlayerFromString(arg2).Name)
	end
end

function AdminPlayerChatted(msg,player)
	split_message = msg:split(" ")
	arg1 = split_message[1]
	arg2 = split_message[2]
	arg3 = split_message[3]
	for i = 4,#split_message do
		arg3 = arg3.." "..split_message[i]
	end
	local old = command
	local command = function(cmd) return old(cmd, player) end 
	if command("prefix") then 
		chat("/w "..player.Name.." Successfully changed your prefix from:   "..admins[player.UserId].settings.prefix.." To:   "..arg2)
		admins[player.UserId].settings.prefix = arg2 
	end
	if command("kill") or command("k") then
		kill(GetPlayerFromString(arg2))
	end
	if command("trash") then
		teleport(GetPlayerFromString(arg2),CFrame.new(365.445374, 10.7605114, 1100.21265))
	end
	if command("toilet") then
		teleport(GetPlayerFromString(arg2),CFrame.new(959.131958, 96.6899796, 2444.74927))
	end
	if command("snack") then
		teleport(GetPlayerFromString(arg2),CFrame.new(949.114136, 101.051971, 2339.53491))
	end
	if command("trap") then
		teleport(GetPlayerFromString(arg2),CFrame.new(-318.588226, 54.2398338, 1967.66064))
	end
	if command("void") then
		teleport(GetPlayerFromString(arg2),CFrame.new(99999999, 999999999, 0))
	end
	if command("cmds") then
		chat("/w "..player.Name.." "..player.Name..", The commands you have access to are: "..prefix.."k [player], "..prefix.."loopkill or "..prefix.."lk [player].")
		chat("/w "..player.Name.." "..prefix.."unloopkill or "..prefix.."unlk [player], "..prefix.."to [player] "..prefix.."toilet [player], "..prefix.."snack [player], "..prefix.."trash [player], and "..prefix.."trap [player].") wait(1.0)
		chat("/w "..player.Name.." You can leave and rejoin the server and as long as the head admin is here, you will retain your access!")
	end
	if command("loopkill") or command("lk") then
		local player = GetPlayerFromString(arg2)
		if player and not loopkills[player.UserId] then 
			loopkills[player.UserId] = { player = player } 
		end 
	end
	if command("unloopkill") or command("unlk") then
		local player = GetPlayerFromString(arg2)
		if player and loopkills[player.UserId] then 
			loopkills[player.UserId] = nil 
		end 
	end
	if command("clearloopkill") or command("clrlk") then
		loopkills = {}
	end
	if command("to") then
		teleport(player,GetPlayerFromString(arg2).Character.HumanoidRootPart.CFrame)
	end
end

function checkAdmin(plr) 
	local connection = plr.Chatted:Connect(function(str)
		if admins[plr.UserId] then 
			AdminPlayerChatted(str, plr)
		end
	end)
	table.insert(connections, connection)
end

for i,v in pairs(game.Players:GetPlayers()) do 
	if v ~= game.Players.LocalPlayer then 
		checkAdmin(v) 
	end 
end

local connection = game.Players.PlayerAdded:Connect(function(newPlayer)
	checkAdmin(newPlayer)
end)
table.insert(connections, connection) 

connection = game.Players.PlayerRemoving:Connect(function(byePlayer)
	if states.spam_arrest == byePlayer.UserId then 
		states.spam_arrest = nil 
	end 
end)
table.insert(connections, connection)
connection = game.Players.LocalPlayer.Chatted:Connect(LocalPlayerChatted)
table.insert(connections, connection)

connection = game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		if states.OUTPUT_CHAT then
			game:GetService("TestService"):Message('\t\t['..plr.Name..']: '..msg)
		end
	end)
end)
table.insert(connections, connection)

Input.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		if prefix == "/" then
			if Input.Text:sub(1,1) == ";" then 
				LocalPlayerChatted(Input.Text)
			else
				LocalPlayerChatted(";"..Input.Text)
			end 
			Input.Text = ""
		else
			if Input.Text:sub(1,#prefix) == prefix then 
				LocalPlayerChatted(Input.Text)
			else
				LocalPlayerChatted(prefix..Input.Text)
			end 
			Input.Text = ""
		end
	end
end)

--loops 

spawn(function()
	while wait() do 
		if SCRIPT_UNLOADED then return end 
		for id,yes in pairs(loopkills) do
			if yes.player.Parent then 
				kill(yes.player)
			end
		end
	end
end)

function humanoidDied()
	if states.AUTO_RESPAWN then 
		workspace.Remote.loadchar:InvokeServer()
	end
end

local char = workspace:FindFirstChild(UserName)
local rootpart = char:WaitForChild("HumanoidRootPart", 0.3)

connection = game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
	if states.AUTO_RESPAWN then 
		newChar:WaitForChild("Humanoid").Died:Connect(function()
			local lastPos = GetRootOri()
			local lastCam = workspace.CurrentCamera.CFrame
			game:GetService("Workspace").Remote.loadchar:InvokeServer()
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
			workspace.CurrentCamera.CFrame = lastCam
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		end)
	end	
end)
table.insert(connections, connection)

connection = game:GetService("Players").LocalPlayer.Idled:connect(function()
	if states.ANTI_AFK then
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new())
	end
end)
table.insert(connections, connection)

char.Humanoid.Died:Connect(humanoidDied)
connection = game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
	if states.AUTO_GUNS then
		char = newChar 
		rootpart = newChar:WaitForChild("HumanoidRootPart",0.3)

		if ownsSwat then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)

			local plr = game:GetService("Players").LocalPlayer
			local mouse = plr:GetMouse()

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

			if game.Players.LocalPlayer.TeamColor == "Bright blue" then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Riot Shield"].ITEMPICKUP)
			end

			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

			local plr = game:GetService("Players").LocalPlayer
			local mouse = plr:GetMouse()

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
		end

		if states.AUTO_INF_AMMO then
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:FindFirstChild("GunStates") then
					local sM = require(v.GunStates)
					sM["MaxAmmo"] = math.huge
					sM["StoredAmmo"] = math.huge
					sM["AmmoPerClip"] = math.huge
					sM["CurrentAmmo"] = math.huge
					sM["ReloadTime"] = 0
				end
			end
			for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:FindFirstChild("GunStates") and v:IsA("Tool") then
					local sM = require(v.GunStates)
					sM["MaxAmmo"] = math.huge
					sM["StoredAmmo"] = math.huge
					sM["AmmoPerClip"] = math.huge
					sM["CurrentAmmo"] = math.huge
					sM["ReloadTime"] = 0
				end
			end
		end
	end
	if states.AUTO_LOCK then
		char = newChar 
		rootpart = newChar:WaitForChild("HumanoidRootPart",0.3)
		if game.Players.LocalPlayer.Character:FindFirstChild("ClientInputHandler") then
			game.Players.LocalPlayer.Character:FindFirstChild("ClientInputHandler"):Destroy()
		end
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if newChar:WaitForChild("Humanoid",0.3) then 
		newChar.Humanoid.Died:Connect(humanoidDied)
	end
end)
table.insert(connections, connection)

table.insert(connections, game:GetService("RunService").RenderStepped:Connect(function()
	if states.FAST_PUNCH then
		pcall(function()
			getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
		end)
	end
	if states.ANTI_FLING then
		--[[ Currently Disabled :(
		pcall(function()
			for _,v in pairs(game.Players:GetPlayers()) do
				v.Character["Head"].CanCollide = false
				v.Character["Torso"].CanCollide = false
				v.Character["Left Arm"].CanCollide = false
				v.Character["Right Arm"].CanCollide = false
				v.Character["Left Leg"].CanCollide = false
				v.Character["Right Leg"].CanCollide = false
				v.Character["HumanoidRootPart"].CanCollide = false
			end
		end)
		]]
	end	
	if states.noclip then
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end)
	end
	if states.ANTI_SHIELD then
		for _,v in pairs(game.Players:GetPlayers()) do
			pcall(function()
				game:GetService("Workspace")[v.Name].Torso.ShieldFolder:Destroy()
			end)
		end
	end
	if states.ANTI_INVIS then
		for _,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				pcall(function()
					if v.Character.HumanoidRootPart.Position.Y > 5000 then
						game.Players.StarterGui:SetCore("SendNotification", {
							Title = "Suspected Invis Player.",
							Text = v.Name,"is a suspected skid.",
							Icon = game.Players:GetUserThumbnailAsync(v.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420),
						})
						kill(v)
					end
				end)
			end
		end
	end
	if viewing ~= nil then
		pcall(function()
			workspace.CurrentCamera.CameraSubject = game.Players[viewing].Character.Head
		end)
	end
end))

coroutine.wrap(function()
	while wait(0.5) do
		if states.KILLAURA then
			for _,v in pairs(game.Players:GetPlayers()) do
			    pcall(function()
			        if workspace:FindFirstChild(game.Players.LocalPlayer.Name) and ((game.Players.LocalPlayer.Character:FindFirstChildOfClass('Part').Position-workspace[v.Name]:FindFirstChildOfClass('Part').Position).magnitude < 10) and v ~= game.Players.LocalPlayer then
			            for i = 1,workspace[v.Name].Humanoid.Health/5 do
			                game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
			            end
			        end
			    end)
			end
		end
	end
end)()

getgenv().UNLOAD_ADMIN = function() 
	EnableShootEvent()
	ScorpionAdmin:Destroy()
	Watermark:Destroy()
	states = {}
	for index, connection in pairs(connections) do 
		if typeof(connection) == "RBXScriptConnection" then 
			connection:disconnect()
		elseif typeof(connection) == "string" then 
			pcall(function()
				game:service("RunService"):UnbindFromRenderStep(connection)
			end)
		end
	end
	SCRIPT_UNLOADED = true 
	warn("Successfully unloaded the admin!") 
end 
