local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacks/Utilities/main/UI.lua"))();

local Window = Library:CreateWindow("Autofarm")

local folder = Window:AddFolder("Main")

local folder2 = Window:AddFolder("Settings")

local Players = {};
for i,v in pairs(game.Players:GetChildren()) do
    table.insert(Players,v.Name)
end;

for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
end;

local plr = game:GetService("Players").LocalPlayer
local tweenService = game:GetService("TweenService")
getgenv().speed = 300
function toTarget(target)
    local speed = getgenv().speed
    local info = TweenInfo.new((target.Position - plr.Character.HumanoidRootPart.Position).Magnitude / speed, Enum.EasingStyle.Linear)
    local _, err = pcall(function()
        tweenService:Create(plr.Character.HumanoidRootPart, info, {CFrame = target}):Play()
    end)
    if err then error("Couldn't create/start tween: ", err) end
end
function newIndexHook()
    local mt = getrawmetatable(game)
    local oldIndex = mt.__newindex
    setreadonly(mt, false)
    mt.__newindex = newcclosure(function(self, i, v)
        if checkcaller() and self == plr.Character.HumanoidRootPart and i == 'CFrame' then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            return toTarget(v) 
        end
        return oldIndex(self, i, v)
    end)

    setreadonly(mt, true)
end
newIndexHook()

game:GetService("RunService").Stepped:Connect(function()
if getgenv().Autofarm or getgenv().SP or getgenv().MenosFarm then
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
                 v.CanCollide = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            end;
        end;
    end;
end);

local Mob = {};
getgenv().DIS = 6
for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
if not table.find(Mob,v.Name) and not v:FindFirstChild("ClientHandler") and not v:FindFirstChild("xSIXxAnimationSaves") and not string.match(v.Name,"Masta") and v.Name ~= "Noob" then --//I'm so sorry you had to witness this i apolgize whoever sees this...
        table.insert(Mob,v.name)
    end;
end;

local Quest = {};
for i,v in pairs(game:GetService("Workspace").NPCs:GetDescendants()) do
pcall(function()
if v.Name == ("Quest") and not v.Parent:FindFirstChild("xSIXxAnimationSaves") then
    if v.Value ~= "" and v.Value ~= "Test Quest" then
                table.insert(Quest,v.Value)
            end;
        end;
    end);
end;

local NPC = {};
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
if v:IsA("Model") and not v:FindFirstChild("xSIXxAnimationSaves") then
        table.insert(NPC,v.Name)
    end;
end;

for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
end;

folder:AddToggle({text = "Autofarm", callback = function(value) 
    getgenv().Autofarm = value
    
    while getgenv().Autofarm and wait() do
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
            if game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                if v.Name == getgenv().Mob and v.Humanoid.Health > 0 then
                    repeat wait() 
                        local args = {[1] = {["inputType"] = Enum.UserInputType.MouseButton1,["keyCode"] = Enum.KeyCode.Unknown}}
                        game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
                        if not game:GetService("Workspace").Food:FindFirstChildWhichIsA("Part") or not game:GetService("Workspace").Food:FindFirstChildWhichIsA("MeshPart") and getgenv().AutoEat then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,getgenv().DIS,0)
                        elseif not getgenv().Eat then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - Vector3.new(0,getgenv().DIS,0)
                        end
                        until v.Humanoid.Health <= 0 or not getgenv().Autofarm
                    end;
                end;
            end;
        end);
    end;
end});

folder:AddToggle({text = "Auto Quest", callback = function(value) 
 getgenv().AutoQuest = value

while getgenv().AutoQuest and wait() do
pcall(function()
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    if game:GetService("Players").LocalPlayer.PlayerGui.HUD:FindFirstChild("QuestsFrame2") then
        if not game:GetService("Players").LocalPlayer.PlayerGui.HUD.QuestsFrame2:FindFirstChild(getgenv().Quest) then wait(2)
                        game:GetService("ReplicatedStorage").Remotes.TakeQuest:FireServer(getgenv().Quest)
                    end;
                end;
            end;
        end);
    end;
end});

