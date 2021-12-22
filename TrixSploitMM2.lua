local library = loadstring(game:HttpGet(
                               "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()

local window = library:Window("Trix Sploit")

local Tab = window:Server("MM2", "")
local Section = Tab:Channel("Local Player")

Section:Button("Fly v1 (C)", function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/ReJ0TXqg")))
end)

Section:Button("Fly v2 (E)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jebnPDXh", true))()
end)

Section:Button("Infinite Jump (C)", function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2wgbZ6Xd")))
end)

Section:Button("Noclip (B)", function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/kt3Nxzw1")))
end)

Section:Button("Xray (X)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vNpnSDCz", true))()
end)

Section:Button("Gravity (P)", function()
    game.Workspace.Gravity = 75
    if game.Workspace.Gravity == 50 then
        print("50")
    elseif game.Workspace.Gravity == 196.2 then
        print("196.2")
    end
end)

Section:Button("God Mode", function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
    Instance.new('Humanoid', game.Players.LocalPlayer.Character)
    game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass(
        'Humanoid').HipHeight = 2
end)

Section:Button("Invisible God Mode", function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
    Instance.new('Humanoid', game.Players.LocalPlayer.Character)
    game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass(
        'Humanoid').HipHeight = 2
    wait(0.30)
    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    game.Players.LocalPlayer.Character.LeftFoot:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.RightFoot:Destroy()
    game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
    game.Players.LocalPlayer.Character.UpperTorso:Destroy()
    game.Players.LocalPlayer.Character.Torso:Destroy()
    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
    game.Players.LocalPlayer.Character.UpperTorso:Destroy()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)

Section:Button("Click Tp", function()
    pcall(loadstring(game:HttpGet("https://cdn.julman.fr/scripts/29.lua")))
end)

Section:Button("Shift Run", function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/Vt17R8FX")))
end)

