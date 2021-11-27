local animations = {
    ["Dophin Dance"] = 5918726674,
    ["Applaud"] = 5915693819,
    ["Country Line  Dance"] = 5915712534,
    ["Floss  Dance"] = 5917459365,
    ["Panini Dance"] = 5915713518,
    ["Rock On"] = 5915714366,
    ["Rodeo Dance"] = 5918728267,
    ["Break Dance"] = 5915648917,
    ["High Wave"] = 5915690960,
    ["Holiday Dance"] = 5937558680,
    ["Old Town Road Dance"] = 5937560570,
	["Around Town"] = 3303391864,
	["Top Rock"] = 3361276673,
	["Fashionable"] = 3333331310,
	["Robot"] = 3338025566,
	["Twirl"] = 3334968680,
	["Jacks"] = 3338066331,
	["T"] = 3338010159,
	["Shy"] = 3337978742,
	["Monkey"] = 3333499508,
	["Borock's Rage"] = 3236842542,
	["Ud'zal's Summoning"] = 3303161675,
	["Hype Dance"] = 3695333486,
	["Godlike"] = 3337994105,
	["Swoosh"] = 3361481910,
	["Sneaky"] = 3334424322,
	["Side to Side"] = 3333136415,
	["Greatest"] = 3338042785,
	["Louder"] = 3338083565,
	["Beckon"] = 5230598276,
	["Bored"] = 5230599789,
	["Cower"] = 4940563117,
	["Tantrum"] = 5104341999,
	["Hero Landing"] = 5104344710,
	["Confused"] = 4940561610,
	["Jumping Wave"] = 4940564896,
	["Keeping Time"] = 4555808220,
	["Agree"] = 4841397952,
	["Power Blast"] = 4841403964,
	["Disagree"] = 4841401869,
	["Sleep"] = 4686925579,
	["Sad"] = 4841407203,
	["Happy"] = 4841405708,
	["Chicken Dance"] = 4841399916,
	["Bunny Hop"] = 4641985101,
	["Air Dance"] = 4555782893,
	["Curtsy"] = 4555816777,
	["Zombie"] = 4210116953,
	["Fast Hands"] = 4265701731,
	["Baby Dance"] = 4265725525,
	["Celebrate"] = 3338097973,
	["Fancy Feet"] = 3333432454,
	["Y"] = 4349285876,
	["Shuffle"] = 4349242221,
	["Bodybuilder"] = 3333387824,
	["Sandwich Dance"] = 4406555273,
	["Dorky Dance"] = 4212455378,
	["Heisman Pose"] = 3695263073,
	["Superhero Reveal"] = 3695373233,
	["Dizzy"] = 3361426436,
	["Get Out"] = 3333272779,
	["Fishing"] = 3334832150,
	["Tree"] = 4049551434,
	["Line Dance"] = 4049037604,
	["Idol"] = 4101966434,
	["Haha"] = 3337966527,
	["Salute"] = 3333474484,
	["Hello"] = 3344650532,
	["Air Guitar"] = 3695300085,
	["Cha Cha"] = 3695322025,
	["Shrug"] = 3334392772,
	["Point2"] = 3344585679,
	["Tilt"] = 3334538554,
	["Stadium"] = 3338055167
}

local plr = game.Players.LocalPlayer
local LoganWS = Instance.new('Folder', game)
LoganWS.Name = 'LoganWS'

local buttonHolder = Instance.new('Folder', LoganWS)
buttonHolder.Name = "Buttons"


local Animations = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local SearchBox = Instance.new("TextBox")
local Container = Instance.new("ScrollingFrame")
local Button = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local UIListLayout2 = Instance.new("UIListLayout")
local UIListLayout3 = Instance.new("UIListLayout")
local StopAnim = Instance.new("TextButton")
local PauseAnim = Instance.new("TextButton")
local ReplayAnim = Instance.new("TextButton")
local ReverseAnim = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local titleFrame = Instance.new("Frame")
local slideFrame = Instance.new("Frame")
local SlideBar = Instance.new("Frame")
local SlideButton = Instance.new("TextButton")
local creds = Instance.new("TextLabel")

