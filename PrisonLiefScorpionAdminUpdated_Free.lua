if UNLOAD_ADMIN then 
	UNLOAD_ADMIN()
end 

local prefix = "."
local SCRIPT_UNLOADED = false 



local cmdbar = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local cmdbar_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local input = Instance.new("TextBox")
local notification = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local description = Instance.new("TextLabel")

cmdbar.Name = "cmdbar"
cmdbar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
cmdbar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = cmdbar
Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame.Position = UDim2.new(0.0073192534, 0, 0.946601987, 0)
Frame.Size = UDim2.new(0, 221, 0, 38)
Frame.ZIndex = 2

UICorner.Parent = Frame

cmdbar_2.Name = "cmdbar"
cmdbar_2.Parent = Frame
cmdbar_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
cmdbar_2.Position = UDim2.new(0, 3, 0, 2)
cmdbar_2.Size = UDim2.new(0, 215, 0, 33)

function dragify(Frame)
	dragToggle = nil
	dragSpeed = .1 -- You can edit this.
	dragInput = nil
	dragStart = nil
	dragPos = nil
	
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	end
	
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)
	
	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

dragify(Frame)

UICorner_2.Parent = cmdbar_2

input.Name = "input"
input.Parent = cmdbar_2
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundTransparency = 1.000
input.BorderSizePixel = 0
input.Position = UDim2.new(0.0358565748, 0, 0.193548381, 0)
input.Size = UDim2.new(0, 233, 0, 19)
input.Font = Enum.Font.SourceSans
input.PlaceholderText = "Press "..prefix.." to focus command bar."
input.Text = ""
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextSize = 14.000
input.TextXAlignment = Enum.TextXAlignment.Left

notification.Name = "notification"
notification.Parent = Frame
notification.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
notification.BackgroundTransparency = 0.300
notification.Position = UDim2.new(0.957364321, 0, 0, 0)
notification.Size = UDim2.new(0, 0, 0, 38)
notification.ZIndex = 0

UICorner_3.Parent = notification

title.Name = "title"
title.Parent = notification
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0865384638, 0, 0, 0)
title.Size = UDim2.new(0.846153855, 0, 0.263157904, 0)
title.Font = Enum.Font.SourceSans
title.Text = "Title"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
title.TextWrapped = true
title.TextTransparency = 1

description.Name = "description"
description.Parent = notification
description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
description.BackgroundTransparency = 1.000
description.BorderSizePixel = 0
description.Position = UDim2.new(0.0865384638, 0, 0.282639354, 0)
description.Size = UDim2.new(0.846153855, 0, 0.605263174, 0)
description.Font = Enum.Font.SourceSans
description.Text = "Description"
description.TextColor3 = Color3.fromRGB(204, 204, 204)
description.TextSize = 14.000
description.TextWrapped = true
description.TextYAlignment = Enum.TextYAlignment.Top
description.TextTransparency = 1

local admins = {}
local states = {}
local connections = {} 
local loopkills = {}

