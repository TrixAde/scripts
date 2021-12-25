--MM2 Script by niko#3004 ;)

local plrs = game:service'Players'
local lplr = plrs.LocalPlayer
local esp = false
local gungrabber = false
local grabber = false
local noclip = false
local fast = false
local jump = false
local gravity = false

local NikoEsp = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local EspLabel = Instance.new("TextLabel")
local ActivateEspBtn = Instance.new("TextButton")
local GunLabel = Instance.new("TextLabel")
local ActivateGunBtn = Instance.new("TextButton")
local CoinGrabber = Instance.new("TextLabel")
local ActivateCoinBtn = Instance.new("TextButton")
local LobbyLabel = Instance.new("TextLabel")
local ActivateLobbyBtn = Instance.new("TextButton")
local FastLabel = Instance.new("TextLabel")
local ActivateFastBtn = Instance.new("TextButton")
local HighJumpLabel = Instance.new("TextLabel")
local ActivateJumpBtn = Instance.new("TextButton")
local LowGravityLabel = Instance.new("TextLabel")
local ActivateGravityBtn = Instance.new("TextButton")
local NoclipLabel = Instance.new("TextLabel")
local ActivateNoclipBtn = Instance.new("TextButton")

NikoEsp.Name = "NikoEsp"
NikoEsp.Parent = game.Players.LocalPlayer.PlayerGui
NikoEsp.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = NikoEsp
MainFrame.AnchorPoint = Vector2.new(0, 1)
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.69999998807907
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.00300000003, 0, 0.920000017, 0)
MainFrame.Size = UDim2.new(0, 150, 0, 200)

EspLabel.Name = "EspLabel"
EspLabel.Parent = MainFrame
EspLabel.BackgroundColor3 = Color3.new(1, 1, 1)
EspLabel.BackgroundTransparency = 1
EspLabel.Size = UDim2.new(1, 0, 0, 25)
EspLabel.Font = Enum.Font.SourceSans
EspLabel.Text = "   ESP"
EspLabel.TextColor3 = Color3.new(1, 1, 1)
EspLabel.TextSize = 14
EspLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateEspBtn.Name = "ActivateEspBtn"
ActivateEspBtn.Parent = EspLabel
ActivateEspBtn.AnchorPoint = Vector2.new(1, 0)
ActivateEspBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateEspBtn.BorderSizePixel = 0
ActivateEspBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateEspBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateEspBtn.Font = Enum.Font.SourceSans
ActivateEspBtn.Text = ""
ActivateEspBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateEspBtn.TextSize = 14

GunLabel.Name = "GunLabel"
GunLabel.Parent = MainFrame
GunLabel.BackgroundColor3 = Color3.new(1, 1, 1)
GunLabel.BackgroundTransparency = 1
GunLabel.Position = UDim2.new(0, 0, 0, 25)
GunLabel.Size = UDim2.new(1, 0, 0, 25)
GunLabel.Font = Enum.Font.SourceSans
GunLabel.Text = "   GUNGRABBER"
GunLabel.TextColor3 = Color3.new(1, 1, 1)
GunLabel.TextSize = 14
GunLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateGunBtn.Name = "ActivateGunBtn"
ActivateGunBtn.Parent = GunLabel
ActivateGunBtn.AnchorPoint = Vector2.new(1, 0)
ActivateGunBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateGunBtn.BorderSizePixel = 0
ActivateGunBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateGunBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateGunBtn.Font = Enum.Font.SourceSans
ActivateGunBtn.Text = ""
ActivateGunBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateGunBtn.TextSize = 14

CoinGrabber.Name = "CoinGrabber"
CoinGrabber.Parent = MainFrame
CoinGrabber.BackgroundColor3 = Color3.new(1, 1, 1)
CoinGrabber.BackgroundTransparency = 1
CoinGrabber.Position = UDim2.new(0, 0, 0, 50)
CoinGrabber.Size = UDim2.new(1, 0, 0, 25)
CoinGrabber.Font = Enum.Font.SourceSans
CoinGrabber.Text = "   COINGRABBER"
CoinGrabber.TextColor3 = Color3.new(1, 1, 1)
CoinGrabber.TextSize = 14
CoinGrabber.TextXAlignment = Enum.TextXAlignment.Left

ActivateCoinBtn.Name = "ActivateCoinBtn"
ActivateCoinBtn.Parent = CoinGrabber
ActivateCoinBtn.AnchorPoint = Vector2.new(1, 0)
ActivateCoinBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateCoinBtn.BorderSizePixel = 0
ActivateCoinBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateCoinBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateCoinBtn.Font = Enum.Font.SourceSans
ActivateCoinBtn.Text = ""
ActivateCoinBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateCoinBtn.TextSize = 14