Section:Button("Less Lag", function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

Section:Textbox("Walk Speed", "Default : 16", "", function (value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

Section:Textbox("Jump Power", "Default : 50", "", function (value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value;
end)

local Section = Tab:Channel("Main")

Section:Toggle("AutoFarm + God Mode", false, function(omg)
    getgenv().CoinFarm = omg
    if getgenv().CoinFarm then
        getgenv().TpDelay = 2
        loadstring(game:HttpGet(
                       "https://gist.githubusercontent.com/TurkOyuncu99/6cbdf3cd3182d2889d2af766da9a2286/raw/3b3872fa207a24a6e78fc4b5a07c37cead7842df/casgg"))()
    end
end)

local gunGrabberFunction = Instance.new("BindableFunction", screen)

gunGrabberFunction.OnInvoke = function()
        local currentX = game.Players.LocalPlayer.Character.HumanoidRootPart
                             .CFrame.X
        local currentY = game.Players.LocalPlayer.Character.HumanoidRootPart
                             .CFrame.Y
        local currentZ = game.Players.LocalPlayer.Character.HumanoidRootPart
                             .CFrame.Z

        if workspace:FindFirstChild("GunDrop") ~= nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                workspace:FindFirstChild("GunDrop").CFrame
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(currentX, currentY, currentZ)
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Trix Sploit",
                Text = "Wait for the Sheriff's death to grab the gun",
                Icon = "rbxassetid://7078491376",
                Duration = "2"
            })
        end
    end

    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
        if k:lower() == "g" then gunGrabberFunction:Invoke(); end
    end)

Section:Button("Gun Grabber (G)", function()
    gunGrabberFunction:Invoke()
end)

Section:Button("Fake Gun", function()
    game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(
        true)
end)

local Bombs = Tab:Channel("Bombs")

Bombs:Textbox("Bomb Spam", "Number", "", function(input)
    local Players = game:GetService("Players")

    local BOMB_AMOUNT = input
    local LocalPlayer = Players.LocalPlayer

    assert(LocalPlayer.Character:FindFirstChild("FakeBomb"),
           "You need to equip the PrankBomb.")

    for i = 1, BOMB_AMOUNT do
        LocalPlayer.Character.FakeBomb.Remote:FireServer(
            LocalPlayer.Character.Head.CFrame, 50)
    end
end)

Bombs:Button("Poop Nuke", function()
    local Players = game:GetService("Players")

    local LocalPlayer = Players.LocalPlayer

    assert(LocalPlayer.Character:FindFirstChild("FakeBomb"),
           "You need to equip the PrankBomb.")

    for i = 1, 10 do
        LocalPlayer.Character.FakeBomb.Remote:FireServer(
            LocalPlayer.Character.LowerTorso.CFrame, 50)
    end
end)


Bombs:Button("Cum Nuke", function()
    local Players = game:GetService("Players")

    local LocalPlayer = Players.LocalPlayer

    assert(LocalPlayer.Character:FindFirstChild("FakeBomb"),
           "You need to equip the PrankBomb.")

    for i = 1, 5 do
        LocalPlayer.Character.FakeBomb.Remote:FireServer(
            LocalPlayer.Character.UpperTorso.CFrame, 500)
    end
end)

Bombs:Toggle("Chaos Nuke", false, function(value)
    getgenv().chaos = value
    while wait() do
        if getgenv().chaos then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer

            assert(LocalPlayer.Character:FindFirstChild("FakeBomb"),
                   "You need to equip the PrankBomb.")

            LocalPlayer.Character.FakeBomb.Remote:FireServer(
                LocalPlayer.Character.UpperTorso.CFrame, 500)
        end
    end
end)

Bombs:Button("Freeze + Lag Server", function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    assert(LocalPlayer.Character:FindFirstChild("FakeBomb"),
           "You need to equip the PrankBomb.")

    for i = 1, 5 do
        for i = 1, 30 do
            for i = 1, 10 do
                LocalPlayer.Character.FakeBomb.Remote:FireServer(
                    LocalPlayer.Character.UpperTorso.CFrame, 1000)
            end
        end
    end
end)

Bombs:Button("Super Plus Nuke", function()
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-138.153076, 135.348938, -2.30976081, -0.196709305,
                       0.723047256, -0.662199557, -7.4505806e-09, 0.675395548,
                       0.737455785, 0.980461836, 0.145064414, -0.132856578), 50)
    end
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-107.400009, 148.912476, 22.204958, -0.122687079,
                       -0.942620218, 0.310507715, 3.7252903e-09, 0.312871307,
                       0.949795544, -0.992445409, 0.116527639, -0.0383852683),
            50)
    end
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-88.5685959, 136.862167, -1.30290008, 0.734667599,
                       -0.613278866, 0.290090829, -1.49011594e-08, 0.427593142,
                       0.903971374, -0.678427279, -0.664118469, 0.3141388), 50)
    end
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-123.632271, 135.942673, 45.0633621, 0.986195266,
                       -0.134651333, 0.096374929, -0, 0.582019389, 0.813174903,
                       -0.165587172, -0.801949263, 0.573984683), 50)
    end
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-89.313736, 135.35994, 40.2597237, 0.0261543039,
                       -0.635926008, 0.771306872, -0, 0.771570861, 0.636143565,
                       -0.999657989, -0.0166378915, 0.0201798957), 50)
    end
    for i = 1, 15 do
        workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
            CFrame.new(-140.541428, 140.28067, 61.2714348, -0.702649832,
                       -0.0621357225, 0.70881772, -0, 0.996179938, 0.0873261988,
                       -0.711535871, 0.0613597371, -0.699965596), 50)
    end
end)

