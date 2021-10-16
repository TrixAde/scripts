local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("Scripts")
local window2 = library:Window("LocalPlayer")
local window3 = library:Window("Emotes")
local window4 = library:Window("Crates - Farm")
local window5 = library:Window("Miscellaneous")


window2:Box("Walkspeed", function(value, focuslost)
    if focuslost then
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
end)
window2:Box("JumpPower", function(value, focuslost)
    if focuslost then
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end
end)

window4:Label("Coin Farm", Color3.fromRGB(127, 150, 180))


window4:Toggle("Coin Farm + God",false,function(omg)
            getgenv().CoinFarm = omg
if getgenv().CoinFarm then
    getgenv().TpDelay = 2
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/6cbdf3cd3182d2889d2af766da9a2286/raw/3b3872fa207a24a6e78fc4b5a07c37cead7842df/casgg"))()
end
end)
window4:Button("God Mode", function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
	game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
end)




window4:Button("Invisible God Mode",function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
	game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
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
    


window2:Toggle("Noclip", false, function(bool)
    getgenv().trinkets = bool
    game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().trinkets then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
end)
window5:Label("ESP", Color3.fromRGB(127, 150, 180))
window5:Button("Teleport To Gun",function()
    	game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end)
window5:Button("Murder + Sherrif ESP", function()
function getChance()
local Event = game:GetService("ReplicatedStorage").GetChance
chance = Event:InvokeServer()[1]
return chance
end


function setESP(part, good)
if part:FindFirstChild("BoxHandleAdornment") then else
	local ESP = Instance.new("BoxHandleAdornment")
	if good then
		ESP.Color3 = Color3.fromRGB(17, 164, 255)
	else
		ESP.Color3 = Color3.fromRGB(255, 0, 0)
	end
	ESP.ZIndex = 1
	ESP.AlwaysOnTop = true
	ESP.Size = part.Size
	ESP.Transparency = 0.5
	ESP.Adornee = part
	ESP.Parent = part
end
end

function getMurderer()

local Event = game:GetService("ReplicatedStorage").GetPlayerData
local info = Event:InvokeServer()



for i,v in pairs(game.Players:GetChildren()) do
if info[v.Name] ~= nil then
if info[v.Name]["Role"] == "Murderer" then
return v
end
end
end
end

function getSheriff()
local Event = game:GetService("ReplicatedStorage").GetPlayerData
local info = Event:InvokeServer()



for i,v in pairs(game.Players:GetChildren()) do
if info[v.Name] ~= nil then
if info[v.Name]["Role"] == "Sheriff" then
return v
end
end
end
end

function espMurderer()
if getMurderer() ~= nil then
	for i,v in pairs(getMurderer().Character:GetChildren()) do
		if v:IsA("BasePart") then
			setESP(v,false)
		end
	end
end
end

function espSheriff()
if getSheriff() ~= nil then
	for i,v in pairs(getSheriff().Character:GetChildren()) do
		if v:IsA("BasePart") then
			setESP(v,true)
		end
	end
end
end

espSheriff()
espMurderer()
end)
window5:Label("FE Scripts", Color3.fromRGB(127, 150, 180))
window2:Label("LocalPlayer Settings", Color3.fromRGB(127, 150, 180))
window5:Toggle("FE Spam Sounds",false, function(State1)
        getgenv().hit = State1
        while wait() do
            if getgenv().hit then
           for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Sound") then 
v:Play()
end
end
end
end
end)

window3:Button("Sit", function()
    local string_1 = "sit";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

window3:Button("Zombie", function()
    local string_1 = "zombie";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)


window3:Button("Dab", function()
    local string_1 = "dab";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

window3:Button("Ninja", function()
    local string_1 = "ninja";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

window3:Button("Floss", function()
    local string_1 = "floss";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)

window3:Button("Zen", function()
    local string_1 = "zen";
    local Target = game:GetService("ReplicatedStorage").PlayEmote;
    Target:Fire(string_1);
end)
window1:Label("Snowball Tool", Color3.fromRGB(127, 150, 180))

window1:Button("Break + Lag Server", function()
game:GetService('RunService').RenderStepped:connect(function()
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-725.666138, -374.167603, -190.224777, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-62.4162407, 140.703339, 93.0516739))end)
end)




window1:Toggle("      Snowfall [Lobby]", false, function(t)
getgenv().trinkets = t
while wait(.50) do
if getgenv().trinkets then
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
wait(.15)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-135.913986, 135.927429, 32.2448158, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-139.395325, 199.530563, 31.4863529))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.0485687, 135.349854, 32.291275, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.2016983, 214.949646, 26.0045185))
wait(.20)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-134.343765, 135.34993, -6.17374468, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.80513, 191.064224, -14.889327))
wait(.25)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-93.980957, 137.314133, 51.5695686, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.2855988, 181.802811, 55.2736893))
wait(.30)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-144.681091, 135.299973, 21.4473381, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-143.589325, 199.925827, 23.1932049))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-104.170914, 135.34993, -13.5782242, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-103.82811, 207.518036, -12.2987804))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-110.845703, 137.249939, 19.4613647, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-104.201996, 213.790588, 18.4110184))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-94.0307693, 135.299973, -5.85320091, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-89.7315369, 195.047073, -9.37215042))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-136.762802, 135.299973, 12.4914198, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-133.715988, 178.571854, 11.5002613))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-109.4217, 135.34993, -2.62724876, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-111.584511, 201.841965, -4.91439819))
wait(.35)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-123.258858, 135.299973, 9.14574909, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.320435, 199.480331, 4.68139601))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-124.436897, 135.299973, -8.30159378, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-126.420258, 207.703918, -8.54559708))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-66.9346848, 135.34993, 3.48529744, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-68.5078354, 205.184204, 3.31624126))
wait(.35)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-128.355438, 135.348938, 37.3748932, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-123.581474, 216.089569, 35.5691566))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.305725, 135.299973, 0.77532959, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-149.205017, 241.627182, 1.82075))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-125.051964, 135.299973, 55.2797737, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-132.086563, 211.508621, 57.7867546))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-80.8262024, 135.348938, 37.2293434, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-80.6500778, 194.846375, 37.0665588))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-91.7409439, 137.035278, 56.6473045, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-88.4661331, 201.670441, 52.1185226))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-118.790657, 135.882645, 48.8661499, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-127.558113, 207.564026, 46.3921127))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-89.0555191, 135.347931, 10.9356031, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-91.5897827, 205.626358, 8.75068665))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-124.035576, 135.349945, 33.5994377, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-122.495781, 220.867508, 34.1040573))
wait(.30)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-96.3198776, 135.34993, 22.5395145, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6172104, 194.361588, 25.4049129))
wait(.30)
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-76.2730713, 135.299973, 29.1378193, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-77.831398, 186.719025, 31.6790524))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-103.630791, 135.34993, 48.9078827, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-101.520714, 201.264191, 46.8644028))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-114.087357, 137.710724, 26.4584332, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-112.803642, 203.646988, 33.1113472))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-104.17189, 135.34993, 32.6308212, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-100.724457, 201.454025, 29.4685001))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-92.1135406, 137.690704, 4.44717121, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-98.6469955, 189.057877, 1.61088514))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-133.468567, 138.895584, 47.3663788, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-138.840683, 192.962646, 47.5225449))
workspace[game.Players.LocalPlayer.Name].SnowballToy2020.Throw:FireServer(CFrame.new(-148.146545, 135.299973, 0.815302849, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(-148.218887, 200.730118, 7.59676218))
else
          game.StarterGui:SetCore("SendNotification", {
        Title = "Important";
        Text = "Equip Prank Bomb Tool to This Script Work";
        Duration = 5;
        })
    break
end
end
end)