LobbyLabel.Name = "LobbyLabel"
LobbyLabel.Parent = MainFrame
LobbyLabel.BackgroundColor3 = Color3.new(1, 1, 1)
LobbyLabel.BackgroundTransparency = 1
LobbyLabel.Position = UDim2.new(0, 0, 0, 75)
LobbyLabel.Size = UDim2.new(1, 0, 0, 25)
LobbyLabel.Font = Enum.Font.SourceSans
LobbyLabel.Text = "   TP LOBBY"
LobbyLabel.TextColor3 = Color3.new(1, 1, 1)
LobbyLabel.TextSize = 14
LobbyLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateLobbyBtn.Name = "ActivateLobbyBtn"
ActivateLobbyBtn.Parent = LobbyLabel
ActivateLobbyBtn.AnchorPoint = Vector2.new(1, 0)
ActivateLobbyBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateLobbyBtn.BorderSizePixel = 0
ActivateLobbyBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateLobbyBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateLobbyBtn.Font = Enum.Font.SourceSans
ActivateLobbyBtn.Text = ""
ActivateLobbyBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateLobbyBtn.TextSize = 14

FastLabel.Name = "FastLabel"
FastLabel.Parent = MainFrame
FastLabel.BackgroundColor3 = Color3.new(1, 1, 1)
FastLabel.BackgroundTransparency = 1
FastLabel.Position = UDim2.new(0, 0, 0, 100)
FastLabel.Size = UDim2.new(1, 0, 0, 25)
FastLabel.Font = Enum.Font.SourceSans
FastLabel.Text = "   SPEED"
FastLabel.TextColor3 = Color3.new(1, 1, 1)
FastLabel.TextSize = 14
FastLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateFastBtn.Name = "ActivateFastBtn"
ActivateFastBtn.Parent = FastLabel
ActivateFastBtn.AnchorPoint = Vector2.new(1, 0)
ActivateFastBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateFastBtn.BorderSizePixel = 0
ActivateFastBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateFastBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateFastBtn.Font = Enum.Font.SourceSans
ActivateFastBtn.Text = ""
ActivateFastBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateFastBtn.TextSize = 14

HighJumpLabel.Name = "HighJumpLabel"
HighJumpLabel.Parent = MainFrame
HighJumpLabel.BackgroundColor3 = Color3.new(1, 1, 1)
HighJumpLabel.BackgroundTransparency = 1
HighJumpLabel.Position = UDim2.new(0, 0, 0, 125)
HighJumpLabel.Size = UDim2.new(1, 0, 0, 25)
HighJumpLabel.Font = Enum.Font.SourceSans
HighJumpLabel.Text = "   HIGHJUMP"
HighJumpLabel.TextColor3 = Color3.new(1, 1, 1)
HighJumpLabel.TextSize = 14
HighJumpLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateJumpBtn.Name = "ActivateJumpBtn"
ActivateJumpBtn.Parent = HighJumpLabel
ActivateJumpBtn.AnchorPoint = Vector2.new(1, 0)
ActivateJumpBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateJumpBtn.BorderSizePixel = 0
ActivateJumpBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateJumpBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateJumpBtn.Font = Enum.Font.SourceSans
ActivateJumpBtn.Text = ""
ActivateJumpBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateJumpBtn.TextSize = 14

LowGravityLabel.Name = "LowGravityLabel"
LowGravityLabel.Parent = MainFrame
LowGravityLabel.BackgroundColor3 = Color3.new(1, 1, 1)
LowGravityLabel.BackgroundTransparency = 1
LowGravityLabel.Position = UDim2.new(0, 0, 0, 150)
LowGravityLabel.Size = UDim2.new(1, 0, 0, 25)
LowGravityLabel.Font = Enum.Font.SourceSans
LowGravityLabel.Text = "   LOWGRAVITY"
LowGravityLabel.TextColor3 = Color3.new(1, 1, 1)
LowGravityLabel.TextSize = 14
LowGravityLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateGravityBtn.Name = "ActivateGravityBtn"
ActivateGravityBtn.Parent = LowGravityLabel
ActivateGravityBtn.AnchorPoint = Vector2.new(1, 0)
ActivateGravityBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateGravityBtn.BorderSizePixel = 0
ActivateGravityBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateGravityBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateGravityBtn.Font = Enum.Font.SourceSans
ActivateGravityBtn.Text = ""
ActivateGravityBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateGravityBtn.TextSize = 14