Bombs:Button("Plus Nuke", function()
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-138.153076, 135.348938, -2.30976081, -0.196709305,
                   0.723047256, -0.662199557, -7.4505806e-09, 0.675395548,
                   0.737455785, 0.980461836, 0.145064414, -0.132856578), 50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-107.400009, 148.912476, 22.204958, -0.122687079,
                   -0.942620218, 0.310507715, 3.7252903e-09, 0.312871307,
                   0.949795544, -0.992445409, 0.116527639, -0.0383852683), 50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-88.5685959, 136.862167, -1.30290008, 0.734667599,
                   -0.613278866, 0.290090829, -1.49011594e-08, 0.427593142,
                   0.903971374, -0.678427279, -0.664118469, 0.3141388), 50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-123.632271, 135.942673, 45.0633621, 0.986195266,
                   -0.134651333, 0.096374929, -0, 0.582019389, 0.813174903,
                   -0.165587172, -0.801949263, 0.573984683), 50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-89.313736, 135.35994, 40.2597237, 0.0261543039,
                   -0.635926008, 0.771306872, -0, 0.771570861, 0.636143565,
                   -0.999657989, -0.0166378915, 0.0201798957), 50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(
        CFrame.new(-140.541428, 140.28067, 61.2714348, -0.702649832,
                   -0.0621357225, 0.70881772, -0, 0.996179938, 0.0873261988,
                   -0.711535871, 0.0613597371, -0.699965596), 50)
end)

local Section = Tab:Channel("Emote")