WHOREname = [[@˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞˞#0829 ]]

allcmds = {
	"----------------",
	prefix.."kill [plr] - Kills player.",
	prefix.."arrest [plr] - Arrests player.",
	prefix.."to [plr] - Teleports to player.",
	prefix.."admin [plr] - Admins player.",
	prefix.."unadmin [plr] - Unadmins player.",
	prefix.."clearadmin - Clears all admins.",
	prefix.."loopkill / lk [plr] - Loopkills player.",
	prefix.."unloopkill / unlk [plr] - Unloopkills player.",
	prefix.."clearloopkill / clk - Clears all loopkills.",
	prefix.."rj - Rejoins the game.",
	prefix.."cmds - Shows commands",
	prefix.."toilet [plr] - Toilets player.",
	prefix.."snack [plr] - Snacks player.",
	prefix.."trash [plr] - Trashes player.",
	prefix.."trap [plr] - Traps player.",
	prefix.."smite [plr] - smites the player with a beam.",
	prefix.."sa/ spam arrest [plr] - spam arrests the player.",
	prefix.."auto/ autorespawn [on] and [off].",
	prefix.."spike/ lagspike [plr] - lags the player.",
	prefix.."ltn/ loop team neutral - bypassess spam arrest users.",
	prefix.."remove/ remove home screen / remove black film.",
	prefix.."back nex roof armory cafe tower yard cells crimbase/ teleports.",
	prefix.."re / respawn",
	"",
	"Made by VapingCat#7950",
	"Tested by .phantom#7234 and Carlos the WHORE",
	"----------------",
	"Updated by High#9991",
}

--[[ UI Functions ]]

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if key == prefix then
		input:CaptureFocus()
	end
end)
function changeprefix(prefix_text)
	prefix = prefix_text
	input.PlaceholderText = "Press "..prefix.." to focus command bar."
end
function notify(title_text, description_text)
	title.Text = title_text
	description.Text = description_text
	for i = 0,208,1 do
		title.TextTransparency = i/2.08
		description.TextTransparency = i/2.08
		notification.Size = UDim2.new(0, i, 0, 38)
	end
	wait(5)
	for i = 208,0,-1 do
		title.TextTransparency = i/2.08
		description.TextTransparency = i/2.08
		notification.Size = UDim2.new(0, i, 0, 38)
	end
	title.Text = "Title"
	description.Text = "Description"
end

--[[ General Functions ]]

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

--[[ Command Functions ]]

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
			local Crim = Instance.new("Part")
			Crim.Name = "plr"
			Crim.Parent = workspace
			Crim.Anchored = true
			Crim.Archivable = true
			Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
			Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
			wait(0.1)
			Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Crim.Transparency = 1
			Crim.Anchored = true
			Crim.CanCollide = false   
			Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
			Bruh.CanCollide = false
			Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
			Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Bruh.Transparency = 1
			wait()
			Bruh.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			Bruh.Size = Vector3.new(6, 0.2, 6)
			Bruh.Transparency = 0
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

function arrest(plr, times)
	local times = times or 1
	if plr.TeamColor.Name == "Really red" then
		local m_char = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
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

function kill(plr)
	warn("Killing: "..plr.Name.." !")
	local m_char = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
	local backpack = game.Players.LocalPlayer.Backpack 
	local char = workspace:FindFirstChild(plr.Name)
	local old_team = game.Players.LocalPlayer.TeamColor.Name
	local change_team = old_team == plr.TeamColor.Name
	game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
		m_char = newChar 
		backpack = game.Players.LocalPlayer.Backpack 
	end)
	if game.Players.LocalPlayer and plr and char and backpack and m_char then
		if change_team then
			states.previous_position = m_char:WaitForChild("HumanoidRootPart",0.4).CFrame 
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name) 
			m_char.HumanoidRootPart.CFrame = states.previous_position
		end 
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		local gun = m_char:FindFirstChild("Remington 870") or backpack:FindFirstChild("Remington 870")
        local args = {
            {
                {
                    RayObject = Ray.new(Vector3.new(),Vector3.new()),
                    Cframe = CFrame.new(),
                    Hit = char:FindFirstChild("Head")
                },
            },
            gun
        }
        for i = 1,5 do
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
		end wait()
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

--[[ Commands ]]