folder:AddToggle({text = "Auto Adjust Mob", callback = function(value) 
    if getgenv().Quest == "Op Killer" and value then
        getgenv().OPK = true
        getgenv().AQ = false
    elseif getgenv().Quest == "Acquired Taste" and value then
        getgenv().AQ = true
        getgenv().OPK = false
    end;
    
    while getgenv().AQ and wait() do    
    pcall(function()
    local wtf = game:GetService("Players").LocalPlayer.PlayerGui.HUD.QuestsFrame2["Acquired Taste"].Frame.Objective
    
    if string.match(wtf.Text,"Kill 1 Clawed") or string.match(wtf.Text,"Kill 2 Clawed") then
            getgenv().Mob = "Clawed Hollow"
        elseif string.match(wtf.Text,"Kill 1 Winged") or string.match(wtf.Text,"Kill 2 Winged") and string.match(wtf.Text,"Kill 0 Clawed") then
            getgenv().Mob = "Winged Hollow"
        elseif string.match(wtf.Text,"Kill 1 Savage") and string.match(wtf.Text,"Kill 0 Clawed") and string.match(wtf.Text,"Kill 0 Winged") then
                getgenv().Mob = "Savage Hollow"
            end;
        end);
    end;
    
    while getgenv().OPK and wait() do
    pcall(function()
    local wtf2 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.QuestsFrame2["Op Killer"].Frame.Objective

        if string.match(wtf2.Text,"Kill 1 Heavy") or string.match(wtf2.Text,"Kill 2 Heavy") then
                getgenv().Mob = "Heavy Corrupted Kido Corps"
            elseif string.match(wtf2.Text,"Kill 1 Experienced") and string.match(wtf2.Text,"Kill 0 Heavy") then
                getgenv().Mob = "Experienced Corrupted Shikai User"
            elseif string.match(wtf2.Text,"Kill 3 Corrupted") or string.match(wtf2.Text,"Kill 2 Corrupted") or string.match(wtf2.Text,"Kill 1 Corrupted") and string.match(wtf2.Text,"Kill 0 Experienced") then
                getgenv().Mob = "Corrupted Kido Corps"
            end;
        end); 
    end;
end});

folder:AddList({text = "Mob", values = Mob, callback = function(value)
    getgenv().Mob = value
end});

folder:AddList({text = "Quests", values = Quest, callback = function(value)
    getgenv().Quest = value
end});


folder:AddSlider({text = 'Distance', min = 0, max = 10, incrementalMode = true, callback = function(value) 
    getgenv().DIS = value
end});

folder2:AddToggle({text = "Auto Eat", callback = function(value) 
    getgenv().Eat = value
    while getgenv().Eat and wait() do
    pcall(function()
        for i, v in pairs(game:GetService("Workspace").Food:GetDescendants()) do
                if v:FindFirstChild("ProximityPrompt") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame - Vector3.new(0,-5,0)
                    fireproximityprompt(v.ProximityPrompt)
                end;
            end;
        end);
    end;
end});

folder2:AddToggle({text = "Auto Equip", callback = function(value) 
    getgenv().Equip = value

    while getgenv().Equip and wait(.3) do
        if game:GetService("Players").LocalPlayer.Status.Weapon.Value == nil then
            local a={[1]={["inputType"]=Enum.UserInputType.Keyboard,["keyCode"]=Enum.KeyCode.E}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
        end;
    end;
end});


folder2:AddToggle({text = "Insta TP", callback = function(value) 
    getgenv().InstaTP = value

    if getgenv().InstaTP then
        getgenv().speed = 9e9
        game.Players.LocalPlayer.Name = "123imnotmomo"
    else
        getgenv().speed = 300
    end;
end})

folder2:AddButton({text = "Discord", callback = function(value) 
    setclipboard("https://discord.gg/FZdxeYc8WC")
end})

local Window2 = Library:CreateWindow("Extra")

local folder3 = Window2:AddFolder("Skills")

folder3:AddToggle({text = "Skill 1", callback = function(value)
    getgenv().One = value

    while getgenv().One and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "One", false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

folder3:AddToggle({text = "Skill 2", callback = function(value)
    getgenv().Two = value

    while getgenv().Two and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Two", false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

folder3:AddToggle({text = "Skill 3", callback = function(value)
    getgenv().Three = value

    while getgenv().Three and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Three", false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

folder3:AddToggle({text = "Skill 4", callback = function(value)
    getgenv().Four = value

    while getgenv().Four and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Four", false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

folder3:AddToggle({text = "Skill 5", callback = function(value)
    getgenv().Five = value

    while getgenv().Five and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Five", false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

local folder4 = Window2:AddFolder("Other Farms")

folder4:AddToggle({text = "Menos Farm", callback = function(value)
    getgenv().MenosFarm = value

    while getgenv().MenosFarm and wait() do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (getgenv().MPos)
    end;
end});

folder4:AddButton({text = "Set Position", callback = function(value) 
    getgenv().MPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end});

folder4:AddList({text = "Stomp Key", values = {"One","Two","Three","Four","Five"}, callback = function(value)
    getgenv().SKey = value
end})

folder4:AddToggle({text = "Auto Stomp", callback = function(value)
    getgenv().Stomp = value

    while getgenv().Stomp and wait() do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, getgenv().SKey, false, game); wait(1)
        local a={[1]={["inputType"]=Enum.UserInputType.MouseButton1,["keyCode"]=Enum.KeyCode.Unknown}}game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(a))
    end;
end});

local Window3 = Library:CreateWindow("Teleports")

local folder5 = Window3:AddFolder("NPCS")

folder5:AddList({text = "NPC", values = NPC, callback = function(value)
    getgenv().NPCTP = value
end})


folder5:AddButton({text = "Teleport", callback = function(value) 
pcall(function()
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        if v.Name == getgenv().NPCTP then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
            end;
        end;
    end);
end});

Library:Init()
