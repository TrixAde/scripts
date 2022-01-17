local CoreGui = game:GetService("StarterGui")

   CoreGui:SetCore("SendNotification", {
	Title = "Game Detected!";
	Text = "Loading UI | Murder Mystery 2";
	Duration = 5;
})

wait(5) 

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/6W1ZqV53"))()

local a = Library:Window("Apollo Hub")
local emotes = Library:Window("Emotes")
local esp = Library:Window("ESP")
local Trolling = Library:Window("Trolling")
local b = Library:Window("Credits")
local CoreGui = game:GetService("StarterGui")

   CoreGui:SetCore("SendNotification", {
	Title = "Loaded!";
	Text = "Made by APollo#2391";
	Duration = 5;
})


local noclip = false
local infjumpenabled = false
--A

a:Button("Find Murder", function()
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Knife") then
            
CoreGui:SetCore("SendNotification", {
	Title = "Murder Finder!";
	Text = v.Name.." Is Murder";
	Duration = 5;
})
        end
    end
end)


a:Button("Tp Murder", function()
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Knife") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 3, 0)
		end
	end
end)

a:Button("Tp Sheriff", function()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character:FindFirstChild("Revolver") or v.Backpack:FindFirstChild("Revolver") or v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Gun") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 3, 0)
		end
	end
end)

a:Toggle("infinite Jump", function(value)
infjumpenabled = value
end)

a:Toggle("Noclip", function(value)
    noclip = value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if noclip == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)

a:Toggle("Autopick Gun", function(value)
	if value then
		sheriff.Character.Humanoid.Died:Connect(function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sheriff.Character.HumanoidRootPart.CFrame end)
	end
end)

-- Emotes
emotes:Button("Sit", function()
    local string_1 = "sit";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Zombie", function()
    local string_1 = "zombie";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Spray", function()
    local string_1 = "SprayPaint";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Dab", function()
    local string_1 = "dab";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Ninja", function()
    local string_1 = "ninja";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Floss", function()
    local string_1 = "floss";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

emotes:Button("Zen", function()
    local string_1 = "zen";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

function ReturnColor(model)
    if game:GetService("Players")[model.Name].Backpack:FindFirstChild("Knife") or game:GetService("Players")[model.Name]:FindFirstChild("Knife") then return Color3.fromRGB(255,0,0) end
    if game:GetService("Players")[model.Name].Backpack:FindFirstChild("Gun") or game:GetService("Players")[model.Name].Backpack:FindFirstChild("Revolver") or game:GetService("Players")[model.Name]:FindFirstChild("Revolver") or game:GetService("Players")[model.Name]:FindFirstChild("Gun") then return Color3.fromRGB(0,0,255) end
    return Color3.fromRGB(0, 255, 0)
end

-- ESP

local ESPEnabled = false
local DistanceEnabled = true
local TracersEnabled = true

pcall(function()
	
	Camera = game:GetService("Workspace").CurrentCamera
	RunService = game:GetService("RunService")
	camera = workspace.CurrentCamera
	Bottom = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)

	function GetPoint(vector3)
		local vector, onScreen = camera:WorldToScreenPoint(vector3)
		return {Vector2.new(vector.X,vector.Y),onScreen,vector.Z}
	end
	
	function MakeESP(model)
		local CurrentParent = model.Parent
	
		local TopL = Drawing.new("Line")
		local BottomL = Drawing.new("Line")
		local LeftL = Drawing.new("Line")
		local RightL = Drawing.new("Line")
		local Tracer = Drawing.new("Line")
		local Display = Drawing.new("Text")

        coroutine.resume(coroutine.create(function()
			while model.Parent == CurrentParent and model.Humanoid.Health > 0 do
				
				local Distance = (Camera.CFrame.Position - model.HumanoidRootPart.Position).Magnitude
                local GetP = GetPoint(model.Head.Position)
                local headps = model.Head.CFrame
                
				if ESPEnabled and GetP[2] then
					
                    -- Calculate Cords
                    local topright = headps * CFrame.new(3,0.5, 0)
                    local topleft = headps * CFrame.new(-3,0.5, 0)
                    local bottomleft = headps * CFrame.new(-3,-7,0)
                    local bottomright = headps * CFrame.new(3,-7,0)
					topright = GetPoint(topright.p)[1]
					topleft = GetPoint(topleft.p)[1]
					bottomleft = GetPoint(bottomleft.p)[1]
					bottomright = GetPoint(bottomright.p)[1]

                    teamcolor = ReturnColor(model)
                    TopL.Color, BottomL.Color, RightL.Color, LeftL.Color = teamcolor, teamcolor, teamcolor, teamcolor
                    TopL.From, BottomL.From, RightL.From, LeftL.From = topleft, bottomleft, topright, topleft
                    TopL.To, BottomL.To, RightL.To, LeftL.To = topright, bottomright, bottomright, bottomleft
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = true, true, true, true
				else
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = false, false, false, false
                end
                
                if ESPEnabled and TracersEnabled and GetP[2] then
                    Tracer.Color = ReturnColor(model)
					Tracer.From = Bottom
					Tracer.To = GetPoint(headps.p)[1]
					Tracer.Thickness = 1.5
					Tracer.Visible = true
				else
					Tracer.Visible = false
                end
                
				if ESPEnabled and DistanceEnabled and GetP[2] then
					Display.Visible = true
					Display.Position = GetPoint(headps.p + Vector3.new(0,0.5,0))[1]
					Display.Center = true
					Display.Text = tostring(math.floor(Distance)).." studs"
				else
					Display.Visible = false
                end
                
				RunService.RenderStepped:Wait()
			end
	
			TopL:Remove()
			BottomL:Remove()
			RightL:Remove()
			LeftL:Remove()
			Tracer:Remove()
			Display:Remove()
        
        end))
    end
    
	for _, Player in next, game:GetService("Players"):GetChildren() do
		if Player.Name ~= game.Players.LocalPlayer.Name then
			MakeESP(Player.Character)
			Player.CharacterAdded:Connect(function()
				delay(0.5, function()
					MakeESP(Player.Character)
				end)
			end)
		end	
	end
	
	game:GetService("Players").PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            delay(0.5, function()
                MakeESP(player.Character)
            end)
		end)
	end)
	
