-- Gui to Lua
-- Version: 3.2
-- Script Created by Nihilize
 
FavoriteColor = Color3.fromRGB(0, 0, 255) --(Red, Green, Blue) from 0 to 255
 
local function getGuns()
    --Slot 1--
    
    --Remington870--------------------------------------------
    game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) --Remington 870
    ----------------------------------------------------------
    
    --Slot 2--
 
    --M4A1----------------------------------------------------
    if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
        game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
    else --If you don't have gamepass for M4A1 then you will get the converted AK-47
        game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP) 
        require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["FireRate"] = 0.09
    end
    ----------------------------------------------------------
    
    --Slot 3--
    
    --AK-47---------------------------------------------------
    if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
        --If you don't have gamepass for M4A1 then you will not get this AK-47
        game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end
    ----------------------------------------------------------
    
    --Slot 4--
    
    --M9---------------------------------------------------
    game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
    game.Players.LocalPlayer:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
    -------------------------------------------------------
end
 
-- Instances:
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ObGuns = Instance.new("TextButton")
local NexusTP = Instance.new("TextButton")
local BackTP = Instance.new("TextButton")
local BeGuardF = Instance.new("TextButton")
local BeInmate = Instance.new("TextButton")
local BeCriminal = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local BeNeutral = Instance.new("TextButton")
local YardTP = Instance.new("TextButton")
local CafeTP = Instance.new("TextButton")
local Refresh = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local BeGuard = Instance.new("TextButton")
local CellsTP = Instance.new("TextButton")
local Lock = Instance.new("TextButton")
local ArmoryTP = Instance.new("TextButton")
local ChatEnabled = true
local BubblesEnabled = true
 
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = FavoriteColor
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.8, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 200, 0, 300)
Frame.BorderMode = "Inset"
 