Animations.Name = "Animations"
Animations.Parent = plr:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = Animations
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.4, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0.135, 0, 0.6, 0)

titleFrame.Name = "TitleFrame"
titleFrame.Parent = MainFrame
titleFrame.BorderSizePixel = 0
titleFrame.LayoutOrder = 0
titleFrame.BackgroundTransparency = 1
titleFrame.Size = UDim2.new(1, 0, 0.05, 0)

slideFrame.Name = "SlideFrame"
slideFrame.Parent = MainFrame
slideFrame.BorderSizePixel = 0
slideFrame.LayoutOrder = 3
slideFrame.BackgroundTransparency = 1
slideFrame.Size = UDim2.new(1, 0, 0.05, 0)

UIListLayout3.Parent = titleFrame
UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(102, 45, 113)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(197, 66, 110))}
UIGradient.Parent = MainFrame

Title.Name = "Title"
Title.Parent = titleFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0.8, 0, 1, 0)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "Emotes"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.LayoutOrder = 0

creds.Name = "Creds"
creds.Parent = MainFrame
creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creds.BackgroundTransparency = 1.000
creds.Size = UDim2.new(1, 0, 0.05, 0)
creds.Font = Enum.Font.GothamSemibold
creds.Text = "By LoganRMX and Maku"
creds.TextColor3 = Color3.fromRGB(255, 255, 255)
creds.TextScaled = true
creds.TextSize = 14.000
creds.TextWrapped = true
creds.LayoutOrder = 8

SearchBox.Name = "SearchBox"
SearchBox.Parent = MainFrame
SearchBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.BackgroundTransparency = 0.750
SearchBox.BorderSizePixel = 0
SearchBox.Size = UDim2.new(1, 0, 0.045, 0)
SearchBox.Font = Enum.Font.GothamSemibold
SearchBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.PlaceholderText = "Search bar..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextScaled = true
SearchBox.TextSize = 14.000
SearchBox.TextWrapped = true
SearchBox.LayoutOrder = 1

Container.Name = "Container"
Container.Parent = MainFrame
Container.Active = true
Container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Container.BackgroundTransparency = 0.750
Container.BorderSizePixel = 0
Container.Size = UDim2.new(1, 0, 0.5, 0)
Container.ScrollBarThickness = 5
Container.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
Container.LayoutOrder = 2

Button.Name = "Button"
Button.Parent = LoganWS
Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button.BackgroundTransparency = 0.850
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 38)
Button.Font = Enum.Font.GothamSemibold
Button.Text = "Test"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true

UIListLayout.Parent = Container
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIListLayout2.Parent = MainFrame
UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 5)

ReverseAnim.Name = "ReverseAnim"
ReverseAnim.Parent = MainFrame
ReverseAnim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ReverseAnim.BackgroundTransparency = 0.750
ReverseAnim.BorderColor3 = Color3.fromRGB(27, 42, 53)
ReverseAnim.BorderSizePixel = 0
ReverseAnim.LayoutOrder = 4
ReverseAnim.Size = UDim2.new(0.85, 0, 0.06, 0)
ReverseAnim.Font = Enum.Font.GothamSemibold
ReverseAnim.Text = "Reverse animation"
ReverseAnim.TextColor3 = Color3.fromRGB(255, 255, 255)
ReverseAnim.TextScaled = true
ReverseAnim.TextSize = 14.000
ReverseAnim.TextWrapped = true

StopAnim.Name = "StopAnim"
StopAnim.Parent = MainFrame
StopAnim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
StopAnim.BackgroundTransparency = 0.750
StopAnim.BorderColor3 = Color3.fromRGB(27, 42, 53)
StopAnim.BorderSizePixel = 0
StopAnim.LayoutOrder = 5
StopAnim.Size = UDim2.new(0.85, 0, 0.06, 0)
StopAnim.Font = Enum.Font.GothamSemibold
StopAnim.Text = "Stop animation"
StopAnim.TextColor3 = Color3.fromRGB(255, 255, 255)
StopAnim.TextScaled = true
StopAnim.TextSize = 14.000
StopAnim.TextWrapped = true

