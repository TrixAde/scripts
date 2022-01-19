local h4x = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local astolfo_corner = Instance.new("ImageLabel")
local ImageLabel = Instance.new("ImageLabel")
local credits = Instance.new("TextLabel")
local f_to_noclip = Instance.new("TextButton")
local remove_force_fields = Instance.new("TextButton")
local remove_walls = Instance.new("TextButton")
local get_all_jutsus = Instance.new("TextButton")
local speed_set = Instance.new("TextButton")
local speed_textbox = Instance.new("TextBox")
local t_to_teleport = Instance.new("TextButton")
local teleport_to_player = Instance.new("TextButton")
local player_textbox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local fly = Instance.new("TextButton")
local astolfo_pet = Instance.new("TextButton")
local credits_2 = Instance.new("TextLabel")
--Properties:
h4x.Name = "h4x"
h4x.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
h4x.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.Name = "main"
main.Parent = h4x
main.BackgroundColor3 = Color3.fromRGB(153, 20, 60)
main.BorderColor3 = Color3.fromRGB(56, 3, 0)
main.BorderSizePixel = 2
main.Position = UDim2.new(0.703225791, 0, 0.0702341124, 0)
main.Size = UDim2.new(0, 281, 0, 498)
title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(105, 13, 28)
title.BorderColor3 = Color3.fromRGB(56, 3, 0)
title.BorderSizePixel = 4
title.Size = UDim2.new(0, 281, 0, 52)
title.Font = Enum.Font.SourceSans
title.Text = "Ninja Tycoon GUI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 45.000
astolfo_corner.Name = "astolfo_corner"
astolfo_corner.Parent = main
astolfo_corner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
astolfo_corner.BackgroundTransparency = 1.000
astolfo_corner.Position = UDim2.new(-0.55160141, 0, 0.710843384, 0)
astolfo_corner.Size = UDim2.new(0, 155, 0, 144)
astolfo_corner.Image = "rbxassetid://6747647676"
astolfo_corner.ImageTransparency = 0.100
ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, 0.104417674, 0)
ImageLabel.Size = UDim2.new(0, 281, 0, 446)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7260121507"
ImageLabel.ImageTransparency = 0.700
credits.Name = "credits"
credits.Parent = main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.55160141, 0, 0.927710831, 0)
credits.Size = UDim2.new(0, 126, 0, 36)
credits.Font = Enum.Font.SourceSans
credits.Text = "JUK#1276"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 35.000
f_to_noclip.Name = "f_to_noclip"
f_to_noclip.Parent = main
f_to_noclip.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
f_to_noclip.BorderSizePixel = 0
f_to_noclip.Position = UDim2.new(0, 0, 0.126506031, 0)
f_to_noclip.Size = UDim2.new(0, 98, 0, 40)
f_to_noclip.Font = Enum.Font.SourceSans
f_to_noclip.Text = "F to noclip"
f_to_noclip.TextColor3 = Color3.fromRGB(52, 0, 49)
f_to_noclip.TextSize = 25.000
remove_force_fields.Name = "remove_force_fields"
remove_force_fields.Parent = main
remove_force_fields.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
remove_force_fields.BorderSizePixel = 0
remove_force_fields.Position = UDim2.new(0.373665482, 0, 0.126506031, 0)
remove_force_fields.Size = UDim2.new(0, 176, 0, 40)
remove_force_fields.Font = Enum.Font.SourceSans
remove_force_fields.Text = "Remove enemy forcefields"
remove_force_fields.TextColor3 = Color3.fromRGB(52, 0, 49)
remove_force_fields.TextSize = 19.000
remove_walls.Name = "remove_walls"
remove_walls.Parent = main
remove_walls.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
remove_walls.BorderSizePixel = 0
remove_walls.Position = UDim2.new(0, 0, 0.220883533, 0)
remove_walls.Size = UDim2.new(0, 98, 0, 40)
remove_walls.Font = Enum.Font.SourceSans
remove_walls.Text = "Remove enemy walls"
remove_walls.TextColor3 = Color3.fromRGB(52, 0, 49)
remove_walls.TextScaled = true
remove_walls.TextSize = 19.000
remove_walls.TextWrapped = true
get_all_jutsus.Name = "get_all_jutsus"
get_all_jutsus.Parent = main
get_all_jutsus.BackgroundColor3 = Color3.fromRGB(255, 41, 44)
get_all_jutsus.BorderSizePixel = 0
get_all_jutsus.Position = UDim2.new(0.373665482, 0, 0.220883533, 0)
get_all_jutsus.Size = UDim2.new(0, 176, 0, 40)
get_all_jutsus.Font = Enum.Font.SourceSans
get_all_jutsus.Text = "Get all jutsus (OP)"
get_all_jutsus.TextColor3 = Color3.fromRGB(52, 0, 49)
get_all_jutsus.TextSize = 25.000
get_all_jutsus.TextWrapped = true
speed_set.Name = "speed_set"
speed_set.Parent = main
speed_set.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
speed_set.BorderSizePixel = 0
speed_set.Position = UDim2.new(0, 0, 0.313253015, 0)
speed_set.Size = UDim2.new(0, 98, 0, 40)
speed_set.Font = Enum.Font.SourceSans
speed_set.Text = "Set speed"
speed_set.TextColor3 = Color3.fromRGB(52, 0, 49)
speed_set.TextSize = 25.000
speed_textbox.Name = "speed_textbox"
speed_textbox.Parent = main
speed_textbox.BackgroundColor3 = Color3.fromRGB(250, 89, 255)
speed_textbox.BorderSizePixel = 0
speed_textbox.Position = UDim2.new(0.373665482, 0, 0.313253015, 0)
speed_textbox.Size = UDim2.new(0, 176, 0, 40)
speed_textbox.ClearTextOnFocus = false
speed_textbox.Font = Enum.Font.SourceSans
speed_textbox.Text = "100"
speed_textbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speed_textbox.TextScaled = true
speed_textbox.TextSize = 1.000
speed_textbox.TextWrapped = true
t_to_teleport.Name = "t_to_teleport"
t_to_teleport.Parent = main
t_to_teleport.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
t_to_teleport.BorderSizePixel = 0
t_to_teleport.Position = UDim2.new(0, 0, 0.405622482, 0)
t_to_teleport.Size = UDim2.new(0, 281, 0, 35)
t_to_teleport.Font = Enum.Font.SourceSans
t_to_teleport.Text = "T to teleport to random player"
t_to_teleport.TextColor3 = Color3.fromRGB(52, 0, 49)
t_to_teleport.TextSize = 25.000
teleport_to_player.Name = "teleport_to_player"
teleport_to_player.Parent = main
teleport_to_player.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
teleport_to_player.BorderSizePixel = 0
teleport_to_player.Position = UDim2.new(0, 0, 0.489959836, 0)
teleport_to_player.Size = UDim2.new(0, 98, 0, 40)
teleport_to_player.Font = Enum.Font.SourceSans
teleport_to_player.Text = "Tp to player"
teleport_to_player.TextColor3 = Color3.fromRGB(52, 0, 49)
teleport_to_player.TextSize = 25.000
player_textbox.Name = "player_textbox"
player_textbox.Parent = main
player_textbox.BackgroundColor3 = Color3.fromRGB(250, 89, 255)
player_textbox.BorderSizePixel = 0
player_textbox.Position = UDim2.new(0.373665482, 0, 0.489959836, 0)
player_textbox.Size = UDim2.new(0, 176, 0, 40)
player_textbox.ClearTextOnFocus = false
player_textbox.Font = Enum.Font.SourceSans
player_textbox.Text = ""
player_textbox.TextColor3 = Color3.fromRGB(0, 0, 0)
player_textbox.TextScaled = true
player_textbox.TextSize = 1.000
player_textbox.TextWrapped = true
TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.570281148, 0)
TextLabel.Size = UDim2.new(0, 281, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "You can type out a small part of someone's username ^^"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 25.000
TextLabel.TextWrapped = true
fly.Name = "fly"
fly.Parent = main
fly.BackgroundColor3 = Color3.fromRGB(219, 38, 104)
fly.BorderSizePixel = 0
fly.Position = UDim2.new(0, 0, 0.670682728, 0)
fly.Size = UDim2.new(0, 281, 0, 35)
fly.Font = Enum.Font.SourceSans
fly.Text = "E to Fly"
fly.TextColor3 = Color3.fromRGB(52, 0, 49)
fly.TextSize = 25.000
astolfo_pet.Name = "astolfo_pet"
astolfo_pet.Parent = main
astolfo_pet.BackgroundColor3 = Color3.fromRGB(219, 33, 52)
astolfo_pet.BorderSizePixel = 0
astolfo_pet.Position = UDim2.new(0, 0, 0.753012061, 0)
astolfo_pet.Size = UDim2.new(0, 281, 0, 35)
astolfo_pet.Font = Enum.Font.SourceSans
astolfo_pet.Text = "Astolfo pet!"
astolfo_pet.TextColor3 = Color3.fromRGB(52, 0, 49)
astolfo_pet.TextSize = 25.000
credits_2.Name = "credits"
credits_2.Parent = main
credits_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits_2.BackgroundTransparency = 1.000
credits_2.Position = UDim2.new(0, 0, 1, 0)
credits_2.Size = UDim2.new(0, 281, 0, 36)
credits_2.Font = Enum.Font.SourceSans
credits_2.Text = "Astolfoware 1.22"
credits_2.TextColor3 = Color3.fromRGB(255, 0, 81)
credits_2.TextSize = 35.000
-- Scripts:
local function WJTYAY_fake_script() -- f_to_noclip.LocalScript
local script = Instance.new('LocalScript', f_to_noclip)
function do_stuff()
local noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "f" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(WJTYAY_fake_script)()
local function QHQBD_fake_script() -- remove_force_fields.LocalScript
local script = Instance.new('LocalScript', remove_force_fields)
function do_stuff()
for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
for j,w in pairs(v.PurchasedObjects:GetChildren()) do
if w.Name:lower() == "roof barrier jutsu" and v.Owner.Value ~= game.Players.LocalPlayer.Character.Name then
w:Remove()
end
end
end
end
script.Parent.MouseButton1Click:Connect(do_stuff)
-- FOR WALL REMOVAL
end
coroutine.wrap(QHQBD_fake_script)()
local function LHGS_fake_script() -- remove_walls.LocalScript
local script = Instance.new('LocalScript', remove_walls)
function do_stuff()
for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
for j,w in pairs(v.PurchasedObjects:GetChildren()) do
if w.Name:lower():match("wall") and v.Owner.Value ~= game.Players.LocalPlayer.Character.Name then
w:Remove()
end
end
end
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(LHGS_fake_script)()
local function KLNR_fake_script() -- get_all_jutsus.LocalScript
local script = Instance.new('LocalScript', get_all_jutsus)
function do_stuff()
for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
for j,w in pairs(v.PurchasedObjects:GetChildren()) do
for k,x in pairs(w:GetChildren()) do
for h,y in pairs(x:GetChildren()) do
if y.Name == "Head" then
y.CanCollide = false
y.Position = game.Players.LocalPlayer.Character.Head.Position
end
end
end
end
end
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(KLNR_fake_script)()
local function GGAFFDR_fake_script() -- speed_set.LocalScript
local script = Instance.new('LocalScript', speed_set)
function do_stuff()
local localplayer = game.Players.LocalPlayer
local speed = tonumber(script.Parent.Parent.speed_textbox.Text)
localplayer.Character.Humanoid.WalkSpeed = speed
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(GGAFFDR_fake_script)()
local function KMYD_fake_script() -- t_to_teleport.LocalScript
local script = Instance.new('LocalScript', t_to_teleport)
function do_stuff()
local localplayer = game.Players.LocalPlayer
local noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "t" then
local player = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
localplayer.Character:moveTo(player.Character.Head.Position)
end
end)
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(KMYD_fake_script)()
local function GMNEUKG_fake_script() -- teleport_to_player.LocalScript
local script = Instance.new('LocalScript', teleport_to_player)
function do_stuff()
local localplayer = game.Players.LocalPlayer
local player = nil
local player_name = script.Parent.Parent.player_textbox.Text
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():match(player_name) then
player = v
end
end
if player ~= nil then
localplayer.Character:moveTo(player.Character.Head.Position)
end
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(GMNEUKG_fake_script)()
local function AYQGBW_fake_script() -- fly.LocalScript
local script = Instance.new('LocalScript', fly)
function do_stuff()
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Head
local flying = false
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(AYQGBW_fake_script)()
local function SRQF_fake_script() -- astolfo_pet.LocalScript
local script = Instance.new('LocalScript', astolfo_pet)
function do_stuff()
local localPlayer = game.Players.LocalPlayer
local astolfo = Instance.new("Part")
astolfo.Parent = workspace
astolfo.Size = Vector3.new(1, 4.75, 1)
astolfo.Anchored = true
astolfo.Position = Vector3.new(0, 2.5, 0)
astolfo.Name = "Astolfo"
astolfo.Anchored = false
astolfo.CanCollide = false
astolfo.Locked = true
local mesh = Instance.new("FileMesh")
mesh.MeshId = "rbxassetid://3278819081"
mesh.TextureId = "rbxassetid://3278819251"
mesh.Offset = Vector3.new(0, 0, 0)
mesh.Scale = Vector3.new(0.12, 0.1, 0.14)
mesh.VertexColor = Vector3.new(1, 1, 1)
mesh.Parent = astolfo
local astolfo_attachment = Instance.new("Attachment")
astolfo_attachment.Parent = astolfo
local head_attachment = Instance.new("Attachment")
head_attachment.Parent = localPlayer.Character.Head
head_attachment.Name = "astolfo_attachment"
head_attachment.Position = Vector3.new(3.631, -2, 0.239)
local align_position = Instance.new("AlignPosition")
align_position.Attachment0 = astolfo_attachment
align_position.Attachment1 = head_attachment
align_position.Parent = astolfo
local align_orientation = Instance.new("AlignOrientation")
align_orientation.Attachment0 = astolfo_attachment
align_orientation.Attachment1 = head_attachment
align_orientation.Parent = astolfo
local dialog = Instance.new("Dialog")
dialog.Parent = astolfo
dialog.InitialPrompt = "Yahoo! What's your command, master?"
dialog.GoodbyeDialog = "Thanks!"
dialog.Tone = Enum.DialogTone.Friendly
local dialog_choice_noclip = Instance.new("DialogChoice")
dialog_choice_noclip.Name = "noclip_choice"
dialog_choice_noclip.UserDialog = "E to noclip"
dialog_choice_noclip.ResponseDialog = "You can now press E to noclip!"
dialog_choice_noclip.Parent = dialog
local dialog_choice_btools = Instance.new("DialogChoice")
dialog_choice_btools.Name = "btools_choice"
dialog_choice_btools.UserDialog = "Btools"
dialog_choice_btools.ResponseDialog = "Here are your tools, master!"
dialog_choice_btools.Parent = dialog
local dialog_choice_speed = Instance.new("DialogChoice")
dialog_choice_speed.Name = "speed_choice"
dialog_choice_speed.UserDialog = "Toggle speed"
dialog_choice_speed.ResponseDialog = "There you go master ❤️"
dialog_choice_speed.Parent = dialog
local astolfo_sounds = {"rbxassetid://4942209956", "rbxassetid://2901058656", "rbxassetid://7109386510"}
local astolfo_voice = Instance.new("Sound")
astolfo_voice.Parent = astolfo
astolfo_voice.Volume = 5
dialog.DialogChoiceSelected:Connect(function(player, choice)
local random_choice = math.random(1, #astolfo_sounds)
astolfo_voice.SoundId = astolfo_sounds[random_choice]
astolfo_voice:Play()
if choice.Name == "noclip_choice" then
head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
head_attachment.Orientation = Vector3.new(0, 135, 0)
wait(4)
head_attachment.Position = Vector3.new(3.631, -2, 0.239)
head_attachment.Orientation = Vector3.new(0, 0, 0)
local noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end
if choice.Name == "btools_choice" then
head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
head_attachment.Orientation = Vector3.new(0, 135, 0)
wait(4)
head_attachment.Position = Vector3.new(3.631, -2, 0.239)
head_attachment.Orientation = Vector3.new(0, 0, 0)
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
end
if choice.Name == "speed_choice" then
head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
head_attachment.Orientation = Vector3.new(0, 135, 0)
wait(4)
head_attachment.Position = Vector3.new(3.631, -2, 0.239)
head_attachment.Orientation = Vector3.new(0, 0, 0)
local current_speed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
if current_speed == 100 then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end
end
end)
end
script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(SRQF_fake_script)()