Title.Name = "Title"
Title.Parent = Frame
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
Title.Size = UDim2.new(0, 180, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Nihilize H4X"
Title.TextColor3 = FavoriteColor
Title.TextScaled = true
Title.TextSize = 30.000
Title.TextWrapped = true
 
ObGuns.Name = "ObGuns"
ObGuns.Parent = Frame
ObGuns.AnchorPoint = Vector2.new(0.5, 0.5)
ObGuns.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ObGuns.BorderColor3 = FavoriteColor
ObGuns.BorderSizePixel = 2
ObGuns.Position = UDim2.new(0.275000006, 0, 0.200000003, 0)
ObGuns.Size = UDim2.new(0, 73, 0, 32)
ObGuns.Font = Enum.Font.SourceSans
ObGuns.Text = "Guns"
ObGuns.TextColor3 = FavoriteColor
ObGuns.TextSize = 25.000
ObGuns.TextWrapped = true
ObGuns.BorderMode = "Inset"
 
NexusTP.Name = "NexusTP"
NexusTP.Parent = Frame
NexusTP.AnchorPoint = Vector2.new(0.5, 0.5)
NexusTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NexusTP.BorderColor3 = FavoriteColor
NexusTP.BorderSizePixel = 2
NexusTP.Position = UDim2.new(0.275000006, 0, 0.340000004, 0)
NexusTP.Size = UDim2.new(0, 73, 0, 32)
NexusTP.Font = Enum.Font.SourceSans
NexusTP.Text = "Nexus"
NexusTP.TextColor3 = FavoriteColor
NexusTP.TextSize = 25.000
NexusTP.TextWrapped = true
NexusTP.BorderMode = "Inset"
 
BackTP.Name = "BackTP"
BackTP.Parent = Frame
BackTP.AnchorPoint = Vector2.new(0.5, 0.5)
BackTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BackTP.BorderColor3 = FavoriteColor
BackTP.BorderSizePixel = 2
BackTP.Position = UDim2.new(0.275000006, 0, 0.479999989, 0)
BackTP.Size = UDim2.new(0, 73, 0, 32)
BackTP.Font = Enum.Font.SourceSans
BackTP.Text = "Back"
BackTP.TextColor3 = FavoriteColor
BackTP.TextSize = 25.000
BackTP.TextWrapped = true
BackTP.BorderMode = "Inset"
 
BeGuardF.Name = "BeGuardF"
BeGuardF.Parent = Frame
BeGuardF.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuardF.BackgroundColor3 = Color3.fromRGB(9, 0, 77)
BeGuardF.BorderColor3 = FavoriteColor
BeGuardF.BorderSizePixel = 2
BeGuardF.Position = UDim2.new(0.680000007, 0, 0.224999994, 0)
BeGuardF.Size = UDim2.new(0, 20, 0, 17)
BeGuardF.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuardF.ZIndex = 3
BeGuardF.Font = Enum.Font.SourceSans
BeGuardF.Text = ""
BeGuardF.TextColor3 = FavoriteColor
BeGuardF.TextSize = 25.000
BeGuardF.TextWrapped = true
BeGuardF.BorderMode = "Inset"
 
Credits.Name = "Credits"
Credits.Parent = ScreenGui
Credits.AnchorPoint = Vector2.new(0, 1)
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.Position = UDim2.new(0, 0, 1, 0)
Credits.Size = UDim2.new(0, 1024, 0, 64)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Script created by Nihilize"
Credits.TextColor3 = FavoriteColor
Credits.TextScaled = true
Credits.TextXAlignment = "Left"
Credits.TextYAlignment = "Bottom"
Credits.TextSize = 30.000 
Credits.TextWrapped = true
 
BeInmate.Name = "BeInmate"
BeInmate.Parent = Frame
BeInmate.AnchorPoint = Vector2.new(0.5, 0.5)
BeInmate.BackgroundColor3 = Color3.fromRGB(92, 40, 1)
BeInmate.BorderColor3 = FavoriteColor
BeInmate.BorderSizePixel = 2
BeInmate.Position = UDim2.new(0.589999974, 0, 0.200000003, 0)
BeInmate.Size = UDim2.new(0, 20, 0, 32)
BeInmate.ZIndex = 2
BeInmate.Font = Enum.Font.SourceSans
BeInmate.Text = ""
BeInmate.TextColor3 = FavoriteColor
BeInmate.TextSize = 25.000
BeInmate.TextWrapped = true
BeInmate.BorderMode = "Inset"
 
BeCriminal.Name = "BeCriminal"
BeCriminal.Parent = Frame
BeCriminal.AnchorPoint = Vector2.new(0.5, 0.5)
BeCriminal.BackgroundColor3 = Color3.fromRGB(96, 0, 1)
BeCriminal.BorderColor3 = FavoriteColor
BeCriminal.BorderSizePixel = 2
BeCriminal.Position = UDim2.new(0.769999981, 0, 0.200000003, 0)
BeCriminal.Size = UDim2.new(0, 20, 0, 32)
BeCriminal.ZIndex = 2
BeCriminal.Font = Enum.Font.SourceSans
BeCriminal.Text = ""
BeCriminal.TextColor3 = FavoriteColor
BeCriminal.TextSize = 25.000
BeCriminal.TextWrapped = true
BeCriminal.BorderMode = "Inset"
 
BeNeutral.Name = "BeNeutral"
BeNeutral.Parent = Frame
BeNeutral.AnchorPoint = Vector2.new(0.5, 0.5)
BeNeutral.BackgroundColor3 = Color3.fromRGB(140, 140, 140)
BeNeutral.BorderColor3 = FavoriteColor
BeNeutral.BorderSizePixel = 2
BeNeutral.Position = UDim2.new(0.860000014, 0, 0.200000003, 0)
BeNeutral.Size = UDim2.new(0, 20, 0, 32)
BeNeutral.ZIndex = 2
BeNeutral.Font = Enum.Font.SourceSans
BeNeutral.Text = ""
BeNeutral.TextColor3 = FavoriteColor
BeNeutral.TextSize = 25.000
BeNeutral.TextWrapped = true
BeNeutral.BorderMode = "Inset"
 
YardTP.Name = "YardTP"
YardTP.Parent = Frame
YardTP.AnchorPoint = Vector2.new(0.5, 0.5)
YardTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
YardTP.BorderColor3 = FavoriteColor
YardTP.BorderSizePixel = 2
YardTP.Position = UDim2.new(0.725000024, 0, 0.340000004, 0)
YardTP.Size = UDim2.new(0, 73, 0, 32)
YardTP.Font = Enum.Font.SourceSans
YardTP.Text = "Yard"
YardTP.TextColor3 = FavoriteColor
YardTP.TextSize = 25.000
YardTP.TextWrapped = true
YardTP.BorderMode = "Inset"
 
CafeTP.Name = "CafeTP"
CafeTP.Parent = Frame
CafeTP.AnchorPoint = Vector2.new(0.5, 0.5)
CafeTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CafeTP.BorderColor3 = FavoriteColor
CafeTP.BorderSizePixel = 2
CafeTP.Position = UDim2.new(0.725000024, 0, 0.479999989, 0)
CafeTP.Size = UDim2.new(0, 73, 0, 32)
CafeTP.Font = Enum.Font.SourceSans
CafeTP.Text = "Cafe"
CafeTP.TextColor3 = FavoriteColor
CafeTP.TextSize = 25.000
CafeTP.TextWrapped = true
CafeTP.BorderMode = "Inset"
 
Refresh.Name = "Refresh"
Refresh.Parent = Frame
Refresh.AnchorPoint = Vector2.new(0.5, 0.5)
Refresh.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Refresh.BorderColor3 = FavoriteColor
Refresh.BorderSizePixel = 2
Refresh.Position = UDim2.new(0.275000006, 0, 0.899999976, 0)
Refresh.Size = UDim2.new(0, 73, 0, 32)
Refresh.Font = Enum.Font.SourceSans
Refresh.Text = "Re"
Refresh.TextColor3 = FavoriteColor
Refresh.TextSize = 25.000
Refresh.TextWrapped = true
Refresh.BorderMode = "Inset"
 
Respawn.Name = "Respawn"
Respawn.Parent = Frame
Respawn.Active = false
Respawn.AnchorPoint = Vector2.new(0.5, 0.5)
Respawn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Respawn.BorderColor3 = FavoriteColor
Respawn.BorderSizePixel = 2
Respawn.Position = UDim2.new(0.725000024, 0, 0.899999976, 0)
Respawn.Size = UDim2.new(0, 73, 0, 32)
Respawn.Font = Enum.Font.SourceSans
Respawn.Text = "Spawn"
Respawn.TextColor3 = FavoriteColor
Respawn.TextSize = 25.000
Respawn.TextWrapped = true
Respawn.BorderMode = "Inset"
 
BeGuard.Name = "BeGuard"
BeGuard.Parent = Frame
BeGuard.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuard.BackgroundColor3 = Color3.fromRGB(9, 0, 77)
BeGuard.BorderColor3 = FavoriteColor
BeGuard.BorderSizePixel = 2
BeGuard.Position = UDim2.new(0.680000007, 0, 0.174999997, 0)
BeGuard.Size = UDim2.new(0, 20, 0, 17)
BeGuard.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuard.ZIndex = 3
BeGuard.Font = Enum.Font.SourceSans
BeGuard.Text = ""
BeGuard.TextColor3 = FavoriteColor
BeGuard.TextSize = 25.000
BeGuard.TextWrapped = true
BeGuard.BorderMode = "Inset"
 
CellsTP.Name = "CellsTP"
CellsTP.Parent = Frame
CellsTP.AnchorPoint = Vector2.new(0.5, 0.5)
CellsTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CellsTP.BorderColor3 = FavoriteColor
CellsTP.BorderSizePixel = 2
CellsTP.Position = UDim2.new(0.725000024, 0, 0.620000005, 0)
CellsTP.Size = UDim2.new(0, 73, 0, 32)
CellsTP.Font = Enum.Font.SourceSans
CellsTP.Text = "Cells"
CellsTP.TextColor3 = FavoriteColor
CellsTP.TextSize = 25.000
CellsTP.TextWrapped = true
CellsTP.BorderMode = "Inset"
 
Lock.Name = "Lock"
Lock.Parent = Frame
Lock.AnchorPoint = Vector2.new(0.5, 0.5)
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.BorderColor3 = FavoriteColor
Lock.BorderSizePixel = 2
Lock.Position = UDim2.new(0.5, 0, 0.75999999, 0)
Lock.Size = UDim2.new(0, 156, 0, 32)
Lock.Font = Enum.Font.SourceSans
Lock.Text = "Lock"
Lock.TextColor3 = FavoriteColor
Lock.TextSize = 25.000
Lock.TextWrapped = true
Lock.BorderMode = "Inset"
 
ArmoryTP.Name = "ArmoryTP"
ArmoryTP.Parent = Frame
ArmoryTP.AnchorPoint = Vector2.new(0.5, 0.5)
ArmoryTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ArmoryTP.BorderColor3 = FavoriteColor
ArmoryTP.BorderSizePixel = 2
ArmoryTP.Position = UDim2.new(0.275000006, 0, 0.620000005, 0)
ArmoryTP.Size = UDim2.new(0, 73, 0, 32)
ArmoryTP.Font = Enum.Font.SourceSans
ArmoryTP.Text = "Armory"
ArmoryTP.TextColor3 = FavoriteColor
ArmoryTP.TextSize = 25.000
ArmoryTP.TextWrapped = true
ArmoryTP.BorderMode = "Inset"
 
ArmoryTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798,99,2260)
end)
 
BackTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
end)
 
BeCriminal.MouseButton1Down:connect(function()
    local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
    LCS = game.Workspace["Criminals Spawn"].SpawnLocation
    LCS.CanCollide = false
    LCS.Size = Vector3.new(51.05, 24.12, 54.76)
    LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    LCS.Transparency = 1
    wait(0.5)
    LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LCS.Size = Vector3.new(6, 0.2, 6)
    LCS.Transparency = 0
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)
 
BeGuard.MouseButton1Down:connect(function()
    Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
 
BeGuardF.MouseButton1Down:connect(function()
    local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
    workspace.Remote.loadchar:InvokeServer("", "Bright blue")
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)
 
BeInmate.MouseButton1Down:connect(function()
    Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
 
BeNeutral.MouseButton1Down:connect(function()
    Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)
 
CafeTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2247)
end)
 
CellsTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
end)
 
Lock.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
    game.Players.LocalPlayer.CharacterAdded:connect(function()
    game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
    game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
    end)
end)
 
NexusTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
end)
 
ObGuns.MouseButton1Down:connect(function()  
    if game.Players.LocalPlayer.Team.Name == "Criminals" then 
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") then return end
    end
    getGuns()
end)
 
Refresh.MouseButton1Down:connect(function()
    if (game.Players.LocalPlayer.Team.Name ~= "Criminals") then
        local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
        local plr = game.Players.LocalPlayer.Name
        local gayevent = game:GetService("Workspace").Remote.loadchar
        gayevent:InvokeServer(plr)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
    else
        local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
        Workspace.Remote.TeamEvent:FireServer("Bright orange")
        wait()
        local plr = game.Players.LocalPlayer.Name
        local gayevent = game:GetService("Workspace").Remote.loadchar
        gayevent:InvokeServer(plr)
        LCS = game.Workspace["Criminals Spawn"].SpawnLocation
        LCS.CanCollide = false
        LCS.Size = Vector3.new(51.05, 24.12, 54.76)
        LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        LCS.Transparency = 1
        wait(0.5)
        LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        LCS.Size = Vector3.new(6, 0.2, 6)
        LCS.Transparency = 0
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
    end
end)
 