Section:Button("Ninja", function()
     local string_1 = "ninja";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

Section:Button("Zombie", function()
     local string_1 = "zombie";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

Section:Button("Zen", function()
local string_1 = "zen";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)


Section:Button("Dab", function()
 local string_1 = "dab";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

Section:Button("Sit", function()
 local string_1 = "sit";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

Section:Button("Floss", function()
 local string_1 = "floss";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

local Section = Tab:Channel("Visual")

Section:Button("Fov", function()
local FovNumber = 150 --Enter your FOV number here
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber
end)

Section:Button("Reset Fov", function()
local FovNumber = 70 --Enter your FOV number here
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber
end)

local function setEspButton()
    local ESPToggle = false

    local plrs = game:GetService("Players")
    local faces = {"Back", "Bottom", "Front", "Left", "Right", "Top"}

    local murder_beam = nil
    local sheriff_beam = nil

    local function removeEsp()
        for _, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == ("JulManEspGUI") then v.Parent = nil end
        end

        sheriff_beam:Destroy()
        murder_beam:Destroy()
    end

    local function updateEsp()
        pcall(removeEsp)

        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local bgui = Instance.new("BillboardGui", v.Character.Head)
                bgui.Name = ("JulManEspGUI")
                bgui.AlwaysOnTop = true
                bgui.ExtentsOffset = Vector3.new(0, 2, 0)
                bgui.Size = UDim2.new(0, 200, 0, 50)
                local nam = Instance.new("TextLabel", bgui)
                nam.Text = v.Name
                nam.BackgroundTransparency = 1
                nam.TextSize = 23
                nam.Font = Enum.Font.Ubuntu
                nam.TextColor3 = Color3.new(255, 255, 255)
                nam.Size = UDim2.new(0, 200, 0, 50)

                if v.Backpack:FindFirstChild("Gun") or
                    v.Character:FindFirstChild("Gun") then
                    nam.TextColor3 = Color3.new(0, 0, 1)

                    local beam = Instance.new("Beam", game.Players.LocalPlayer
                                                  .Character.HumanoidRootPart)

                    sheriff_beam = beam
                    beam.Name = "Beam"
                    beam.Width0 = .2
                    beam.Width1 = .2
                    beam.FaceCamera = true

                    local attachment0 = Instance.new("Attachment")
                    attachment0.Name = "Attachment0"
                    attachment0.Parent = v.Character.HumanoidRootPart

                    local attachment1 = Instance.new("Attachment")
                    attachment1.Name = "Attachment1"
                    attachment1.Parent =
                        game.Players.LocalPlayer.Character.HumanoidRootPart

                    beam.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(0, 0, 1)),
                        ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0.5))
                    })
                    beam.Attachment0 = attachment0
                    beam.Attachment1 = attachment1

                    for _, p in pairs(v.Character:GetChildren()) do
                        if p.Name == ("Head") or p.Name == ("Torso") or p.Name ==
                            ("Right Arm") or p.Name == ("Right Leg") or p.Name ==
                            ("Left Arm") or p.Name == ("Left Leg") then
                            for _, f in pairs(faces) do
                                local m = Instance.new("SurfaceGui", p)
                                m.Name = ("JulManEspGUI")
                                m.Face = f
                                m.Enabled = true
                                m.AlwaysOnTop = true
                                local mf = Instance.new("Frame", m)
                                mf.Name = ("JulManEspGUI")
                                mf.Size = UDim2.new(1, 1, 1, 1)
                                mf.BorderSizePixel = 0
                                mf.BackgroundTransparency = 0.25
                                mf.Visible = true
                                mf.BackgroundColor3 = Color3.new(0, 0, 1)
                            end
                        end
                    end
                elseif v.Backpack:FindFirstChild("Knife") or
                    v.Character:FindFirstChild("Knife") then
                    nam.TextColor3 = Color3.new(1)

                    local beam = Instance.new("Beam", game.Players.LocalPlayer
                                                  .Character.HumanoidRootPart)
                    murder_beam = beam
                    beam.Name = "Beam"
                    beam.Width0 = .2
                    beam.Width1 = .2
                    beam.FaceCamera = true

                    local attachment0 = Instance.new("Attachment")
                    attachment0.Name = "Attachment0"
                    attachment0.Parent = v.Character.HumanoidRootPart

                    local attachment1 = Instance.new("Attachment")
                    attachment1.Name = "Attachment1"
                    attachment1.Parent =
                        game.Players.LocalPlayer.Character.HumanoidRootPart

                    beam.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(1)),
                        ColorSequenceKeypoint.new(1, Color3.new(0.5))
                    })

                    beam.Attachment0 = attachment0
                    beam.Attachment1 = attachment1

                    for _, p in pairs(v.Character:GetChildren()) do
                        if p.Name == ("Head") or p.Name == ("Torso") or p.Name ==
                            ("Right Arm") or p.Name == ("Right Leg") or p.Name ==
                            ("Left Arm") or p.Name == ("Left Leg") then
                            for _, f in pairs(faces) do
                                local m = Instance.new("SurfaceGui", p)
                                m.Name = ("JulManEspGUI")
                                m.Face = f
                                m.Enabled = true
                                m.AlwaysOnTop = true
                                local mf = Instance.new("Frame", m)
                                mf.Name = ("JulManEspGUI")
                                mf.Size = UDim2.new(1, 1, 1, 1)
                                mf.BorderSizePixel = 0
                                mf.Visible = true
                                mf.BackgroundTransparency = 0.25
                                mf.BackgroundColor3 = Color3.new(255, 0, 0)
                            end
                        end
                    end
                else
                    for _, p in pairs(v.Character:GetChildren()) do
                        if p.Name == ("Head") or p.Name == ("Torso") or p.Name ==
                            ("Right Arm") or p.Name == ("Right Leg") or p.Name ==
                            ("Left Arm") or p.Name == ("Left Leg") then
                            for _, f in pairs(faces) do
                                local m = Instance.new("SurfaceGui", p)
                                m.Name = ("JulManEspGUI")
                                m.Face = f
                                m.Enabled = true
                                m.AlwaysOnTop = true
                                local mf = Instance.new("Frame", m)
                                mf.Name = ("JulManEspGUI")
                                mf.Size = UDim2.new(1, 1, 1, 1)
                                mf.BorderSizePixel = 0
                                mf.Visible = true
                                mf.BackgroundTransparency = 0.25
                                mf.BackgroundColor3 = Color3.new(255, 255, 255)
                            end
                        end
                    end
                end
            end
        end
    end

    Section:Toggle("ESP", false, function (value)
	ESPToggle = value
        if ESPToggle then
            espEnable.Value = false
            espButton.BackgroundColor3 = Color3.new(1)

            pcall(removeEsp)
        else
            espEnable.Value = true
            espButton.BackgroundColor3 = Color3.new(0, 1)

            pcall(removeEsp)
            pcall(updateEsp)
        end
    end)

    game:GetService("Players").PlayerAdded:Connect(function(v)
        if ESPToggle == true then pcall(updateEsp) end
    end)

    game:GetService("Players").PlayerRemoving:Connect(function(v)
        if ESPToggle == true then pcall(updateEsp) end
    end)

    while wait(1) do if ESPToggle == true then pcall(updateEsp) end end