NoclipLabel.Name = "NoclipLabel"
NoclipLabel.Parent = MainFrame
NoclipLabel.BackgroundColor3 = Color3.new(1, 1, 1)
NoclipLabel.BackgroundTransparency = 1
NoclipLabel.Position = UDim2.new(0, 0, 0, 175)
NoclipLabel.Size = UDim2.new(1, 0, 0, 25)
NoclipLabel.Font = Enum.Font.SourceSans
NoclipLabel.Text = "   NOCLIP"
NoclipLabel.TextColor3 = Color3.new(1, 1, 1)
NoclipLabel.TextSize = 14
NoclipLabel.TextXAlignment = Enum.TextXAlignment.Left

ActivateNoclipBtn.Name = "ActivateNoclipBtn"
ActivateNoclipBtn.Parent = NoclipLabel
ActivateNoclipBtn.AnchorPoint = Vector2.new(1, 0)
ActivateNoclipBtn.BackgroundColor3 = Color3.new(1, 0, 0)
ActivateNoclipBtn.BorderSizePixel = 0
ActivateNoclipBtn.Position = UDim2.new(1, 0, 0, 0)
ActivateNoclipBtn.Size = UDim2.new(0, 25, 1, 0)
ActivateNoclipBtn.Font = Enum.Font.SourceSans
ActivateNoclipBtn.Text = ""
ActivateNoclipBtn.TextColor3 = Color3.new(0, 0, 0)
ActivateNoclipBtn.TextSize = 14

function makecham(char,plr)
    for i,v in pairs(char:GetChildren()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
            if v.Name ~= "HumanoidRootPart" then
                if v:FindFirstChild("NikoCham") then
                    v.NikoCham:Destroy()
                end
                local part = Instance.new("BoxHandleAdornment",v)
                part.Name = "NikoCham"
                part.Adornee = v
                part.AlwaysOnTop = true
                part.Transparency = 0.5
                part.ZIndex = 5
                part.Size = v.Size + Vector3.new(.2, .2, .2)
                part.Color3 = Color3.new(0,255,0)
                char.Humanoid.Died:connect(function()
                    part:Destroy()
                end)
                local cor = coroutine.wrap(function()
                    while true do
                        wait(1)
						
                        if char:FindFirstChild('Knife') or plr.Backpack:FindFirstChild('Knife') then
                    part.Color3 = Color3.new(255,0,0)
                    print("---------------------")
                    print("MURDERER:")
                    print(plr.Name)
                    print("---------------------")
                elseif char:FindFirstChild('Gun') or plr.Backpack:FindFirstChild('Gun') then
					part.Color3 = Color3.new(0,0,255)
				else
	
                   -- part.Color3 = Color3.new(0,255,0)
					if lplr.Character:FindFirstChild('Knife') or lplr.Backpack:FindFirstChild('Knife') then
						part.Color3 = Color3.new(255,0,0)
					else
						part.Color3 = Color3.new(0,255,0)
						end
                		end
                    end
                end)
                cor()
            end
        end
    end
end

plrs.PlayerAdded:connect(function(plr)
    while true do
        wait()
        if plr then
            if plr.Character then
                wait(0.5)
                if esp == true then
                    makecham(plr.Character,plr)
                end
                
            end
        end
    end
    plr.CharacterRemoving:connect(function()
        if plr ~= lplr then
            wait(2)
            if esp == true then
                makecham(plr.Character,plr)
            end
        end
        
    end)
end)

--FLY SCRIPT BY RGEENEUS

local speed = 50

local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

local startFly = function () -- Call this function to begin flying 
    if not p.Character or not p.Character.Head or flying then return end
    c = p.Character
    h = c.Humanoid
    h.PlatformStand = true
    cam = workspace:WaitForChild('Camera')
    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head
    flying = true
    h.Died:connect(function() flying = false end)
end

local endFly = function () -- Call this function to stop flying
    if not p.Character or not flying then return end
    h.PlatformStand = false
    bv:Destroy()
    bav:Destroy()
    flying = false
end

game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
    if GPE then return end
    for i, e in pairs(buttons) do
        if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
            buttons[i] = true
            buttons.Moving = true
        end
    end
end)

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
    if GPE then return end
    local a = false
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false
            end
            if buttons[i] then a = true end
        end
    end
    buttons.Moving = a
end)

local setVec = function (vec)
    return vec * (speed / vec.Magnitude)
