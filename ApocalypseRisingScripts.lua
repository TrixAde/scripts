-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ApocZ = Instance.new("TextLabel")
local God = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Goto = Instance.new("TextButton")
local BringCar = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local Spam = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local Open = Instance.new("TextButton")

--Properties:
Frame2.Visible = false

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 43, 71)
Frame.Draggable = true
Frame.Position = UDim2.new(0.211048156, 2, 0.304740399, -1)
Frame.Size = UDim2.new(0, 408, 0, 200)
Frame.Active = true
Frame.Draggable = true

ApocZ.Name = "ApocZ"
ApocZ.Parent = Frame
ApocZ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ApocZ.BackgroundTransparency = 1.000
ApocZ.BorderSizePixel = 0
ApocZ.Size = UDim2.new(0, 408, 0, 27)
ApocZ.Font = Enum.Font.GothamBlack
ApocZ.Text = "ApocZ"
ApocZ.TextColor3 = Color3.fromRGB(173, 31, 45)
ApocZ.TextSize = 20.000

God.Name = "God"
God.Parent = Frame
God.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
God.Position = UDim2.new(0.0441176482, 0, 0.25454545, 0)
God.Size = UDim2.new(0, 85, 0, 19)
God.Font = Enum.Font.GothamBlack
God.Text = "Kills"
God.TextColor3 = Color3.fromRGB(0, 0, 0)
God.TextSize = 14.000
God.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.playerstats.PlayerKill.Defensive.Value = TextBox.Text
end)

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = Frame
Walkspeed.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
Walkspeed.Position = UDim2.new(0.747548997, 0, 0.514545381, 0)
Walkspeed.Size = UDim2.new(0, 85, 0, 19)
Walkspeed.Font = Enum.Font.GothamBlack
Walkspeed.Text = "Vitals"
Walkspeed.TextColor3 = Color3.fromRGB(0, 0, 0)
Walkspeed.TextScaled = true
Walkspeed.TextSize = 14.000
Walkspeed.TextWrapped = true
Walkspeed.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.playerstats.Hunger.Value = 1000000000
	game.Players.LocalPlayer.playerstats.Thirst.Value = 1000000000
end)

ESP.Name = "ESP"
ESP.Parent = Frame
ESP.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
ESP.Position = UDim2.new(0.0441176482, 0, 0.514545441, 0)
ESP.Size = UDim2.new(0, 85, 0, 19)
ESP.Font = Enum.Font.GothamBlack
ESP.Text = "Stamina"
ESP.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP.TextSize = 14.000
ESP.MouseButton1Down:connect(function()
	while(1+1==2) do
            wait(2.5)
		game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
	end
	
end)

Goto.Name = "Goto"
Goto.Parent = Frame
Goto.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
Goto.Position = UDim2.new(0.394607842, 0, 0.25454545, 0)
Goto.Size = UDim2.new(0, 85, 0, 19)
Goto.Font = Enum.Font.GothamBlack
Goto.Text = "Zombies"
Goto.TextColor3 = Color3.fromRGB(0, 0, 0)
Goto.TextSize = 14.000
Goto.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.playerstats.ZombieKill.Military.Value = TextBox.Text
end)

BringCar.Name = "BringCar"
BringCar.Parent = Frame
BringCar.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
BringCar.Position = UDim2.new(0.747548997, 0, 0.25454545, 0)
BringCar.Size = UDim2.new(0, 85, 0, 19)
BringCar.Font = Enum.Font.GothamBlack
BringCar.Text = "Days"
BringCar.TextColor3 = Color3.fromRGB(0, 0, 0)
BringCar.TextSize = 14.000
BringCar.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.playerstats.Days.Value = TextBox.Text
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
TextBox.Position = UDim2.new(0.0441176482, 0, 0.723636389, 0)
TextBox.Size = UDim2.new(0, 372, 0, 25)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.921568632, 0, 0, 0)
Close.Size = UDim2.new(0, 32, 0, 27)
Close.Font = Enum.Font.GothamBlack
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
	Frame.Visible = false
	Frame2.Visible = true
end)

Spam.Name = "Spam"
Spam.Parent = Frame
Spam.BackgroundColor3 = Color3.fromRGB(255, 133, 135)
Spam.Position = UDim2.new(0.395000011, 0, 0.514999986, 0)
Spam.Size = UDim2.new(0, 85, 0, 19)
Spam.Font = Enum.Font.GothamBold
Spam.Text = "Kick All Groups"
Spam.TextColor3 = Color3.fromRGB(0, 0, 0)
Spam.TextSize = 14.000
Spam.TextScaled = true
Spam.MouseButton1Down:connect(function()
	for _, v in pairs(game.Lighting.Groups:GetChildren()) do
		if v.Name ~= ("GlobalGroups") then
			for _, p in pairs(game.Players:GetPlayers()) do
				game.Workspace.Remote.GroupKick:FireServer(v,p)
			end
		end
	end
end)

Frame2.Name = "Frame2"
Frame2.Parent = ScreenGui
Frame2.Active = true
Frame2.BackgroundColor3 = Color3.fromRGB(255, 43, 71)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0, 0, 0.510158002, 0)
Frame2.Size = UDim2.new(0, 69, 0, 22)
Frame2.Visible = false
Frame2.Active = true
Frame2.Draggable = false

Open.Name = "Open"
Open.Parent = Frame2
Open.BackgroundColor3 = Color3.fromRGB(255, 43, 71)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, -0.0354545712, 0)
Open.Size = UDim2.new(0, 69, 0, 22)
Open.Font = Enum.Font.GothamBlack
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextSize = 14.000
Open.MouseButton1Down:connect(function()
	Frame.Visible = true
	Frame2.Visible = false
end)