end)

-- Enables/Disables ESP. Main toggle
esp:Toggle("ESP", function(t)
    ESPEnabled = t
end)

-- Toggles tracers
esp:Toggle("Tracers", function(t)
    TracersEnabled = t
end)

-- Toggles distance display
esp:Toggle("Distance Display", function(t)
    DistanceEnabled = t
end)

--Trolling 

Trolling:Button("Fake Knife", function()
local lp = game.Players.LocalPlayer
local tool;local handle;local knife;
local animation1 = Instance.new("Animation")
animation1.AnimationId = "rbxassetid://2467567750"
local animation2 = Instance.new("Animation")
animation2.AnimationId = "rbxassetid://1957890538"
local anims = {animation1,animation2}
tool = Instance.new("Tool")
tool.Name = "Fake Knife"
tool.Grip = CFrame.new(0, -1.16999984, 0.0699999481, 1, 0, 0, 0, 1, 0, 0, 0, 1)
tool.GripForward = Vector3.new(-0, -0, -1)
tool.GripPos = Vector3.new(0,-1.17,0.0699999)
tool.GripRight = Vector3.new(1,0,0)
tool.GripUp = Vector3.new(0,1,0)
handle = Instance.new("Part")
handle.Size = Vector3.new(0.310638815, 3.42103457, 1.08775854)
handle.Name = "Handle"
handle.Transparency = 1
handle.Parent = tool
tool.Parent = lp.Backpack
knife=lp.Character:WaitForChild("KnifeDisplay")
knife.Massless = true
lp:GetMouse().Button1Down:Connect(function()
if tool and  tool.Parent == lp.Character then
local an = lp.Character.Humanoid:LoadAnimation(anims[math.random(1,2)])
an:Play()
end
end)
local aa = Instance.new("Attachment",handle)
local ba = Instance.new("Attachment",knife)
local hinge = Instance.new("HingeConstraint",knife)
hinge.Attachment0=aa hinge.Attachment1=ba
hinge.LimitsEnabled = true
hinge.LowerAngle = 0
hinge.Restitution = 0
hinge.UpperAngle = 0
lp.Character:WaitForChild"UpperTorso":FindFirstChild("Weld"):Destroy()
game:GetService"RunService".Heartbeat:Connect(function()
setsimulationradius(1/0,1/0)
if tool.Parent == lp.Character then
knife.CFrame = handle.CFrame
else
knife.CFrame = lp.Character:WaitForChild"UpperTorso".CFrame
end
end)
end)


Trolling:Button("Invintory Spoofer (Client)", function()
local WeaponOwnRange = {
 min=1,
 max=5
}

local DataBase, PlayerData = getrenv()._G.Database, getrenv()._G.PlayerData

local newOwned = {}

for i,v in next, DataBase.Item do
 newOwned[i] = math.random(WeaponOwnRange.min, WeaponOwnRange.max) -- newOwned[Weapon]: ItemCount
end

local PlayerWeapons = PlayerData.Weapons

game:GetService("RunService"):BindToRenderStep("InventoryUpdate", 0, function()
 PlayerWeapons.Owned = newOwned
end)

game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
--B



b:Button("Made By APollo#2391", function()
end)