Respawn.MouseButton1Down:connect(function()
    local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
    local plr = game.Players.LocalPlayer.Name
    local gayevent = game:GetService("Workspace").Remote.loadchar
    gayevent:InvokeServer(plr)
end)
 
YardTP.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779,99,2477)
end)
 
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if gameProcessedEvent then return end
    local children = Frame:GetChildren()
    if inputObject.KeyCode == Enum.KeyCode.Q then
        if Frame.BackgroundTransparency == 0 then
            Frame.BackgroundTransparency = 1
            for i, child in ipairs(children) do
                print(child.Name)
                child.BackgroundTransparency = 1
                child.TextTransparency = 1
            end
        else
            Frame.BackgroundTransparency = 0
            for i, child in ipairs(children) do
                if child.Name ~= "Title" then
                    child.BackgroundTransparency = 0
                end
                child.TextTransparency = 0
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.Z then
        if ChatEnabled then
            ChatEnabled = false
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
            for i, player in pairs(game.Players:GetPlayers()) do
                player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
                player:WaitForChild("PlayerGui").BubbleChat:Destroy()
            end
        else
            ChatEnabled = true
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            for i, player in pairs(game.Players:GetPlayers()) do
                player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.Slash then
        ChatEnabled = true
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    end
    if inputObject.KeyCode == Enum.KeyCode.X then
        if BubblesEnabled then
            BubblesEnabled = false
            for i, player in pairs(game.Players:GetPlayers()) do
                player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
                player:WaitForChild("PlayerGui").BubbleChat:Destroy()
            end
        else
            BubblesEnabled = true
            for i, player in pairs(game.Players:GetPlayers()) do
                player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
            end
        end
    end
    if inputObject.KeyCode == Enum.KeyCode.E then
        if game.Players.LocalPlayer.Team.Name == "Criminals" then 
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") then return end
        end
        if (game.Players.LocalPlayer.Backpack:FindFirstChild("M9")) then
            game.Players.LocalPlayer.Backpack:FindFirstChild("M9").Parent = game.Players.LocalPlayer
        end
        if (game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")) then
            game.Players.LocalPlayer.Backpack.Taser:Destroy()
        end
        if (game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs")) then
            game.Players.LocalPlayer.Backpack.Handcuffs:Destroy()
        end
        getGuns()
    end
end)
 
 
 
function dragify(Frame)
dragToggle = nil
dragSpeed = 100000 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil
 
function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
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