end

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position
        local cf = cam.CFrame
        local ax, ay, az = cf:toEulerAnglesXYZ()
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
        if buttons.Moving then
            local t = Vector3.new()
            if buttons.W then t = t + (setVec(cf.lookVector)) end
            if buttons.S then t = t - (setVec(cf.lookVector)) end
            if buttons.A then t = t - (setVec(cf.rightVector)) end
            if buttons.D then t = t + (setVec(cf.rightVector)) end
            c:TranslateBy(t * step)
        end
    end
end)

ActivateEspBtn.MouseButton1Click:connect(function()
        if esp then
        ActivateEspBtn.BackgroundColor3 = Color3.new(255,0,0)
        esp = false
        for i,v in pairs(plrs:GetPlayers()) do
            if v.Character then
                for w,g in pairs(v.Character:GetChildren()) do
                    if g:FindFirstChild('NikoCham') then
                        g.NikoCham:Destroy()
                    end
                end
            end
            v.CharacterRemoving:connect(function()
                if v~=lplr then
                    wait(6)
                    if esp then
                        makecham(v.Character,v)
                    end
                end
            end)
        end
    else
        esp = true
        ActivateEspBtn.BackgroundColor3 = Color3.new(0,255,0)
        for i,v in pairs(plrs:GetPlayers()) do
            if v.Character then
                if v~=lplr then
                    makecham(v.Character,v)
                end
            end
            v.CharacterRemoving:connect(function()
                wait(6)
                if v~= lplr then
                    if esp then
                    makecham(v.Character,v)
                end
                end
                
            end)
        end
        end
end)
ActivateGunBtn.MouseButton1Click:connect(function()
        if gungrabber then
        gungrabber = false
        ActivateGunBtn.BackgroundColor3 = Color3.new(255,0,0)
    else
        gungrabber = true
        ActivateGunBtn.BackgroundColor3 = Color3.new(0,255,0)
    end
    while gungrabber do
        wait(0.1)
        if workspace:FindFirstChild('GunDrop') then
            workspace.GunDrop.CFrame = lplr.Character.HumanoidRootPart.CFrame
        end
        end
end)
ActivateCoinBtn.MouseButton1Click:connect(function()
        if grabber then
            ActivateCoinBtn.BackgroundColor3 = Color3.new(255,0,0)
        grabber = false
    else
        grabber = true
        ActivateCoinBtn.BackgroundColor3 = Color3.new(0,255,0)
    end
    while grabber do
        wait(0.1)
    	for i,v in pairs(workspace:GetChildren()) do
        	if  v:FindFirstChild('CoinContainer') then
            	for w,g in pairs(v.CoinContainer:GetChildren()) do
                	g.CFrame = lplr.Character.Torso.CFrame
           		 end
        	end
   		end 
    end
end)
ActivateLobbyBtn.MouseButton1Click:connect(function()
        ActivateLobbyBtn.BackgroundColor3 = Color3.new(0,255,0)
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-108,138,50))
        wait(0.1)
        ActivateLobbyBtn.BackgroundColor3 = Color3.new(255,0,0)
end)
ActivateFastBtn.MouseButton1Click:connect(function()
        if fast then
			fast =false
            ActivateFastBtn.BackgroundColor3 = Color3.new(255,0,0)
            lplr.Character.Humanoid.WalkSpeed = 16
        else
	fast = true
            ActivateFastBtn.BackgroundColor3 = Color3.new(0,255,0)
            lplr.Character.Humanoid.WalkSpeed = 150
        end
end)
ActivateJumpBtn.MouseButton1Click:connect(function()
        if jump then
			jump = false
            ActivateJumpBtn.BackgroundColor3 = Color3.new(255,0,0)
            lplr.Character.Humanoid.JumpPower = 50
        else
			jump = true
            lplr.Character.Humanoid.JumpPower = 150
            ActivateJumpBtn.BackgroundColor3 = Color3.new(0,255,0)
        end
end)
ActivateGravityBtn.MouseButton1Click:connect(function()
        if gravity then
			gravity = false
            ActivateGravityBtn.BackgroundColor3 = Color3.new(255,0,0)
            workspace.Gravity = 200
        else
			gravity =true
            ActivateGravityBtn.BackgroundColor3 = Color3.new(0,255,0)
            workspace.Gravity = 50
        end
end)
ActivateNoclipBtn.MouseButton1Click:connect(function()
        if noclip then
            noclip = false
            endFly()
            ActivateNoclipBtn.BackgroundColor3 = Color3.new(255,0,0)
        else
            noclip =true
            startFly()
            ActivateNoclipBtn.BackgroundColor3 = Color3.new(0,255,0)
        end
end)

game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
end)
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