PauseAnim.Name = "PauseAnim"
PauseAnim.Parent = MainFrame
PauseAnim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PauseAnim.BackgroundTransparency = 0.750
PauseAnim.BorderColor3 = Color3.fromRGB(27, 42, 53)
PauseAnim.BorderSizePixel = 0
PauseAnim.Size = UDim2.new(0, 219, 0, 28)
PauseAnim.Font = Enum.Font.GothamSemibold
PauseAnim.Text = "Pause Game Animations"
PauseAnim.TextColor3 = Color3.fromRGB(255, 255, 255)
PauseAnim.TextScaled = true
PauseAnim.TextSize = 14.000
PauseAnim.TextWrapped = true
PauseAnim.LayoutOrder = 6

ReplayAnim.Name = "ReplayAnim"
ReplayAnim.Parent = MainFrame
ReplayAnim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ReplayAnim.BackgroundTransparency = 0.750
ReplayAnim.BorderColor3 = Color3.fromRGB(27, 42, 53)
ReplayAnim.BorderSizePixel = 0
ReplayAnim.Size = UDim2.new(0, 219, 0, 28)
ReplayAnim.Font = Enum.Font.GothamSemibold
ReplayAnim.Text = "Replay Game Animations"
ReplayAnim.TextColor3 = Color3.fromRGB(255, 255, 255)
ReplayAnim.TextScaled = true
ReplayAnim.TextSize = 14.000
ReplayAnim.TextWrapped = true
ReplayAnim.LayoutOrder = 7

Exit.Name = "Exit"
Exit.Parent = titleFrame
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Size = UDim2.new(0.1, 0, 0.7, 0)
Exit.Font = Enum.Font.GothamSemibold
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true
Exit.LayoutOrder = 2

Mini.Name = "Mini"
Mini.Parent = titleFrame
Mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mini.BackgroundTransparency = 1.000
Mini.Size = UDim2.new(0.1, 0, 0.7, 0)
Mini.Font = Enum.Font.GothamSemibold
Mini.Text = "-"
Mini.TextColor3 = Color3.fromRGB(255, 255, 255)
Mini.TextScaled = true
Mini.TextSize = 14.000
Mini.TextWrapped = true
Mini.LayoutOrder = 1

SlideBar.Name = "SlideBar"
SlideBar.Parent = slideFrame
SlideBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SlideBar.BackgroundTransparency = 0.750
SlideBar.BorderSizePixel = 0
SlideBar.Size = UDim2.new(1, 0, 0.3, 0)
SlideBar.AnchorPoint = Vector2.new(0.5,0.5)
SlideBar.Position = UDim2.new(0.5,0,0.5,0)


SlideButton.Name = "SlideButton"
SlideButton.Parent = SlideBar
SlideButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SlideButton.BorderSizePixel = 0
SlideButton.Position = UDim2.new(0.5, 0, -1.5, 0)
SlideButton.Size = UDim2.new(0, 10, 0, 26)
SlideButton.Font = Enum.Font.SourceSans
SlideButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SlideButton.TextSize = 14.000
SlideButton.TextTransparency = 1.000

MainFrame.Active = true
MainFrame.Draggable = true

local LayOut = 0
local CurrentAni = nil
local neg = false


function StopAnims()
	for _,v in pairs(animations) do
		v:Stop()
	end
end

function LoadAnims()
	for i,v in pairs(animations) do
		local Anim = Instance.new("Animation", LoganWS)
		Anim.AnimationId = "rbxassetid://"..v
		animations[i] = plr.Character.Humanoid:LoadAnimation(Anim)
		CreateButton(i)
	end
end

function Snap(number, factor)
	if factor == 0 then
		return number
	else
		return math.floor(number/factor+0.5)*factor
	end
end