--// Spawning \\-- --//Credits to wally for the script\\--

local spawner = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ItemFrame = Instance.new("ScrollingFrame")
local ItemSearch = Instance.new("TextBox")
local SpawnButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

--//               GUI                 \\--

spawner.Name = "spawner"
spawner.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = spawner
Main.BackgroundColor3 = Color3.new(0.47, 0.47, 0.47)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 667, 0, 228)
Main.Size = UDim2.new(0, 266, 0, 244)
Main.Active = true
Main.Draggable = true

ItemFrame.Name = "ItemFrame"
ItemFrame.Parent = Main
ItemFrame.BackgroundColor3 = Color3.new(0.317647, 0.317647, 0.317647)
ItemFrame.BorderSizePixel = 0
ItemFrame.Position = UDim2.new(0, 56, 0, 76)
ItemFrame.Size = UDim2.new(0, 155, 0, 92)
ItemFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ItemFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ItemFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

ItemSearch.Name = "ItemSearch"
ItemSearch.Parent = Main
ItemSearch.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
ItemSearch.BorderSizePixel = 0
ItemSearch.Position = UDim2.new(0, 56, 0, 53)
ItemSearch.Size = UDim2.new(0, 155, 0, 25)
ItemSearch.Font = Enum.Font.SourceSansBold
ItemSearch.FontSize = Enum.FontSize.Size14
ItemSearch.Text = "Search for an item!"
ItemSearch.TextColor3 = Color3.new(1, 1, 1)
ItemSearch.TextScaled = true
ItemSearch.TextSize = 14
ItemSearch.TextWrapped = true

SpawnButton.Name = "SpawnButton"
SpawnButton.Parent = Main
SpawnButton.BackgroundColor3 = Color3.new(0.23, 245, 0.50)
SpawnButton.BorderSizePixel = 0
SpawnButton.Position = UDim2.new(0, 34, 0, 186)
SpawnButton.Size = UDim2.new(0, 199, 0, 35)
SpawnButton.ZIndex = 2
SpawnButton.AutoButtonColor = false
SpawnButton.Font = Enum.Font.ArialBold
SpawnButton.FontSize = Enum.FontSize.Size14
SpawnButton.Text = "SPAWN"
SpawnButton.TextColor3 = Color3.new(1, 1, 1)
SpawnButton.TextScaled = true
SpawnButton.TextSize = 14
SpawnButton.TextWrapped = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 266, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size14
Title.Text = " APOC SPAWN GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

local backgroundObjects = Instance.new('Folder', spawner.Main)
backgroundObjects.Name = 'BackgroundObjects'

local SpawnButton = Instance.new("TextButton", backgroundObjects)
SpawnButton.Name = "SpawnButton"
SpawnButton.Parent = game.CoreGui.spawner.Main.BackgroundObjects
SpawnButton.BackgroundColor3 = Color3.new(0.0196078, 0.729412, 0.34902)
SpawnButton.BorderSizePixel = 0
SpawnButton.Position = UDim2.new(0, 34, 0, 193)
SpawnButton.Size = UDim2.new(0, 199, 0, 35)
SpawnButton.AutoButtonColor = false
SpawnButton.Font = Enum.Font.SourceSans
SpawnButton.FontSize = Enum.FontSize.Size14
SpawnButton.Text = ""
SpawnButton.TextSize = 14

--//            Main Thing             \\--

local gui = spawner.Main
local box = gui:WaitForChild('ItemSearch')
local items = gui:WaitForChild('ItemFrame')
local path = game.Lighting.LootDrops
local btn = gui:WaitForChild('SpawnButton')
local pos = gui:WaitForChild('BackgroundObjects').SpawnButton.Position
local sPos = btn.Position
local client = game.Players.LocalPlayer

for k, v in next, path:GetChildren() do
if not v.PrimaryPart then
v.PrimaryPart = v:FindFirstChildWhichIsA('Model').Head
end
end

local function search(text)
local items = {}
for i, v in next, path:GetChildren() do
if text:upper() == v.Name:sub(1, string.len(text)):upper() then
table.insert(items, v.Name)
end
end
return items
end

local function bind(thing, f)
thing.MouseButton1Click:connect(function()
f()
end)
end

box.Changed:connect(function()
local list = search(box.Text)
if box.Text:gsub("", "") == "" then
items.CanvasSize = UDim2.new(0, 0, 0, 0)
items:ClearAllChildren()
return 
end
items.CanvasSize = UDim2.new(0, 0, 0, 0)
items:ClearAllChildren()
for i, v in next, list do
local yPos = ((20 * i) - 20)
local s = Instance.new('TextButton', items)
s.BorderSizePixel = 0
s.Font = Enum.Font.ArialBold
s.TextScaled = true
s.Text = v
s.Name = v
s.BackgroundColor3 = Color3.fromRGB(211, 211, 211)
s.TextColor3 = Color3.new(0, 0, 0)
s.Size = UDim2.new(0, 155, 0, 20)
s.Position = UDim2.new(0, 0, 0, yPos)
bind(s, function()
box.Text = s.Text
items:ClearAllChildren()
items.CanvasSize = UDim2.new(0, 0, 0, 0)
end)
end
items.CanvasSize = UDim2.new(0, 0, 0, (20 * #list))
end)

btn.MouseButton1Click:connect(function()
local number = 1
local itemname = box.Text
for i=1, number do
    local clone = game.Lighting.LootDrops[itemname]:Clone()
    clone.Parent = game.Workspace
    end
    local lmao = game.Workspace:GetChildren()
    for i=1, #lmao do
      if lmao[i].Name == itemname then
      lmao[i]:MoveTo(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(5, 0, 0))
  end
end
end)