window5:Toggle("Invisible",false, function(omg)
    getgenv().trinkets = omg
if getgenv().trinkets then
game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(omg)
else
game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(false)
end
end)
window5:Toggle("Give Fake Gun",false, function(omg)
    getgenv().trinkets = omg
if getgenv().trinkets then
game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(omg)
else
game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun:FireServer(false)
end
end)


window4:Label("Crate System", Color3.fromRGB(127, 150, 180))


dropdown = window4:Dropdown("Open Crate", {"KnifeBox1", "KnifeBox2", "KnifeBox3", "KnifeBox4", "KnifeBox5", "MLGBox"}, function(autoboxx)
local args = {
   [1] = autoboxx
}
game:service'ReplicatedStorage'.Remotes.Shop.OpenCrate:InvokeServer(unpack(args))
wait()
game:service'ReplicatedStorage'.CrateComplete:FireServer()
end)


window1:Label("Prank Bomb Tool", Color3.fromRGB(127, 150, 180))

window1:Button("Poop Nuke", function()
    local Players = game:GetService("Players")  

local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

for i = 1, 10 do
    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.LowerTorso.CFrame, 50)
    end
end)
window1:Button("Cum Nuke", function()
    local Players = game:GetService("Players")  

local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

for i = 1,5 do
    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.UpperTorso.CFrame, 500)