function AutoScale()
	local number = (#Container:GetChildren()-1)*38
	number = number + (#Container:GetChildren()-1)*5
	Container.CanvasSize = UDim2.new(0,0,0,number)
end



function CreateButton(AnimationName)
	local ButtonClone = Button:Clone()
	ButtonClone.LayoutOrder = LayOut
	LayOut = LayOut + 1
	ButtonClone.Parent = buttonHolder
	ButtonClone.Name = AnimationName
	ButtonClone.Text = AnimationName
	ButtonClone.MouseButton1Click:Connect(function()
		StopAnims()
		CurrentAni = animations[ButtonClone.Name]
		CurrentAni:Play()
	end)
end

function FindAnim() 
	local text = string.lower(SearchBox.Text)
	if SearchBox.Text == "" or SearchBox.Text == nil then
		for _,v in pairs(buttonHolder:GetChildren()) do
			v.Parent = Container
		end
	else
		for i,v in pairs(buttonHolder:GetChildren()) do
			if string.find(string.lower(v.Name), text) then
				v.Parent = Container
			end
		end
		for i,v in pairs(Container:GetChildren()) do
			if not string.find(string.lower(v.Name), text) and v.Name ~= "UIListLayout" then
				v.Parent = buttonHolder
			end
		end
	end
end

ReverseAnim.MouseButton1Click:Connect(function()
	neg = not neg
end)
StopAnim.MouseButton1Click:Connect(StopAnims)
PauseAnim.MouseButton1Click:Connect(function()
	plr.Character.Animate.Disabled = true
end)
ReplayAnim.MouseButton1Click:Connect(function()
	plr.Character.Animate.Disabled = false
end)

local TS = game:GetService("TweenService")
local tweenclose = TS:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.new(0.135, 0, 0.03, 0)})
local tweenclose2 = TS:Create(titleFrame, TweenInfo.new(1), {Size = UDim2.new(1, 0, 1, 0)})
local tweenopen = TS:Create(MainFrame, TweenInfo.new(1), {Size = UDim2.new(0.135, 0, 0.6, 0)})
local tweenopen2 = TS:Create(titleFrame, TweenInfo.new(1), {Size = UDim2.new(1, 0, 0.05, 0)})
local open = true
Mini.MouseButton1Click:Connect(function()
	if open then
		Mini.Text = "o"
		for _,v in pairs(MainFrame:GetChildren()) do
			if v.Name ~= titleFrame.Name and not string.find(v.Name, "UI") then
				v.Visible = false
			end
		end
		tweenclose:Play()
		tweenclose2:Play()
	else
		Mini.Text = "-"
		for _,v in pairs(MainFrame:GetChildren()) do
			if not string.find(v.Name, "UI") then
				v.Visible = true
			end
		end
		tweenopen:Play()
		tweenopen2:Play()
	end
	open = not open
end)

LoadAnims()



local held = false
SlideButtonPos = SlideButton.Position
local UIS = game:GetService("UserInputService")
local RuS = game:GetService("RunService")
local step = 0.01
local percentage = 0

UIS.InputEnded:connect(function(input, processed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		held = false
	end
end)

SlideButton.MouseButton1Down:Connect(function()
	held = true
end)

local con = RuS.RenderStepped:connect(function()
	if held then
		local MousePos = UIS:GetMouseLocation().X
		local BtnPos = SlideButton.Position
		local SliderSize = SlideBar.AbsoluteSize.X
		local SliderPos = SlideBar.AbsolutePosition.X
		local pos = Snap((MousePos-SliderPos)/SliderSize,step)
		percentage = math.clamp(pos,0,0.96)
		SlideButton.Position = UDim2.new(percentage,0,BtnPos.Y.Scale, BtnPos.Y.Offset)
	end
	local axis = SlideButton.Position.X.Scale*2
	if neg then
		axis = -axis
	end
	if CurrentAni ~= nil then
		CurrentAni:AdjustSpeed(axis)
	end
	FindAnim()
	AutoScale()
end)

Exit.MouseButton1Click:Connect(function()
	StopAnims()
	plr.Character.Animate.Disabled = false
	Animations:Destroy()
	LoganWS:Destroy()
	con:Disconnect()
end)