end
coroutine.wrap(setEspButton)()

Section:Toggle("Cham", false, function(loaxf)
    getgenv().CoinFarm = loaxf
    if getgenv().CoinFarm then
        getgenv().TpDelay = 2
        pcall(loadstring(game:HttpGet("https://pastebin.com/raw/eH39iKSg")))
    end
end)

local Section = Tab:Channel("Tp")
Section:Button("Tp Murderer", function()
local function GetMurderer()
    local plrs = game:GetService("Players")
    for i, v in pairs(plrs:GetPlayers()) do
        if v.Character:FindFirstChild("Knife") or
            v.Backpack:FindFirstChild("Knife") then return v end
    end
end

local Murderer = GetMurderer()

    if Murderer ~= nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            Murderer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
        workspace.CurrentCamera.CFrame =
            Murderer.Character.HumanoidRootPart.CFrame
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Trix Sploit",
            Text = "No murder found, the game has started ?",
            Icon = noIcon,
            Duration = "2"
        })
    end
end)

Section:Button("Tp Sheriff", function()
    local function GetSherif()
        local plrs = game:GetService("Players")
        for i, v in pairs(plrs:GetPlayers()) do
            if v.Character:FindFirstChild("Gun") or
                v.Backpack:FindFirstChild("Gun") then return v end
        end
    end

        local Sherif = GetSherif()

        if Sherif ~= nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                Sherif.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
            workspace.CurrentCamera.CFrame =
                Sherif.Character.HumanoidRootPart.CFrame
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Trix Sploit",
                Text = "No sherif found, use \"Gun Grabber\" to become him.",
                Icon = noIcon,
                Duration = "4",
                Button1 = "Gun Grabber [G]",
                Callback = gunGrabberFunction
            })
        end
    end)

Section:Button("Tp Lobby", function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                                                         -108.5,
                                                                         145,
                                                                         0.6)
end)

Section:Button("Tp Map", function ()
    local Workplace = workspace:GetChildren()

        for _, Thing in pairs(Workplace) do
            local ThingChildren = Thing:GetChildren()
            for _, Child in pairs(ThingChildren) do
                if Child.Name == "Spawns" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        Child.Spawn.CFrame
                end
            end
        end
end)

local Section = Tab:Channel("Fun")

Section:Button("Ctrl Delete", function()
pcall(loadstring(game:HttpGet("https://pastebin.com/raw/KGYKmYtW")))
end)

local Section = Tab:Channel("Scripts")
Section:Button("Xenny Ware", function()
pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/scripts/main/XennyWare.lua")))
end)

Section:Button("Eclipse Gui", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

Section:Button("Eclipse Hub", function()
loadstring(game:HttpGet("https://pastebin.com/raw/34KnyYvi", true))()
end)

Section:Button("Crash/Lags Server (Bombs)", function()
pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/scripts/main/SpamBombmm2.lua")))
 end)

Section:Button("JayHub", function()
loadstring(game:HttpGet("https://jack1214060.xyz/jayhub",true))()
end)

Section:Button("FlowerLily", function()
pcall(loadstring(game:HttpGet("https://pastebin.com/raw/fvB3nFZk")))
end)

Section:Button("Vynixu", function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
end)

Section:Button("Admin Panel", function()
 loadstring(game:HttpGet(('https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/MM2%20Admin%20Panel'),true))()
end)

Section:Button("Holdhub", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Holdigen/HoldHub/main/mm2", true))()
end)

Section:Button("Lucidity", function()
pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/scripts/main/mm2.lua")))
end)

Section:Button("VgHub", function()
 loadstring(game:HttpGet(("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"), true))()
end)

Section:Button("DarkHub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
 end)

Section:Button("OwlHub", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/ZinityDrops/OwlHubLink/master/OwlHubBack.lua"))();
 end)