end
end)

window1:Toggle("Chaos Nuke",false, function(gggggggggg)
getgenv().trinkets = gggggggggg
while wait() do
if getgenv().trinkets then
    local Players = game:GetService("Players")  

local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.UpperTorso.CFrame, 500)
end
end
end)
window1:Button("Freeze + Lag Server", function()
    local Players = game:GetService("Players")  

local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

for i = 1,5 do
  for i = 1,30 do
   for i = 1,10 do
    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.UpperTorso.CFrame, 1000)
end
end
end
end)

window1:Button("Super Plus Nuke", function()
    for i = 1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-138.153076, 135.348938, -2.30976081, -0.196709305, 0.723047256, -0.662199557, -7.4505806e-09, 0.675395548, 0.737455785, 0.980461836, 0.145064414, -0.132856578),50)
    end
    for i = 1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-107.400009, 148.912476, 22.204958, -0.122687079, -0.942620218, 0.310507715, 3.7252903e-09, 0.312871307, 0.949795544, -0.992445409, 0.116527639, -0.0383852683),50)
    end
    for i = 1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-88.5685959, 136.862167, -1.30290008, 0.734667599, -0.613278866, 0.290090829, -1.49011594e-08, 0.427593142, 0.903971374, -0.678427279, -0.664118469, 0.3141388),50)
    end
    for i =1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-123.632271, 135.942673, 45.0633621, 0.986195266, -0.134651333, 0.096374929, -0, 0.582019389, 0.813174903, -0.165587172, -0.801949263, 0.573984683),50)
    end
    for i = 1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-89.313736, 135.35994, 40.2597237, 0.0261543039, -0.635926008, 0.771306872, -0, 0.771570861, 0.636143565, -0.999657989, -0.0166378915, 0.0201798957),50)
    end
    for i = 1,15 do
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-140.541428, 140.28067, 61.2714348, -0.702649832, -0.0621357225, 0.70881772, -0, 0.996179938, 0.0873261988, -0.711535871, 0.0613597371, -0.699965596),50)
end
end)
window1:Button("Plus Nuke", function()
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-138.153076, 135.348938, -2.30976081, -0.196709305, 0.723047256, -0.662199557, -7.4505806e-09, 0.675395548, 0.737455785, 0.980461836, 0.145064414, -0.132856578),50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-107.400009, 148.912476, 22.204958, -0.122687079, -0.942620218, 0.310507715, 3.7252903e-09, 0.312871307, 0.949795544, -0.992445409, 0.116527639, -0.0383852683),50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-88.5685959, 136.862167, -1.30290008, 0.734667599, -0.613278866, 0.290090829, -1.49011594e-08, 0.427593142, 0.903971374, -0.678427279, -0.664118469, 0.3141388),50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-123.632271, 135.942673, 45.0633621, 0.986195266, -0.134651333, 0.096374929, -0, 0.582019389, 0.813174903, -0.165587172, -0.801949263, 0.573984683),50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-89.313736, 135.35994, 40.2597237, 0.0261543039, -0.635926008, 0.771306872, -0, 0.771570861, 0.636143565, -0.999657989, -0.0166378915, 0.0201798957),50)
    workspace[game.Players.LocalPlayer.Name].FakeBomb.Remote:FireServer(CFrame.new(-140.541428, 140.28067, 61.2714348, -0.702649832, -0.0621357225, 0.70881772, -0, 0.996179938, 0.0873261988, -0.711535871, 0.0613597371, -0.699965596),50)
end)
window1:Box("Bomb Spam", function(ohhh,focuslost)
    if focuslost then
    local Players = game:GetService("Players")  

local BOMB_AMOUNT = ohhh
local LocalPlayer = Players.LocalPlayer

assert(LocalPlayer.Character:FindFirstChild("FakeBomb"), "You need to equip the PrankBomb.")

for i = 1, BOMB_AMOUNT do
    LocalPlayer.Character.FakeBomb.Remote:FireServer(LocalPlayer.Character.Head.CFrame, 50)
end
end
end)

    

library:Keybind("Tab")
game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "Important!",     
Text = "Ameicaa Was Here",
Button1 = "LMAO",Button2 = "OMG",     Duration = 20, })