function LocalPlayerChatted(msg)
	split_message = msg:split(" ")
	arg1 = split_message[1]
	arg2 = split_message[2]
	arg3 = split_message[3]
	for i = 4,#split_message do
		arg3 = arg3.." "..split_message[i]
	end
	if command("smite") or command("lag1") then
		smite(arg2, 5000, 7)
	end
	if command("spike") or command("lag2") then
		smite(arg2, 7500, 15)
	end
	if command("crash") or command("lag3") then
		smite(arg2, math.huge, 6000)
	end
	if command("nex") or command("nexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
	end
	if command("bac") or command("back") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
	end
	if command("caf") or command("cafe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
	end
	if command("yar") or command("yard") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779,99,2477)	
	end
	if command("arm") or command("armory") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798,99,2260)
	end
	if command("tow") or command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.592, 122.32, 2592.388)
	end
	if command("roof") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(933.268, 134.784, 2463.6)
	end
	if command("cel") or command("cells") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
	end
	if command("cbase") or command("crimbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-944,95,2068)
	end
	if command("remove") or command("removehomescreen") then
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
			local char = workspace:FindFirstChild(player.Name)
			local hum = char and char:FindFirstChild("HumanoidRootPart")
			local head = char and char:FindFirstChild("Head")

			local m_char = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
			local m_hum = m_char and m_char:FindFirstChild("HumanoidRootPart")
			if m_char and m_hum and char and (char or head) then 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hum and hum.CFrame or head.CFrame
			end
		end
	end
	if command("rj") then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
	if command("re") or command("respawn") then
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	end
	if command("cmds") then
		for i,v in pairs(allcmds) do
			chatnotify(v)
		end
	end
	if command("auto") or command("autore") then
		print(getBoolFromString(arg2))
		states.AUTO_RESPAWN = getBoolFromString(arg2)
    end
	if command("test") then
		chatnotify(arg1)
		chatnotify(arg2)
		chatnotify(arg3)
	end
	if command("dong") then
		dong(arg2:lower())
	end
	if command("admin") then
		local player = GetPlayerFromString(arg2)
		if player and not admins[player.UserId] then 
			admins[player.UserId] = {
				settings = {prefix = prefix } 
			}
			chat(player.Name..", you have been granted admin permissions. Type "..prefix.."cmds to see all available commands for you! PLEASE READ ALL THE MESSAGES SENT IN CMDS")
		end
	end
	if command("unadmin") then
		local player = GetPlayerFromString(arg2)
		if player and admins[player.UserId] then 
			admins[player.UserId] = nil 
		end 
	end
	if command("clearadmin") then
		admins = {}
	end
	if command("prefix") then
		changeprefix(arg2)
	end
	if command("kill") or command("k") then
		kill(GetPlayerFromString(arg2))
	end
	if (command("k")) and arg2 == "g" then
		for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Guards"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "i" then
		for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Inmates"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "c" then
		for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Criminals"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "n" then
		for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Neutral"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if command("bring") then
		bring(GetPlayerFromString(arg2))
	end
	if command("trash") then
		teleport(GetPlayerFromString(arg2),CFrame.new(365.445374, 10.7605114, 1100.21265))
		chat("Trash, kid.")
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
	if command("teleport") then
		if GetPlayerFromString(arg2):IsA("Model") then
			teleport(GetPlayerFromString(arg2),GetPlayerFromString(arg3).Character.HumanoidRootPart.CFrame)
		else
			loadstring("teleport(GetPlayerFromString(arg2),CFrame.new("..arg3..")")
		end
	end
	if command("void") then
		teleport(GetPlayerFromString(arg2),CFrame.new(99999999, 999999999, 0))
	end
	if (command("k")) and arg2 == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if game.Players.LocalPlayer.TeamColor == game.Teams["Neutral"].TeamColor then
					team("n")
					changedteam = true
				else
					changedteam = false
				end
				if v ~= game.Players.LocalPlayer then
    				kill(v)
				end
			end
		end
		if changedteam then
			team(arg2)
		end
	end
	if command("arrest") then
		local player = GetPlayerFromString(arg2)
		local number = tonumber(arg3)
		if player then 
			arrest(player, number)
		end
	end
	if command("spamarrest") or command("sa") then 
		local oof = GetPlayerFromString(arg2) 
		if not oof then oof = getBoolFromString(arg2) end
		if type(oof) == "boolean" and states.spam_arrest then 
			states.spam_arrest = nil 
		elseif typeof(oof) == "Instance" and not states.spam_arrest then 
			local spawn_coords = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Vector3.new(0, 10, 0)
			local char = workspace:FindFirstChild(game.Players.LocalPlayer.Name) 
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
	end
	if command("team") or command("t") then
		team(arg2)
	end
	if command("loop_neutral") or command("ltn") then 
		states.previous_team = game.Players.LocalPlayer.TeamColor.Name
		game:GetService("RunService"):BindToRenderStep('loop_neutral', 1, function()
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end)
	end 
	if command("unloop_neutral") or command("ltd") then 
		pcall(function()
			game:GetService("RunService"):UnbindFromRenderStep("loop_neutral")
		end)
		if states.previous_team then 
			if states.previous_team == "Bright orange" or states.previous_team == "Bright blue" then 
				workspace.Remote.TeamEvent:FireServer(states.previous_team)
			end
		end 
	end
	if command("loopkill") or command("lk") then
		local player = GetPlayerFromString(arg2)
		print(player)
		if player and not loopkills[player.UserId] then 
			warn("Adding: "..player.Name.." to loop kill table!")
			loopkills[player.UserId] = { player = player } 
		end 
	end
	if command("unloopkill") or command("unlk") then
		local player = GetPlayerFromString(arg2)
		if player and loopkills[player.UserId] then 
			loopkills[player.UserId] = nil 
		end 
	end
	if command("clearloopkill") or command("clk") then
		loopkills = {}
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
	end



	if command("notify") then
		notify(arg2,arg3)
	end
	if command("admins") then
		for i,v in pairs(admins) do
		    chatnotify(v.Parent.Parent.Name:lower().."."..v.Parent.Name.."."..v.Name)
		end
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
	if command("getprefix") or command("gp") then 
		chat("/w "..player.Name.." Your current prefix is:   "..admins[player.UserId].settings.prefix)
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
	if (command("k")) and arg2 == "g" then
		for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Guards"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "i" then
		for i,v in pairs(game.Teams["Inmates"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Inmates"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "c" then
		for i,v in pairs(game.Teams["Criminals"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Criminals"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "n" then
		for i,v in pairs(game.Teams["Neutral"]:GetPlayers()) do
			if game.Players.LocalPlayer.TeamColor == game.Teams["Neutral"].TeamColor then
				team("n")
				changedteam = true
			else
				changedteam = false
			end
			kill(v)
		end
		if changedteam then
			team(arg2)
		end
	end
	if (command("k")) and arg2 == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if game.Players.LocalPlayer.TeamColor == game.Teams["Neutral"].TeamColor then
					team("n")
					changedteam = true
				else
					changedteam = false
				end
				if v ~= game.Players.LocalPlayer then
					kill(v)
				end
			end
			if changedteam then
				team(arg2)
			end
		end
		if command("arrest") then
			arrest(GetPlayerFromString(arg2))
		end
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
connection = game.Players.LocalPlayer.Chatted:Connect(LocalPlayerChatted)
table.insert(connections, connection)

input.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		if input.Text:sub(1,#prefix) == prefix then 
			LocalPlayerChatted(input.Text)
		else
			LocalPlayerChatted(prefix..input.Text)
		end 
		input.Text = ""
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

local char = workspace:FindFirstChild(game.Players.LocalPlayer.Name)
local rootpart = char:WaitForChild("HumanoidRootPart", 0.3)

char.Humanoid.Died:Connect(humanoidDied)
connection = game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
	if states.AUTO_RESPAWN then 
		local old = rootpart and rootpart.CFrame 
		char = newChar 
		rootpart = newChar:WaitForChild("HumanoidRootPart",0.3)
		if rootpart then 
			rootpart.CFrame = old 
		end
	end	
	if newChar:WaitForChild("Humanoid",0.3) then 
		newChar.Humanoid.Died:Connect(humanoidDied)
	end
end)
table.insert(connections, connection)



getgenv().UNLOAD_ADMIN = function() 
	cmdbar:Destroy()
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
	
