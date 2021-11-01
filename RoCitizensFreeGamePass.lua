-- Gui to Lua
-- Version: 3.2

-- Instances:

local RocitizensV1 = Instance.new("ScreenGui")
local Shop = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local ShopFrame = Instance.new("Frame")
local Gamepasses = Instance.new("TextButton")
local Reviz = Instance.new("TextButton")
local Food = Instance.new("TextButton")
local Limited = Instance.new("TextButton")
local Cmd = Instance.new("TextButton")
local Rocix = Instance.new("TextButton")
local Fps = Instance.new("TextButton")

--Properties:

RocitizensV1.Name = "Rocitizens V1"
RocitizensV1.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Shop.Name = "Shop"
Shop.Parent = RocitizensV1
Shop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shop.BorderSizePixel = 0
Shop.Position = UDim2.new(0, 1063, 0, 0)
Shop.Size = UDim2.new(0, 129, 0, 50)
Shop.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Shop.Font = Enum.Font.Cartoon
Shop.Text = "Open"
Shop.TextColor3 = Color3.fromRGB(0, 0, 0)
Shop.TextScaled = true
Shop.TextWrapped = true

Frame.Parent = RocitizensV1
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.25, 0, 0.200000003, 0)
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.Visible = false
Frame.Style = Enum.FrameStyle.DropShadow

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Font = Enum.Font.Cartoon
Title.Text = "Scripts"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.Position = UDim2.new(1, -45, 0, 0)
Close.Size = UDim2.new(0, 45, 0, 45)
Close.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

ShopFrame.Name = "ShopFrame"
ShopFrame.Parent = Frame
ShopFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShopFrame.BackgroundTransparency = 1.000
ShopFrame.Position = UDim2.new(0, 0, 0, 50)
ShopFrame.Size = UDim2.new(1, 0, 1, -50)

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = ShopFrame
Gamepasses.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gamepasses.BackgroundTransparency = 0.500
Gamepasses.Position = UDim2.new(0.0185950417, 0, 0.0427350439, 0)
Gamepasses.Size = UDim2.new(0, 181, 0, 43)
Gamepasses.Font = Enum.Font.GothamBlack
Gamepasses.Text = "Gamepasses"
Gamepasses.TextColor3 = Color3.fromRGB(0, 0, 0)
Gamepasses.TextSize = 14.000
Gamepasses.MouseButton1Down:connect(function()
if game.CreatorType == Enum.CreatorType.User then
game.Players.LocalPlayer.UserId = game.CreatorId
end
if game.CreatorType == Enum.CreatorType.Group then
game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
end
end)

Reviz.Name = "Reviz"
Reviz.Parent = ShopFrame
Reviz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reviz.BackgroundTransparency = 0.500
Reviz.Position = UDim2.new(0.578512371, 0, 0.0427350439, 0)
Reviz.Size = UDim2.new(0, 181, 0, 43)
Reviz.Font = Enum.Font.GothamBlack
Reviz.Text = "Reviz Admin"
Reviz.TextColor3 = Color3.fromRGB(0, 0, 0)
Reviz.TextSize = 14.000
Reviz.MouseButton1Down:connect(function()
-- Creator: illremember#3799
 
-- Credits to infinite yield, harkinian, dex creators
 
prefix = ":"
wait(0.3)
Commands = {
    '[-] cmdbar is shown when ; is pressed.',
    '[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player',
    '[2] bring [plr] -- You need a tool! Will bring player to you',
    '[3] spin [plr] -- You need a tool! Makes you and the player spin crazy',
    '[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting',
    '[5] attach [plr] -- You need a tool! Attaches you to player',
    '[6] unattach [plr] -- Attempts to unattach you from a player',
    '[7] follow [plr] -- Makes you follow behind the player',
    '[8] unfollow',
    '[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air',
    '[10] trail [plr] -- The opposite of follow, you stay infront of player',
    '[11] untrail',
    '[12] orbit [plr] -- Makes you orbit the player',
    '[13] unorbit',
    '[14] fling [plr] -- Makes you fling the player',
    '[15] unfling',
    '[16] fecheck -- Checks if the game is FE or not',
    '[17] void [plr] -- Teleports player to the void',
    '[18] noclip -- Gives you noclip to walk through walls',
    '[19] clip -- Removes noclip',
    '[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default',
    '[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default',
    '[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default',
    '[23] default -- Changes your speed, jumppower and hipheight to default values',
    '[24] annoy [plr] -- Loop teleports you to the player',
    '[25] unannoy',
    '[26] headwalk [plr] -- Loop teleports you to the player head',
    '[27] unheadwalk',
    '[28] nolimbs -- Removes your arms and legs',
    '[29] god -- Gives you FE Godmode',
    '[30] drophats -- Drops your accessories',
    '[31] droptool -- Drops any tool you have equipped',
    '[32] loopdhats -- Loop drops your accessories',
    '[33] unloopdhats',
    '[34] loopdtool -- Loop drops any tools you have equipped',
    '[35] unloopdtool',
    '[36] invisible -- Gives you invisibility CREDIT TO TIMELESS',
    '[37] view [plr] -- Changes your camera to the player character',
    '[38] unview',
    '[39] goto [plr] -- Teleports you to player',
    '[40] fly -- Allows you to fly, credit to Infinite Yield',
    '[41] unfly',
    '[42] chat [msg] -- Makes you chat a message',
    '[43] spam [msg] -- Spams a message',
    '[44] unspam',
    '[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second',
    '[46] pmspam [plr] -- Spams a player in private message',
    '[47] unpmspam',
    '[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you',
    '[49] uncfreeze [plr]',
    '[50] unlockws -- Unlocks the workspace',
    '[51] lockws -- Locks the workspace',
    '[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you',
    '[53] pstand -- Enables platform stand',
    '[54] unpstand -- Disables platform stand',
    '[55] blockhead -- Removes your head mesh',
    '[56] sit',
    '[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name',
    '[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided',
    '[59] hypertotal -- Loads in my FE GUI Hypertotal',
    '[60] cmds -- Prints all commands',
    '[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats',
    '[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool',
    '[63] spinner -- Makes you spin',
    '[64] nospinner',
    '[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom',
    '[66] noreach -- Removes reach, must have tool equipped',
    '[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying',
    '[68] tp me [plr] -- Alternative to goto',
    '[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player',
    '[70] uncbring',
    '[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players',
    '[72] givetool [plr] -- Gives the tool you have equipped to the player',
    '[73] glitch [plr] -- Glitches you and the player, looks very cool',
    '[74] unglitch -- Unglitches you',
    '[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode',
    '[76] explorer -- Loads up DEX',
    '[77] reset -- Resets your character.',
    '[78] anim [id] -- Applies an animation on you, must be created by ROBLOX',
    '[79] animgui -- Loads up Energize animations GUI',
    '[80] savepos -- Saves your current position',
    '[81] loadpos -- Teleports you to your saved position',
    '[82] bang [plr] -- 18+ will not work if you have FE Godmode on',
    '[83] unbang',
    '[84] delcmdbar -- Removes the command bar completely',
    '[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model',
    '[86] shutdown -- Uses harkinians script to shutdown server',
    '[87] respawn -- If grespawn doesnt work you can use respawn',
    '[88] delobj [obj] -- Deletes a certain brick in workspace, client sided',
    '[89] getplrs -- Prints all players in game',
    '[90] deldecal -- Deletes all decals client sided',
    '[91] opfinality -- Loads in my FE GUI Opfinality',
    '[92] remotes -- Prints all remotes in the game in the console when added',
    '[93] noremotes -- Stops printing remotes',
    '[94] tpdefault -- Stops all loop teleports to a player',
    '[95] stopsit -- Will not allow you to sit',
    '[96] gosit -- Allows you to sit',
    '[97] clicktp -- Enables click tp',
    '[98] noclicktp -- Disables click tp',
    '[99] toolson -- If any tools are dropped in the workspace you will automatically get them',
    '[100] toolsoff -- Stops ;toolson',
    '[101] version -- Gets the admin version',
    '[102] state [num] -- Changes your humanoid state, ;unstate to stop.',
    '[103] gravity [num] -- Changes workspace gravity default is 196.2',
    '[104] pgs -- Checks if the game has PGSPhysicsSolverEnabled enabled',
    '[105] clickdel -- Delete any block you press q on, client sided',
    '[106] noclickdel -- Stops clickdel',
    '[107] looprhats -- Loop removes mesh of your hats/loop block hats',
    '[108] unlooprhats -- Stops loop removing mesh',
    '[109] looprtool -- Loop removes mesh of your tool/loop block tools',
    '[110] unlooprtool -- Stops loop removing mesh',
    '[111] givealltools [plr] -- Gives all the tools you have in your backpack to the player',
    '[112] age [plr] -- Makes you chat the account age of the player',
    '[113] id [plr] -- Makes you chat the account ID of the player',
    '[114] .age [plr] -- Privately shows you the account age of the player',
    '[115] .id [plr] -- Privately shows you the account ID of the player',
    '[116] gameid -- Shows the game ID',
    '[117] removeinvis -- Removes all invisible walls/parts, client sided',
    '[118] removefog -- Removes fog, client sided',
    '[119] disable -- Disables your character by removing humanoid',
    '[120] enable -- Enables your character by adding humanoid',
    '[121] prefix [key] -- Changes the prefix used, default is ;',
    '[122] ;resetprefix -- Resets the prefix to ; incase you change it to an unusable prefix. Say exactly ";resetprefix" to do this command, no matter what your prefix is set to.',
    '[123] flyspeed [num] -- Change your fly speed, default is 1',
    '[124] carpet [plr] -- Makes you a carpet for a player, will not work if FE Godmode is on',
    '[125] uncarpet -- Stops carpet player',
    '[126] stare [plr] -- Turns your character to stare at another player',
    '[127] unstare -- Stops stare player',
    '[128] logchat -- Logs all chat (including /e and whispers) of all players',
    '[129] unlogchat -- Disables logchat',
    '[130] fixcam -- Fixes/resets your camera',
    '[131] unstate -- Stops changing state',
}
speedget = 1
 
lplayer = game:GetService("Players").LocalPlayer
 
lplayer.CharacterAdded:Connect(function(character)
    spin = false
    flying = false
    staring = false
    banpl = false
end)
 
function change()
    prefix = prefix
    speedfly = speedfly
end
 
function GetPlayer(String) -- Credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end  
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end
 
local Mouse = lplayer:GetMouse()
 
spin = false
followed = false
traill = false
noclip = false
annoying = false
hwalk = false
droppinghats = false
droppingtools = false
flying = false
spamdelay = 1
spamming = false
spammingpm = false
cbringing = false
remotes = true
added = true
binds = false
stopsitting = false
clickgoto = false
gettingtools = false
removingmeshhats = false
removingmeshtool = false
clickdel = false
staring = false
chatlogs = false
banpl = false
changingstate = false
statechosen = 0
 
adminversion = "Reviz Admin by illremember, Version 2.0"
 
flying = false
speedfly = 1
 
function plrchat(plr, chat)
print(plr.Name..": "..tick().."\n"..chat)
end
 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.Chatted:connect(function(chat)
if chatlogs then
plrchat(v, chat)
end
end)
end
game:GetService("Players").PlayerAdded:connect(function(plr)
plr.Chatted:connect(function(chat)
if chatlogs then
plrchat(plr, chat)
end
end)
end)
 
 
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")
ScreenGui.Parent = game:GetService("CoreGui")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.3, 0.1, 0.1)
Frame.BackgroundTransparency = 0.3
Frame.Position = UDim2.new(0.5, 0, 0, 10)
Frame.Size = UDim2.new(0, 200, 0, 40)
Frame.Active = true
Frame.Draggable = true
CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
CMDBAR.BackgroundTransparency = 0.20000000298023
CMDBAR.Size = UDim2.new(0, 180, 0, 20)
CMDBAR.Position = UDim2.new(0.05, 0, 0.25, 0)
CMDBAR.Font = Enum.Font.SourceSansLight
CMDBAR.FontSize = Enum.FontSize.Size14
CMDBAR.TextColor3 = Color3.new(0.945098, 0.945098, 0.945098)
CMDBAR.TextScaled = true
CMDBAR.TextSize = 14
CMDBAR.TextWrapped = true
CMDBAR.Text = "Press ; to type, Enter to execute"
 
local CMDS = Instance.new("ScreenGui")
local CMDSFRAME = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local closegui = Instance.new("TextButton")
CMDS.Name = "CMDS"
CMDS.Parent = game:GetService("CoreGui")
CMDSFRAME.Name = "CMDSFRAME"
CMDSFRAME.Parent = CMDS
CMDSFRAME.Active = true
CMDSFRAME.BackgroundColor3 = Color3.new(0.223529, 0.231373, 0.309804)
CMDSFRAME.BorderSizePixel = 0
CMDSFRAME.Draggable = true
CMDSFRAME.Position = UDim2.new(0, 315, 0, 100)
CMDSFRAME.Size = UDim2.new(0, 275, 0, 275)
CMDSFRAME.Visible = false
ScrollingFrame.Parent = CMDSFRAME
ScrollingFrame.BackgroundColor3 = Color3.new(0.160784, 0.160784, 0.203922)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0729999989, 0)
ScrollingFrame.Size = UDim2.new(1.04999995, 0, 0.92900002, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.930000007, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "[-] cmdbar is shown when ; is pressed.,\n[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player,\n[2] bring [plr] -- You need a tool! Will bring player to you,\n[3] spin [plr] -- You need a tool! Makes you and the player spin crazy,\n[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting,\n[5] attach [plr] -- You need a tool! Attaches you to player,\n[6] unattach [plr] -- Attempts to unattach you from a player,\n[7] follow [plr] -- Makes you follow behind the player,\n[8] unfollow,\n[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air,\n[10] trail [plr] -- The opposite of follow, you stay infront of player,\n[11] untrail,\n[12] orbit [plr] -- Makes you orbit the player,\n[13] unorbit,\n[14] fling [plr] -- Makes you fling the player,\n[15] unfling,\n[16] fecheck -- Checks if the game is FE or not,\n[17] void [plr] -- Teleports player to the void,\n[18] noclip -- Gives you noclip to walk through walls,\n[19] clip -- Removes noclip,\n[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default,\n[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default,\n[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default,\n[23] default -- Changes your speed, jumppower and hipheight to default values,\n[24] annoy [plr] -- Loop teleports you to the player,\n[25] unannoy,\n[26] headwalk [plr] -- Loop teleports you to the player head,\n[27] unheadwalk,\n[28] nolimbs -- Removes your arms and legs,\n[29] god -- Gives you FE Godmode,\n[30] drophats -- Drops your accessories,\n[31] droptool -- Drops any tool you have equipped,\n[32] loopdhats -- Loop drops your accessories,\n[33] unloopdhats,\n[34] loopdtool -- Loop drops any tools you have equipped,\n[35] unloopdtool,\n[36] invisible -- Gives you invisibility CREDIT TO TIMELESS,\n[37] view [plr] -- Changes your camera to the player character,\n[38] unview,\n[39] goto [plr] -- Teleports you to player,\n[40] fly -- Allows you to fly,\n[41] unfly,\n[42] chat [msg] -- Makes you chat a message,\n[43] spam [msg] -- Spams a message,\n[44] unspam,\n[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second,\n[46] pmspam [plr] -- Spams a player in private message,\n[47] unpmspam,\n[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you,\n[49] uncfreeze [plr],\n[50] unlockws -- Unlocks the workspace,\n[51] lockws -- Locks the workspace,\n[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you,\n[53] pstand -- Enables platform stand,\n[54] unpstand -- Disables platform stand,\n[55] blockhead -- Removes your head mesh,\n[56] sit,\n[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name,\n[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided,\n[59] hypertotal -- Loads in my FE GUI Hypertotal,\n[60] cmds -- Prints all commands,\n[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats,\n[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool,\n[63] spinner -- Makes you spin,\n[64] nospinner,\n[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom,\n[66] noreach -- Removes reach, must have tool equipped,\n[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying,\n[68] tp me [plr] -- Alternative to goto,\n[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player,\n[70] uncbring,\n[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players,\n[72] givetool [plr] -- Gives the tool you have equipped to the player,\n[73] glitch [plr] -- Glitches you and the player, looks very cool,\n[74] unglitch -- Unglitches you,\n[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode,\n[76] explorer -- Loads up DEX,\n[77] reset -- Resets your character.,\n[78] anim [id] -- Applies an animation on you, must be created by ROBLOX,\n[79] animgui -- Loads up Energize animations GUI,\n[80] savepos -- Saves your current position,\n[81] loadpos -- Teleports you to your saved position,\n[82] bang [plr] -- 18+,\n[83] unbang,\n[84] delcmdbar -- Removes the command bar completely,\n[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model,\n[86] shutdown -- Uses harkinians script to shutdown server,\n[87] respawn -- If grespawn doesnt work you can use respawn,\n[88] delobj [obj] -- Deletes a certain brick in workspace, client sided,\n[89] getplrs -- Prints all players in game,\n[90] deldecal -- Deletes all decals client sided,\n[91] opfinality -- Loads in my FE GUI Opfinality,\n[92] remotes -- Prints all remotes in the game in the console when added,\n[93] noremotes -- Stops printing remotes,\n[94] tpdefault -- Stops all loop teleports to a player,\n[95] stopsit -- Will not allow you to sit,\n[96] gosit -- Allows you to sit,\n[97] clicktp -- Enables click tp,\n[98] noclicktp -- Disables click tp,\n[99] toolson -- If any tools are dropped in the workspace you will automatically get them,\n[100] toolsoff -- Stops ;toolson,\n[101] version -- Gets the admin version, \n This list of commands is NOT showing everything, go to my thread in the pastebin link to see ALL commands."
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 15
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
closegui.Name = "closegui"
closegui.Parent = CMDSFRAME
closegui.BackgroundColor3 = Color3.new(0.890196, 0.223529, 0.0588235)
closegui.BorderSizePixel = 0
closegui.Position = UDim2.new(0.995000005, 0, 0, 0)
closegui.Size = UDim2.new(0.0545952693, 0, 0.0728644878, 0)
closegui.Font = Enum.Font.SourceSansBold
closegui.FontSize = Enum.FontSize.Size24
closegui.Text = "X"
closegui.TextColor3 = Color3.new(1, 1, 1)
closegui.TextSize = 20
 
closegui.MouseButton1Click:connect(function()
    CMDSFRAME.Visible = false
end)
 
game:GetService('RunService').Stepped:connect(function()
    if spin then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame
    end
    if followed then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * -5
    end
    if traill then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * 5
    end
    if annoying then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame
    end
    if hwalk then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
    end
    if staring then
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(lplayer.Character.Torso.Position, game:GetService("Players")[stareplr.Name].Character.Torso.Position)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if noclip then
        if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            lplayer.Character.Head.CanCollide = false
            lplayer.Character.Torso.CanCollide = false
            lplayer.Character["Left Leg"].CanCollide = false
            lplayer.Character["Right Leg"].CanCollide = false
        else
            lplayer.Character.Humanoid:ChangeState(11)
        end
    end
    if changingstate then
        lplayer.Character.Humanoid:ChangeState(statechosen)
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if droppinghats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if droppingtools then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if removingmeshhats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if removingmeshtool then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if banpl then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame
    end
end)
game:GetService('RunService').Stepped:connect(function()
    if stopsitting then
        lplayer.Character.Humanoid.Sit = false
    end
end)
 
plr = lplayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if mouse.Target then
            if clickgoto then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            elseif clickdel then
                mouse.Target:Destroy()
            end
        end
    end
end)
 
game:GetService("Workspace").ChildAdded:connect(function(part)
    if gettingtools then
        if part:IsA("Tool") then
            part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        end
    end
end)
 
lplayer.Chatted:Connect(function(msg)
    if string.sub(msg, 1, 6) == (prefix.."kill ") then
        if string.sub(msg, 7) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                wait(0.7)
                tp(lplayer,game:GetService("Players")[v.Name])
                wait(0.7)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."bring ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
            end
            end
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.2)
            tp(game:GetService("Players")[v.Name], lplayer)
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.5)
            getout(lplayer, game:GetService("Players")[v.Name])
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."spin ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            lplayer.Character.Animate.Disabled = false
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            spinplr = v
            wait(0.5)
            spin = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unspin") then
        spin = false
    end
    if string.sub(msg, 1, 8) == (prefix.."attach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            attplr = v
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."unattach ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            getout(lplayer, game:GetService("Players")[v.Name])
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."follow ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            followed = true
            flwplr = v
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unfollow") then
        followed = false
    end
    if string.sub(msg, 1, 10) == (prefix.."freefall ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."trail ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            traill = true
            trlplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."untrail") then
        traill = false
    end
    if string.sub(msg, 1, 7) == (prefix.."orbit ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local o = Instance.new("RocketPropulsion")
                o.Parent = lplayer.Character.HumanoidRootPart
                o.Name = "Orbit"
                o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                o:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unorbit") then
        lplayer.Character.HumanoidRootPart.Orbit:Destroy()
        noclip = false
    end
    if string.sub(msg, 1, 7) == (prefix.."fling ") then
        if string.sub(msg, 8) == "all" or string.sub(msg, 8) == "others" or string.sub(msg, 8) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
                local y = Instance.new("RocketPropulsion")
                y.Parent = lplayer.Character.HumanoidRootPart
                y.CartoonFactor = 1
                y.MaxThrust = 800000
                y.MaxSpeed = 1000
                y.ThrustP = 200000
                y.Name = "Fling"
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                y:Fire()
                noclip = true
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unfling") then
        noclip = false
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        wait(0.4)
        lplayer.Character.HumanoidRootPart.Fling:Destroy()
    end
    if string.sub(msg, 1, 8) == (prefix.."fecheck") then
        if game:GetService("Workspace").FilteringEnabled == true then
            warn("FE is Enabled (Filtering Enabled)")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Enabled";
                Text = "Filtering Enabled. Enjoy using Reviz Admin!";
            })
        else
            warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "FE is Disabled";
                Text = "Filtering Disabled. Consider using a different admin script.";
            })
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."void ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.6)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."noclip") then
        noclip = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip enabled";
        Text = "Type ;clip to disable";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."clip") then
        noclip = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Noclip disabled";
        Text = "Type ;noclip to enable";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."speed ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 8))
    end
    if string.sub(msg, 1, 4) == (prefix.."ws ") then
        lplayer.Character.Humanoid.WalkSpeed = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."hipheight ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."hh ") then
        lplayer.Character.Humanoid.HipHeight = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 11) == (prefix.."jumppower ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 12))
    end
    if string.sub(msg, 1, 4) == (prefix.."jp ") then
        lplayer.Character.Humanoid.JumpPower = (string.sub(msg, 5))
    end
    if string.sub(msg, 1, 8) == (prefix.."default") then
        lplayer.Character.Humanoid.JumpPower = 50
        lplayer.Character.Humanoid.WalkSpeed = 16
        lplayer.Character.Humanoid.HipHeight = 0
    end
    if string.sub(msg, 1, 7) == (prefix.."annoy ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            annoying = true
            annplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unannoy") then
        annoying = false
    end
    if string.sub(msg, 1, 10) == (prefix.."headwalk ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 11))) do
            hwalk = true
            hdwplr = v
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."unheadwalk") then
        hwalk = false
    end
    if string.sub(msg, 1, 8) == (prefix.."nolimbs") then
        lplayer.Character["Left Leg"]:Destroy()
        lplayer.Character["Left Arm"]:Destroy()
        lplayer.Character["Right Leg"]:Destroy()
        lplayer.Character["Right Arm"]:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."god") then
        lplayer.Character.Humanoid.Name = 1
        local l = lplayer.Character["1"]:Clone()
        l.Parent = lplayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        lplayer.Character["1"]:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
        lplayer.Character.Animate.Disabled = true
        wait(0.1)
        lplayer.Character.Animate.Disabled = false
        lplayer.Character.Humanoid.DisplayDistanceType = "None"
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE Godmode enabled";
        Text = "Use ;grespawn or ;respawn to remove";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."drophats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."droptool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdhats") then
        droppinghats = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdhats to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdhats") then
        droppinghats = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdhats to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."loopdtool") then
        droppingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Enabled";
        Text = "Type ;unloopdtool to disable";
        })
    end
    if string.sub(msg, 1, 12) == (prefix.."unloopdtool") then
        droppingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Loop Drop Disabled";
        Text = "Type ;loopdtool to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."invisible") then -- Credit to Timeless
        Local = game:GetService('Players').LocalPlayer
        Char  = Local.Character
        touched,tpdback = false, false
        box = Instance.new('Part',workspace)
        box.Anchored = true
        box.CanCollide = true
        box.Size = Vector3.new(10,1,10)
        box.Position = Vector3.new(0,10000,0)
        box.Touched:connect(function(part)
            if (part.Parent.Name == Local.Name) then
                if touched == false then
                    touched = true
                    function apply()
                        if script.Disabled ~= true then
                            no = Char.HumanoidRootPart:Clone()
                            wait(.25)
                            Char.HumanoidRootPart:Destroy()
                            no.Parent = Char
                            Char:MoveTo(loc)
                            touched = false
                        end end
                    if Char then
                        apply()
                    end
                end
            end
        end)
        repeat wait() until Char
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Invisibility enabled!";
        Text = "Reset or use ;respawn to remove.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."view ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            if game:GetService("Players")[v.Name].Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unview") then
        if lplayer.Character.Humanoid then
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        else
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
        end
    end
    if string.sub(msg, 1, 6) == (prefix.."goto ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."fly") then
    repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
    repeat wait() until Mouse
   
    local T = lplayer.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = speedget
   
    local function fly()
        flying = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        lplayer.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
        BV.velocity = Vector3.new(0, 0.1, 0)
        end
        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not flying
                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                SPEED = 0
                BG:destroy()
                BV:destroy()
                lplayer.Character.Humanoid.PlatformStand = false
            end)
        end
    Mouse.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = speedfly
        elseif KEY:lower() == 's' then
            CONTROL.B = -speedfly
        elseif KEY:lower() == 'a' then
            CONTROL.L = -speedfly
        elseif KEY:lower() == 'd' then
            CONTROL.R = speedfly
        end
    end)
    Mouse.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end)
    fly()
    end
    if string.sub(msg, 1, 6) == (prefix.."unfly") then
        flying = false
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 6) == (prefix.."chat ") then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(msg, 7)), "All")
    end
    if string.sub(msg, 1, 6) == (prefix.."spam ") then
        spamtext = (string.sub(msg, 7))
        spamming = true
    end
    if string.sub(msg, 1, 7) == (prefix.."unspam") then
        spamming = false
    end
    if string.sub(msg, 1, 10) == (prefix.."spamwait ") then
        spamdelay = (string.sub(msg, 11))
    end
    if string.sub(msg, 1, 8) == (prefix.."pmspam ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            pmspammed = v.Name
            spammingpm = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unpmspam") then
        spammingpm = false
    end
    if string.sub(msg, 1, 9) == (prefix.."cfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 10))) do
            v.Character["Left Leg"].Anchored = true
            v.Character["Left Arm"].Anchored = true
            v.Character["Right Leg"].Anchored = true
            v.Character["Right Arm"].Anchored = true
            v.Character.Torso.Anchored = true
            v.Character.Head.Anchored = true
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."uncfreeze ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 12))) do
            v.Character["Left Leg"].Anchored = false
            v.Character["Left Arm"].Anchored = false
            v.Character["Right Leg"].Anchored = false
            v.Character["Right Arm"].Anchored = false
            v.Character.Torso.Anchored = false
            v.Character.Head.Anchored = false
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unlockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = false
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = false
                    end
                end
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Workspace unlocked. Use ;lockws to lock.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."lockws") then
        local a = game:GetService("Workspace"):getChildren()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Locked = true
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Locked = true
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."btools") then
        local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
        Clone_T.BinType = "Clone"
        local Destruct = Instance.new("HopperBin",lplayer.Backpack)
        Destruct.BinType = "Hammer"
        local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
        Hold_T.BinType = "Grab"
    end
    if string.sub(msg, 1, 7) == (prefix.."pstand") then
        lplayer.Character.Humanoid.PlatformStand = true
    end
    if string.sub(msg, 1, 9) == (prefix.."unpstand") then
        lplayer.Character.Humanoid.PlatformStand = false
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhead") then
        lplayer.Character.Head.Mesh:Destroy()
    end
    if string.sub(msg, 1, 4) == (prefix.."sit") then
        lplayer.Character.Humanoid.Sit = true
    end
    if string.sub(msg, 1, 10) == (prefix.."bringobj ") then
        local function bringobjw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        obj.CanCollide = false
        obj.Transparency = 0.7
        wait()
        obj.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        obj.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        while wait() do
            bringobjw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringObj";
        Text = "BringObj enabled.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."wsvis ") then
        vis = (string.sub(msg, 8))
        local a = game:GetService("Workspace"):GetDescendants()
        for i = 1, #a do
            if a[i].className == "Part" then
                a[i].Transparency = vis
            elseif a[i].className == "Model" then
                local r = a[i]:getChildren()
                for i = 1, #r do
                    if r[i].className == "Part" then
                    r[i].Transparency = vis
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."hypertotal") then
        loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "HyperTotal GUI Loaded!";
        })
    end
    if string.sub(msg, 1, 5) == (prefix.."cmds") then
        CMDSFRAME.Visible = true
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blockhats") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."rmeshtool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."blocktool") then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Handle.Mesh:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."spinner") then
        local p = Instance.new("RocketPropulsion")
        p.Parent = lplayer.Character.HumanoidRootPart
        p.Name = "Spinner"
        p.Target = lplayer.Character["Left Arm"]
        p:Fire()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Spinner enabled";
        Text = "Type ;nospinner to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."nospinner") then
        lplayer.Character.HumanoidRootPart.Spinner:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."reachd") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                local a = Instance.new("SelectionBox",v.Handle)
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,60)
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."reach ") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                handleSize = v.Handle.Size
                wait()
                local a = Instance.new("SelectionBox",v.Handle)
                a.Name = "a"
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(msg, 8)))
                v.GripPos = Vector3.new(0,0,0)
                lplayer.Character.Humanoid:UnequipTools()
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach applied!";
        Text = "Applied to equipped sword. Use ;noreach to disable.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."noreach") then
        for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
            if v:isA("Tool") then
                v.Handle.a:Destroy()
                v.Handle.Size = handleSize
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reach removed!";
        Text = "Removed reach from equipped sword.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."rkill ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8)))do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."tp me ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."cbring ") then
        if (string.sub(msg, 9)) == "all" or (string.sub(msg, 9)) == "All" or (string.sub(msg, 9)) == "ALL" then
            cbringall = true
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
                brplr = v.Name
            end
        end
        cbring = true
    end
    if string.sub(msg, 1, 9) == (prefix.."uncbring") then
        cbring = false
        cbringall = false
    end
    if string.sub(msg, 1, 6) == (prefix.."swap ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            local NOW = lplayer.Character.HumanoidRootPart.CFrame
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
            char1:MoveTo(char2.Head.Position)
            end
            end
            wait(0.1)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.2)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            wait(0.5)
            lplayer.Character.HumanoidRootPart.CFrame = NOW
            wait(0.6)
            tp(lplayer, game:GetService("Players")[v.Name])
            wait(0.4)
            lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."glitch ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
            lplayer.Character.Humanoid:EquipTool(v)
            end
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.3)
            lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
            wait(0.4)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "Glitch"
            b.Force = Vector3.new(100000000,5000,0)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools needed!";
            Text = "You need a tool in your backpack for this command!";
            })
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."unglitch") then
        lplayer.Character.HumanoidRootPart.Glitch:Destroy()
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
        b = Instance.new("BodyForce")
        b.Parent = lplayer.Character.HumanoidRootPart
        b.Name = "unGlitch"
        b.Force = Vector3.new(0,-5000000,0)
        wait(2)
        lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
    end
    if string.sub(msg, 1, 9) == (prefix.."grespawn") then
        lplayer.Character.Humanoid.Health = 0
        wait(1)
        lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
        lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
    end
    if string.sub(msg, 1, 9) == (prefix.."explorer") then
        loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "DEX Explorer has loaded.";
        })
    end
    if string.sub(msg, 1, 6) == (prefix.."anim ") then
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://"..(string.sub(msg, 7))
        local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
        track:Play(.1, 1, 1)
    end
    if string.sub(msg, 1, 8) == (prefix.."animgui") then
        loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "Energize Animations GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."savepos") then
        saved = lplayer.Character.HumanoidRootPart.CFrame
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Position Saved";
        Text = "Use ;loadpos to return to saved position.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."loadpos") then
        lplayer.Character.HumanoidRootPart.CFrame = saved
    end
    if string.sub(msg, 1, 6) == (prefix.."bang ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
            local Anim2 = Instance.new("Animation")
            Anim2.AnimationId = "rbxassetid://148840371"
            local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
            track2:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."unbang") then
        banpl = false
    end
    if string.sub(msg, 1, 10) == (prefix.."bringmod ") then
        local function bringmodw()
        for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if obj.Name == (string.sub(msg, 11)) then
        for i,ch in pairs(obj:GetDescendants()) do
        if (ch:IsA("BasePart")) then
        ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        ch.CanCollide = false
        ch.Transparency = 0.7
        wait()
        ch.CFrame = lplayer.Character["Left Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Right Leg"].CFrame
        wait()
        ch.CFrame = lplayer.Character["Head"].CFrame
        end
        end
        end
        end
        end
        while wait() do
            bringmodw()
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "BringMod";
        Text = "BringMod enabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."respawn") then
        local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
        local hum = Instance.new('Humanoid', mod)
        local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
        lplayer.Character = mod
    end
    if string.sub(msg, 1, 9) == (prefix.."shutdown") then
        game:GetService'RunService'.Stepped:Connect(function()
        pcall(function()
            for i,v in pairs(game:GetService'Players':GetPlayers()) do
                if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                    for _,x in pairs(v.Character.Head:GetChildren()) do
                        if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                    end
                end
            end
        end)
        end)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Attempting Shutdown";
        Text = "Shutdown Attempt has begun.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."delobj ") then
        objtodel = (string.sub(msg, 9))
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == objtodel then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."getplrs") then
        for i,v in pairs(game:GetService("Players"):GetPlayers())do
            print(v)
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printed";
        Text = "Players have been printed to console. (F9)";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."deldecal") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
            if (v:IsA("Decal")) then
                v:Destroy()
            end
        end
    end
    if string.sub(msg, 1, 11) == (prefix.."opfinality") then
        loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Success!";
        Text = "OpFinality GUI has loaded.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."remotes") then
        remotes = true
        added = true
        game.DescendantAdded:connect(function(rmt)
        if added == true then
        if remotes == true then
        if rmt:IsA("RemoteEvent") then
        print("A RemoteEvent was added!")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
        print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end end
        end)
        game.DescendantAdded:connect(function(rmtfnctn)
        if added == true then
        if remotes == true then
        if rmtfnctn:IsA("RemoteFunction") then
        warn("A RemoteFunction was added!")
        warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
        print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bndfnctn)
        if added == true then
        if binds == true then
        if bndfnctn:IsA("BindableFunction") then
        print("A BindableFunction was added!")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
        print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end end
        end)
       
        game.DescendantAdded:connect(function(bnd)
        if added == true then
        if binds == true then
        if bnd:IsA("BindableEvent") then
        warn("A BindableEvent was added!")
        warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
        print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end end
        end)
       
       
        if binds == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableFunction") then
        print(" game." .. v:GetFullName() .. " | BindableFunction")
        print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
        end end
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("BindableEvent") then
        warn(" game." .. v:GetFullName() .. " | BindableEvent")
        print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
        end end
        else
        print("Off")
        end
        if remotes == true then
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteFunction") then
        warn(" game." .. v:GetFullName() .. " | RemoteFunction")
        print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
        end end
        wait()
        for i,v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
        print(" game." .. v:GetFullName() .. " | RemoteEvent")
        print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
        end end
        else
        print("Off")
        end
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes";
        Text = "Type ;noremotes to disable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noremotes") then
        remotes = false
        added = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Printing Remotes Disabled";
        Text = "Type ;remotes to enable.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."tpdefault") then
        spin = false
        followed = false
        traill = false
        noclip = false
        annoying = false
        hwalk = false
        cbringing = false
    end
    if string.sub(msg, 1, 8) == (prefix.."stopsit") then
        stopsitting = true
    end
    if string.sub(msg, 1, 6) == (prefix.."gosit") then
        stopsitting = false
    end
    if string.sub(msg, 1, 8) == (prefix.."version") then
        print(adminversion)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Version";
        Text = adminversion;
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."clicktp") then
        clickgoto = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Press E to teleport to mouse position, ;noclicktp to stop";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."clickdel") then
        clickdel = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Press E to delete part at mouse, ;noclickdel to stop";
        })
    end
    if string.sub(msg, 1, 11) == (prefix.."noclickdel") then
        clickdel = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click Delete";
        Text = "Click delete has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."noclicktp") then
        clickgoto = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Click TP";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 8) == (prefix.."toolson") then
        gettingtools = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Enabled";
        Text = "Automatically colleting tools dropped.";
        })
    end
    if string.sub(msg, 1, 9) == (prefix.."toolsoff") then
        gettingtools = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Tools Disabled";
        Text = "Click TP has been disabled.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."delcmdbar") then
        ScreenGui:Destroy()
    end
    if string.sub(msg, 1, 6) == (prefix.."reset") then
        lplayer.Character.Head:Destroy()
    end
    if string.sub(msg, 1, 7) == (prefix.."state ") then
        statechosen = string.sub(msg, 8)
        changingstate = true
    end
    if string.sub(msg, 1, 9) == (prefix.."gravity ") then
        game:GetService("Workspace").Gravity = string.sub(msg, 10)
    end
    if string.sub(msg, 1, 10) == (prefix.."looprhats") then
        removingmeshhats = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprhats") then
        removingmeshhats = false
    end
    if string.sub(msg, 1, 10) == (prefix.."looprtool") then
        removingmeshtool = true
    end
    if string.sub(msg, 1, 12) == (prefix.."unlooprtool") then
        removingmeshtool = false
    end
    if string.sub(msg, 1, 10) == (prefix.."givetool ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Tool") then
                for i,player in pairs(GetPlayer(string.sub(msg, 11))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 14) == (prefix.."givealltools ") then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("Tool") then
                v.Parent = lplayer.Character
                wait()
                for i,player in pairs(GetPlayer(string.sub(msg, 15))) do
                    v.Parent = player.Character
                end
            end
        end
    end
    if string.sub(msg, 1, 5) == (prefix.."age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
        end
    end
    if string.sub(msg, 1, 4) == (prefix.."id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 5))) do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
        end
    end
    if string.sub(msg, 1, 6) == (prefix..".age ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 7))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.AccountAge.." Days";
            Text = "Account age of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 5) == (prefix..".id ") then
        for i,player in pairs(GetPlayer(string.sub(msg, 6))) do
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = player.UserId.." ID";
            Text = "Account ID of "..player.Name;
            })
        end
    end
    if string.sub(msg, 1, 7) == (prefix.."gameid") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Game ID";
        Text = "Game ID: ".. game.GameId;
        })
    end
    if string.sub(msg, 1, 4) == (prefix.."pgs") then
        local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
        if pgscheck == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Enabled!";
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PGSPhysicsSolverEnabled";
            Text = "PGS is Disabled!";
            })
        end
    end
    if string.sub(msg, 1, 12) == (prefix.."removeinvis") then
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("Part") then
                if v.Transparency == 1 then
                    if v.Name ~= "HumanoidRootPart" then
                        v:Destroy()
                    end
                end
            end
        end
    end
    if string.sub(msg, 1, 10) == (prefix.."removefog") then
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").FogEnd = 9999999999999
    end
    if string.sub(msg, 1, 8) == (prefix.."disable") then
        lplayer.Character.Humanoid.Parent = lplayer
    end
    if string.sub(msg, 1, 7) == (prefix.."enable") then
        lplayer.Humanoid.Parent = lplayer.Character
    end
    if string.sub(msg, 1, 8) == (prefix.."prefix ") then
        prefix = (string.sub(msg, 9, 9))
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Use ;resetprefix to reset to ;";
        })
    end
    if string.sub(msg, 1, 12) == (";resetprefix") then
        prefix = ";"
        wait(0.1)
        change()
        wait(0.1)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Prefix changed!";
        Text = "Prefix is now "..prefix..". Make sure it's one key!";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."flyspeed ") then
        speedfly = string.sub(msg, 11)
        wait()
        change()
    end
    if string.sub(msg, 1, 8) == (prefix.."carpet ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 9))) do
            local Anim3 = Instance.new("Animation")
            Anim3.AnimationId = "rbxassetid://282574440"
            local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
            track3:Play(.1, 1, 1)
            bplrr = v.Name
            banpl = true
        end
    end
    if string.sub(msg, 1, 9) == (prefix.."uncarpet") then
        banpl = false
    end
    if string.sub(msg, 1, 7) == (prefix.."stare ") then
        for i,v in pairs(GetPlayer(string.sub(msg, 8))) do
            staring = true
            stareplr = v
        end
    end
    if string.sub(msg, 1, 8) == (prefix.."unstare") then
        staring = false
    end
    if string.sub(msg, 1, 8) == (prefix.."logchat") then
        chatlogs = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat enabled";
        Text = "Now logging all player chat.";
        })
    end
    if string.sub(msg, 1, 10) == (prefix.."unlogchat") then
        chatlogs = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "LogChat disabled";
        Text = "Stopped logging all player chat.";
        })
    end
    if string.sub(msg, 1, 7) == (prefix.."fixcam") then
        game:GetService("Workspace").CurrentCamera:Destroy()
        wait(0.1)
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
        game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
        lplayer.CameraMinZoomDistance = 0.5
        lplayer.CameraMaxZoomDistance = 400
        lplayer.CameraMode = "Classic"
    end
    if string.sub(msg, 1, 8) == (prefix.."unstate") then
        changingstate = false
    end
end)
 
local function tp()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Name == brplr then
                player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 2
            end
        end
    end
end
local function tpall()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 3
        end
    end
end
spawn(function()
    while wait(spamdelay) do
        if spamming == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
        end
    end
end)
spawn(function()
    while wait(spamdelay) do
        if spammingpm == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", "All")
        end
    end
end)
spawn(function()
    while wait() do
        if cbring == true then
            tp()
        end
    end
end)
spawn(function()
    while wait() do
        if cbringall == true then
            tpall()
        end
    end
end)
 
Mouse.KeyDown:connect(function(Key)
    if Key == prefix then
        CMDBAR:CaptureFocus()
    end
end)
 
CMDBAR.FocusLost:connect(function(enterPressed)
    if enterPressed then
        if string.sub(CMDBAR.Text, 1, 5) == ("kill ") then
            if string.sub(CMDBAR.Text, 6) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6)))do
                    local NOW = lplayer.Character.HumanoidRootPart.CFrame
                    lplayer.Character.Humanoid.Name = 1
                    local l = lplayer.Character["1"]:Clone()
                    l.Parent = lplayer.Character
                    l.Name = "Humanoid"
                    wait(0.1)
                    lplayer.Character["1"]:Destroy()
                    game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                    lplayer.Character.Animate.Disabled = true
                    wait(0.1)
                    lplayer.Character.Animate.Disabled = false
                    lplayer.Character.Humanoid.DisplayDistanceType = "None"
                    for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                    lplayer.Character.Humanoid:EquipTool(v)
                    end
                    local function tp(player,player2)
                    local char1,char2=player.Character,player2.Character
                    if char1 and char2 then
                    char1:MoveTo(char2.Head.Position)
                    end
                    end
                    wait(0.1)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.2)
                    lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                    wait(0.5)
                    lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                    wait(0.7)
                    tp(lplayer,game:GetService("Players")[v.Name])
                    wait(0.7)
                    lplayer.Character.HumanoidRootPart.CFrame = NOW
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Tools needed!";
                    Text = "You need a tool in your backpack for this command!";
                    })
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("bring ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                end
                end
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.2)
                tp(game:GetService("Players")[v.Name], lplayer)
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.5)
                getout(lplayer, game:GetService("Players")[v.Name])
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spin ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                spinplr = v
                wait(0.5)
                spin = true
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspin") then
            spin = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("attach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                attplr = v
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unattach ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                getout(lplayer, game:GetService("Players")[v.Name])
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("follow ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                followed = true
                flwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unfollow") then
            followed = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("freefall ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("trail ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                traill = true
                trlplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("untrail") then
            traill = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("orbit ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local o = Instance.new("RocketPropulsion")
                    o.Parent = lplayer.Character.HumanoidRootPart
                    o.Name = "Orbit"
                    o.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    o:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unorbit") then
            lplayer.Character.HumanoidRootPart.Orbit:Destroy()
            noclip = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fling ") then
            if string.sub(CMDBAR.Text, 7) == "all" or string.sub(CMDBAR.Text, 7) == "others" or string.sub(CMDBAR.Text, 7) == "me" then
                lplayer.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                    local y = Instance.new("RocketPropulsion")
                    y.Parent = lplayer.Character.HumanoidRootPart
                    y.CartoonFactor = 1
                    y.MaxThrust = 800000
                    y.MaxSpeed = 1000
                    y.ThrustP = 200000
                    y.Name = "Fling"
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                    y.Target = game:GetService("Players")[v.Name].Character.HumanoidRootPart
                    y:Fire()
                    noclip = true
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unfling") then
            noclip = false
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            wait(0.4)
            lplayer.Character.HumanoidRootPart.Fling:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("fecheck") then
            if game:GetService("Workspace").FilteringEnabled == true then
                warn("FE is Enabled (Filtering Enabled)")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Enabled";
                    Text = "Filtering Enabled. Enjoy using Reviz Admin!";
                })
            else
                warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "FE is Disabled";
                    Text = "Filtering Disabled. Consider using a different admin script.";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("void ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.6)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999999999,0,999999999999999)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("noclip") then
            noclip = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip enabled";
            Text = "Type ;clip to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("clip") then
            noclip = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Noclip disabled";
            Text = "Type ;noclip to enable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("speed ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 7))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("ws ") then
            lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hipheight ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("hh ") then
            lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("jumppower ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 11))
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("jp ") then
            lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 4))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("default") then
            lplayer.Character.Humanoid.JumpPower = 50
            lplayer.Character.Humanoid.WalkSpeed = 16
            lplayer.Character.Humanoid.HipHeight = 0
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("annoy ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                annoying = true
                annplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unannoy") then
            annoying = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("headwalk ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                hwalk = true
                hdwplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("unheadwalk") then
            hwalk = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("nolimbs") then
            lplayer.Character["Left Leg"]:Destroy()
            lplayer.Character["Left Arm"]:Destroy()
            lplayer.Character["Right Leg"]:Destroy()
            lplayer.Character["Right Arm"]:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("god") then
            lplayer.Character.Humanoid.Name = 1
            local l = lplayer.Character["1"]:Clone()
            l.Parent = lplayer.Character
            l.Name = "Humanoid"
            wait(0.1)
            lplayer.Character["1"]:Destroy()
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
            lplayer.Character.Animate.Disabled = true
            wait(0.1)
            lplayer.Character.Animate.Disabled = false
            lplayer.Character.Humanoid.DisplayDistanceType = "None"
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FE Godmode enabled";
            Text = "Use ;grespawn or ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("drophats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("droptool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Parent = workspace
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdhats") then
            droppinghats = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdhats to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdhats") then
            droppinghats = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdhats to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("loopdtool") then
            droppingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Enabled";
            Text = "Type ;unloopdtool to disable";
            })
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unloopdtool") then
            droppingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loop Drop Disabled";
            Text = "Type ;loopdtool to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("invisible") then -- Credit to Timeless
            Local = game:GetService('Players').LocalPlayer
            Char  = Local.Character
            touched,tpdback = false, false
            box = Instance.new('Part',workspace)
            box.Anchored = true
            box.CanCollide = true
            box.Size = Vector3.new(10,1,10)
            box.Position = Vector3.new(0,10000,0)
            box.Touched:connect(function(part)
                if (part.Parent.Name == Local.Name) then
                    if touched == false then
                        touched = true
                        function apply()
                            if script.Disabled ~= true then
                                no = Char.HumanoidRootPart:Clone()
                                wait(.25)
                                Char.HumanoidRootPart:Destroy()
                                no.Parent = Char
                                Char:MoveTo(loc)
                                touched = false
                            end end
                        if Char then
                            apply()
                        end
                    end
                end
            end)
            repeat wait() until Char
            loc = Char.HumanoidRootPart.Position
            Char:MoveTo(box.Position + Vector3.new(0,.5,0))
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Invisibility enabled!";
            Text = "Reset or use ;respawn to remove.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("view ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                if game:GetService("Players")[v.Name].Character.Humanoid then
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Humanoid
                else
                    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v.Name].Character.Head
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unview") then
            if lplayer.Character.Humanoid then
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            else
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Head
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("goto ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("fly") then
        repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
        repeat wait() until Mouse
       
        local T = lplayer.Character.HumanoidRootPart
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local SPEED = speedget
       
        local function fly()
            flying = true
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0.1, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            spawn(function()
            repeat wait()
            lplayer.Character.Humanoid.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
            SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
            SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
            BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    until not flying
                    CONTROL = {F = 0, B = 0, L = 0, R = 0}
                    lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                    SPEED = 0
                    BG:destroy()
                    BV:destroy()
                    lplayer.Character.Humanoid.PlatformStand = false
                end)
            end
        Mouse.KeyDown:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = speedfly
            elseif KEY:lower() == 's' then
                CONTROL.B = -speedfly
            elseif KEY:lower() == 'a' then
                CONTROL.L = -speedfly
            elseif KEY:lower() == 'd' then
                CONTROL.R = speedfly
            end
        end)
        Mouse.KeyUp:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            end
        end)
        fly()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("unfly") then
            flying = false
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("chat ") then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(CMDBAR.Text, 6)), "All")
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("spam ") then
            spamtext = (string.sub(CMDBAR.Text, 6))
            spamming = true
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unspam") then
            spamming = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("spamwait ") then
            spamdelay = (string.sub(CMDBAR.Text, 10))
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("pmspam ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                pmspammed = v.Name
                spammingpm = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpmspam") then
            spammingpm = false
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("cfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 9))) do
                v.Character["Left Leg"].Anchored = true
                v.Character["Left Arm"].Anchored = true
                v.Character["Right Leg"].Anchored = true
                v.Character["Right Arm"].Anchored = true
                v.Character.Torso.Anchored = true
                v.Character.Head.Anchored = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("uncfreeze ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 11))) do
                v.Character["Left Leg"].Anchored = false
                v.Character["Left Arm"].Anchored = false
                v.Character["Right Leg"].Anchored = false
                v.Character["Right Arm"].Anchored = false
                v.Character.Torso.Anchored = false
                v.Character.Head.Anchored = false
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unlockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = false
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = false
                        end
                    end
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Workspace unlocked. Use ;lockws to lock.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("lockws") then
            local a = game:GetService("Workspace"):getChildren()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Locked = true
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Locked = true
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("btools") then
            local Clone_T = Instance.new("HopperBin",lplayer.Backpack)
            Clone_T.BinType = "Clone"
            local Destruct = Instance.new("HopperBin",lplayer.Backpack)
            Destruct.BinType = "Hammer"
            local Hold_T = Instance.new("HopperBin",lplayer.Backpack)
            Hold_T.BinType = "Grab"
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("pstand") then
            lplayer.Character.Humanoid.PlatformStand = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unpstand") then
            lplayer.Character.Humanoid.PlatformStand = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhead") then
            lplayer.Character.Head.Mesh:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("sit") then
            lplayer.Character.Humanoid.Sit = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringobj ") then
            local function bringobjw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            obj.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            obj.CanCollide = false
            obj.Transparency = 0.7
            wait()
            obj.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            obj.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            while wait() do
                bringobjw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringObj";
            Text = "BringObj enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("wsvis ") then
            vis = (string.sub(CMDBAR.Text, 7))
            local a = game:GetService("Workspace"):GetDescendants()
            for i = 1, #a do
                if a[i].className == "Part" then
                    a[i].Transparency = vis
                elseif a[i].className == "Model" then
                    local r = a[i]:getChildren()
                    for i = 1, #r do
                        if r[i].className == "Part" then
                        r[i].Transparency = vis
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("hypertotal") then
            loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "HyperTotal GUI Loaded!";
            })
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
            CMDSFRAME.Visible = true
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blockhats") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("rmeshtool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("blocktool") then
            for i,v in pairs(lplayer.Character:GetChildren()) do
                if (v:IsA("Tool")) then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("spinner") then
            local p = Instance.new("RocketPropulsion")
            p.Parent = lplayer.Character.HumanoidRootPart
            p.Name = "Spinner"
            p.Target = lplayer.Character["Left Arm"]
            p:Fire()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spinner enabled";
            Text = "Type ;nospinner to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("nospinner") then
            lplayer.Character.HumanoidRootPart.Spinner:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reachd") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,60)
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("reach ") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    a.Name = "Reach"
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(0.5,0.5,(string.sub(CMDBAR.Text, 7)))
                    v.GripPos = Vector3.new(0,0,0)
                    lplayer.Character.Humanoid:UnequipTools()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach applied!";
            Text = "Applied to equipped sword. Use ;noreach to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("noreach") then
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
                if v:isA("Tool") then
                    v.Handle.Reach:Destroy()
                end
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Reach removed!";
            Text = "Removed reach from equipped sword.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("rkill ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7)))do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("tp me ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("cbring ") then
            if (string.sub(CMDBAR.Text, 8)) == "all" or (string.sub(CMDBAR.Text, 8)) == "All" or (string.sub(CMDBAR.Text, 8)) == "ALL" then
                cbringall = true
            else
                for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                    brplr = v.Name
                end
            end
            cbring = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncbring") then
            cbring = false
            cbringall = false
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("swap ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local NOWPLR = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                wait(0.6)
                tp(lplayer, game:GetService("Players")[v.Name])
                wait(0.4)
                lplayer.Character.HumanoidRootPart.CFrame = NOWPLR
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("glitch ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.3)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character["Left Arm"].CFrame
                wait(0.4)
                b = Instance.new("BodyForce")
                b.Parent = lplayer.Character.HumanoidRootPart
                b.Name = "Glitch"
                b.Force = Vector3.new(100000000,5000,0)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("unglitch") then
            lplayer.Character.HumanoidRootPart.Glitch:Destroy()
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,10000)
            b = Instance.new("BodyForce")
            b.Parent = lplayer.Character.HumanoidRootPart
            b.Name = "unGlitch"
            b.Force = Vector3.new(0,-5000000,0)
            wait(2)
            lplayer.Character.HumanoidRootPart.unGlitch:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("grespawn") then
            lplayer.Character.Humanoid.Health = 0
            wait(1)
            lplayer.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
            lplayer.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("explorer") then
            loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "DEX Explorer has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("anim ") then
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"..(string.sub(CMDBAR.Text, 6))
            local track = lplayer.Character.Humanoid:LoadAnimation(Anim)
            track:Play(.1, 1, 1)
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("animgui") then
            loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "Energize Animations GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("savepos") then
            saved = lplayer.Character.HumanoidRootPart.CFrame
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Position Saved";
            Text = "Use ;loadpos to return to saved position.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("loadpos") then
            lplayer.Character.HumanoidRootPart.CFrame = saved
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("bang ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                local Anim2 = Instance.new("Animation")
                Anim2.AnimationId = "rbxassetid://148840371"
                local track2 = lplayer.Character.Humanoid:LoadAnimation(Anim2)
                track2:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("unbang") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("bringmod ") then
            local function bringmodw()
            for i,obj in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if obj.Name == (string.sub(CMDBAR.Text, 10)) then
            for i,ch in pairs(obj:GetDescendants()) do
            if (ch:IsA("BasePart")) then
            ch.CFrame = lplayer.Character.HumanoidRootPart.CFrame
            ch.CanCollide = false
            ch.Transparency = 0.7
            wait()
            ch.CFrame = lplayer.Character["Left Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Right Leg"].CFrame
            wait()
            ch.CFrame = lplayer.Character["Head"].CFrame
            end
            end
            end
            end
            end
            while wait() do
                bringmodw()
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "BringMod";
            Text = "BringMod enabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("respawn") then
            local mod = Instance.new('Model', workspace) mod.Name = 're '..lplayer.Name
            local hum = Instance.new('Humanoid', mod)
            local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
            lplayer.Character = mod
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("shutdown") then
            game:GetService'RunService'.Stepped:Connect(function()
            pcall(function()
                for i,v in pairs(game:GetService'Players':GetPlayers()) do
                    if v.Character ~= nil and v.Character:FindFirstChild'Head' then
                        for _,x in pairs(v.Character.Head:GetChildren()) do
                            if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true) end
                        end
                    end
                end
            end)
            end)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Attempting Shutdown";
            Text = "Shutdown Attempt has begun.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("delobj ") then
            objtodel = (string.sub(CMDBAR.Text, 8))
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.Name == objtodel then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("getplrs") then
            for i,v in pairs(game:GetService("Players"):GetPlayers())do
                print(v)
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printed";
            Text = "Players have been printed to console. (F9)";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("deldecal") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
                if (v:IsA("Decal")) then
                    v:Destroy()
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 10) == ("opfinality") then
            loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!";
            Text = "OpFinality GUI has loaded.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("remotes") then
            remotes = true
            added = true
            game.DescendantAdded:connect(function(rmt)
            if added == true then
            if remotes == true then
            if rmt:IsA("RemoteEvent") then
            print("A RemoteEvent was added!")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent")
            print(" game." .. rmt:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end end
            end)
            game.DescendantAdded:connect(function(rmtfnctn)
            if added == true then
            if remotes == true then
            if rmtfnctn:IsA("RemoteFunction") then
            warn("A RemoteFunction was added!")
            warn(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction")
            print(" game." .. rmtfnctn:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bndfnctn)
            if added == true then
            if binds == true then
            if bndfnctn:IsA("BindableFunction") then
            print("A BindableFunction was added!")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction")
            print(" game." .. bndfnctn:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end end
            end)
           
            game.DescendantAdded:connect(function(bnd)
            if added == true then
            if binds == true then
            if bnd:IsA("BindableEvent") then
            warn("A BindableEvent was added!")
            warn(" game." .. bnd:GetFullName() .. " | BindableEvent")
            print(" game." .. bnd:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end end
            end)
           
           
            if binds == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableFunction") then
            print(" game." .. v:GetFullName() .. " | BindableFunction")
            print(" game." .. v:GetFullName() .. " | BindableFunction", 239, 247, 4, true)
            end end
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("BindableEvent") then
            warn(" game." .. v:GetFullName() .. " | BindableEvent")
            print(" game." .. v:GetFullName() .. " | BindableEvent", 13, 193, 22, true)
            end end
            else
            print("Off")
            end
            if remotes == true then
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteFunction") then
            warn(" game." .. v:GetFullName() .. " | RemoteFunction")
            print(" game." .. v:GetFullName() .. " | RemoteFunction", 5, 102, 198, true)
            end end
            wait()
            for i,v in pairs(game:GetDescendants()) do
            if v:IsA("RemoteEvent") then
            print(" game." .. v:GetFullName() .. " | RemoteEvent")
            print(" game." .. v:GetFullName() .. " | RemoteEvent", 247, 0, 0, true)
            end end
            else
            print("Off")
            end
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes";
            Text = "Type ;noremotes to disable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noremotes") then
            remotes = false
            added = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Printing Remotes Disabled";
            Text = "Type ;remotes to enable.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("tpdefault") then
            spin = false
            followed = false
            traill = false
            noclip = false
            annoying = false
            hwalk = false
            cbringing = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("stopsit") then
            stopsitting = true
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("gosit") then
            stopsitting = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("version") then
            print(adminversion)
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Version";
            Text = adminversion;
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("clicktp") then
            clickgoto = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Press E to teleport to mouse position";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("noclicktp") then
            clickgoto = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Click TP";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("toolson") then
            gettingtools = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Enabled";
            Text = "Automatically colleting tools dropped.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("toolsoff") then
            gettingtools = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Tools Disabled";
            Text = "Click TP has been disabled.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("delcmdbar") then
            ScreenGui:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 5) == ("reset") then
            lplayer.Character.Head:Destroy()
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("state ") then
            statechosen = string.sub(CMDBAR.Text, 7)
            changingstate = true
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("gravity ") then
            game:GetService("Workspace").Gravity = string.sub(CMDBAR.Text, 9)
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprhats") then
        removingmeshhats = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprhats") then
            removingmeshhats = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("looprtool") then
            removingmeshtool = true
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("unlooprtool") then
            removingmeshtool = false
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("givetool ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Tool") then
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 10))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == ("age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account Age: "..player.AccountAge.." days!", "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 4))) do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.Name.." Account ID: "..player.UserId, "All")
            end
        end
        if string.sub(CMDBAR.Text, 1, 5) == (".age ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.AccountAge.." Days";
                Text = "Account age of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 4) == (".id ") then
            for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 5))) do
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = player.UserId.." ID";
                Text = "Account ID of "..player.Name;
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("gameid") then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Game ID";
            Text = "Game ID: ".. game.GameId;
            })
        end
        if string.sub(CMDBAR.Text, 1, 3) == ("pgs") then
            local pgscheck = game:GetService("Workspace"):PGSIsEnabled()
            if pgscheck == true then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Enabled!";
                })
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "PGSPhysicsSolverEnabled";
                Text = "PGS is Disabled!";
                })
            end
        end
        if string.sub(CMDBAR.Text, 1, 11) == ("removeinvis") then
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Part") then
                    if v.Transparency == 1 then
                        if v.Name ~= "HumanoidRootPart" then
                            v:Destroy()
                        end
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("removefog") then
            game:GetService("Lighting").FogStart = 0
            game:GetService("Lighting").FogEnd = 9999999999999
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("disable") then
            lplayer.Character.Humanoid.Parent = lplayer
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("enable") then
            lplayer.Humanoid.Parent = lplayer.Character
        end
        if string.sub(CMDBAR.Text, 1, 13) == ("givealltools ") then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
                if v:IsA("Tool") then
                    v.Parent = lplayer.Character
                    wait()
                    for i,player in pairs(GetPlayer(string.sub(CMDBAR.Text, 14))) do
                        v.Parent = player.Character
                    end
                end
            end
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("flyspeed ") then
            speedfly = string.sub(CMDBAR.Text, 10)
            wait()
            change()
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("carpet ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 8))) do
                local Anim3 = Instance.new("Animation")
                Anim3.AnimationId = "rbxassetid://282574440"
                local track3 = lplayer.Character.Humanoid:LoadAnimation(Anim3)
                track3:Play(.1, 1, 1)
                bplrr = v.Name
                banpl = true
            end
        end
        if string.sub(CMDBAR.Text, 1, 8) == ("uncarpet") then
            banpl = false
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("stare ") then
            for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
                staring = true
                stareplr = v
            end
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstare") then
            staring = false
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("logchat") then
            chatlogs = true
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat enabled";
            Text = "Now logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 9) == ("unlogchat") then
            chatlogs = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "LogChat disabled";
            Text = "Stopped logging all player chat.";
            })
        end
        if string.sub(CMDBAR.Text, 1, 6) == ("fixcam") then
            game:GetService("Workspace").CurrentCamera:Destroy()
            wait(0.1)
            game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character.Humanoid
            game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
            lplayer.CameraMinZoomDistance = 0.5
            lplayer.CameraMaxZoomDistance = 400
            lplayer.CameraMode = "Classic"
        end
        if string.sub(CMDBAR.Text, 1, 7) == ("unstate") then
            changingstate = false
        end
        CMDBAR.Text = ""
    end
end)
 
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loaded successfully!";
    Text = "Reviz Admin V2 by illremember";
})
wait(0.1)
print("Reviz Admin V2 loaded!")
if game:GetService("Workspace").FilteringEnabled == true then
    warn("FE is Enabled (Filtering Enabled)")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Enabled";
        Text = "Filtering Enabled. Enjoy using Reviz Admin!";
    })
else
    warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Disabled";
        Text = "Filtering Disabled. Consider using a different admin script.";
    })
end
 
local intro = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
intro.Parent = game:GetService("CoreGui")
Frame.Parent = intro
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.Size = UDim2.new(1, 0, 0, 300)
Frame.Position = UDim2.new(0, 0, -0.4, 0)
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=1542162618"
Frame:TweenPosition(UDim2.new(0, 0, 0.2, 0), "Out", "Elastic", 3)
wait(3.01)
Frame:TweenPosition(UDim2.new(0, 0, 1.5, 0), "Out", "Elastic", 5)
wait(5.01)
intro:Destroy()
end)

Food.Name = "Food"
Food.Parent = ShopFrame
Food.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Food.BackgroundTransparency = 0.500
Food.Position = UDim2.new(0.578512371, 0, 0.299145311, 0)
Food.Size = UDim2.new(0, 181, 0, 43)
Food.Font = Enum.Font.GothamBlack
Food.Text = "Food Buyer"
Food.TextColor3 = Color3.fromRGB(0, 0, 0)
Food.TextSize = 14.000
Food.MouseButton1Down:connect(function()
-- This file was generated using Luraph Obfuscator v11.8.1 by memcorrupt.

local IlIIiIIllIIillll1l1 = {} for lIllliI1IiI1Iili11l1l = 0, 255 do local lIlIIl1I1i11iii11Il1I, l1iiiiili1l1IliiIl1 = string.char(lIllliI1IiI1Iili11l1l), string.char(lIllliI1IiI1Iili11l1l, 0) IlIIiIIllIIillll1l1[l1iiiiili1l1IliiIl1] = lIlIIl1I1i11iii11Il1I end local l1iiii1llli1IlIiIl1 = function(lIlli111il1IliII1I1ll, ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI) if III11iiI1Ii1l1liili >= 256 then III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI = 0, lliI1ii1lI1l1lIIIiI + 1 if lliI1ii1lI1l1lIIIiI >= 256 then ili1ll1lll1iiilIlli = {} lliI1ii1lI1l1lIIIiI = 1 end end ili1ll1lll1iiilIlli[string.char(III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI)] = lIlli111il1IliII1I1ll III11iiI1Ii1l1liili = III11iiI1Ii1l1liili + 1 return ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI end local function lII11ill1lIIiillI1I(lIl11lIl1I11IiilI1lil) local IllIIIIlil1iIlIiII1 = #lIl11lIl1I11IiilI1lil local ili1ll1lll1iiilIlli = {} local III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI = 0, 1 local iili1IilIil111lIill = {} local il1lIlI11iliI1il1i1 = 1 local liII1ililliiili11ll = string.sub(lIl11lIl1I11IiilI1lil, 1, 2) iili1IilIil111lIill[il1lIlI11iliI1il1i1] = IlIIiIIllIIillll1l1[liII1ililliiili11ll] or ili1ll1lll1iiilIlli[liII1ililliiili11ll] il1lIlI11iliI1il1i1 = il1lIlI11iliI1il1i1 + 1 for lIllliI1IiI1Iili11l1l = 3, IllIIIIlil1iIlIiII1, 2 do local II1Il1li1I1IilII1li = string.sub(lIl11lIl1I11IiilI1lil, lIllliI1IiI1Iili11l1l, lIllliI1IiI1Iili11l1l + 1) local lIlIil1l1i1ii1lli1l1I = IlIIiIIllIIillll1l1[liII1ililliiili11ll] or ili1ll1lll1iiilIlli[liII1ililliiili11ll] local lIIll111li1lii1111I = IlIIiIIllIIillll1l1[II1Il1li1I1IilII1li] or ili1ll1lll1iiilIlli[II1Il1li1I1IilII1li] if lIIll111li1lii1111I then iili1IilIil111lIill[il1lIlI11iliI1il1i1] = lIIll111li1lii1111I il1lIlI11iliI1il1i1 = il1lIlI11iliI1il1i1 + 1 ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI = l1iiii1llli1IlIiIl1(lIlIil1l1i1ii1lli1l1I .. string.sub(lIIll111li1lii1111I, 1, 1), ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI) else local l1lliiIIIiI11il11ll = lIlIil1l1i1ii1lli1l1I .. string.sub(lIlIil1l1i1ii1lli1l1I, 1, 1) iili1IilIil111lIill[il1lIlI11iliI1il1i1] = l1lliiIIIiI11il11ll il1lIlI11iliI1il1i1 = il1lIlI11iliI1il1i1 + 1 ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI = l1iiii1llli1IlIiIl1(l1lliiIIIiI11il11ll, ili1ll1lll1iiilIlli, III11iiI1Ii1l1liili, lliI1ii1lI1l1lIIIiI) end liII1ililliiili11ll = II1Il1li1I1IilII1li end return table.concat(iili1IilIil111lIill) end local Illilli1ililil1Illi = function(lIl11lIl1I11IiilI1lil) return ({ lIl11lIl1I11IiilI1lil:sub(5):gsub("..", function(II1lIlIIilliiiliiIl) return string.char(tonumber(II1lIlIIilliiiliiIl, 16)) end) })[1] end if type(loadstring) ~= "function" then error("Your Lua environment does not support loadstring, therefore you are unable to use the Luraph VM compression feature.") end loadstring(lII11ill1lIIiillI1I(Illilli1ililil1Illi("LPH|6C006F00630061006C002000490069006900060169006C00080149003100310069000F0131000D01490020003D00200061007300730065007200740020000001020104016C004900220108016C0031006C0022010E01490006010E012201140116011A016C00650063001D011F0103012000070106010B012D01120127012A01230169001501200074006F006E0075006D0062001B011E01010137012B0128010F010701280110010B010B0107013100420175006E007000610063006B004B0120011E0123013D010F0126011301120110010A01060142017000200121014C0104014E01250165012B011201220128010D0142011A017400660065006E0076005F0137013B0106010D0153010A010A01270186017901650074006D008B01610074006100620032018001210123016201230126013901620155012601420174007900700065009401610154010E0150016401390112014E01420167008B017C017E01A30129012B0110012D01090140010D0157011601440173007400720069006E006700B101550162012A0107010A015201280142011B0172006F007200A30168013F01080110012B014E0176017901BD01BF0167002E00730075006200A3014001C70164014E01D40127012201D701BE01C0012E00620079007400A201360195012401E001C701980128015501B9012000BC01E801DA01630068006100CE01EF010501640127010D016501540174011001E701D9012E00720065007000C2018801C70187019801E2012F01F801D801E9016700DC01DE010002260106023901770186010901410130011702DA016D008F01FC01B1016201C7014F01E2010F0198010802160123007B0035003000330037007D00DF017201B301B80183015601070142017B0039021C020E01250196014F013B0139012302200057010002660059013401690045010501C6012401650111013D01250128007601A60107024502C60151010A012C00540288010302D20167023B016C002900DF010402560299014E013D019D015C023F015802600261020401160148025101A5011302690149002800D001AA01D201AA01D50123015B02C401AA01750276025401630235002900630222002E002E00220063024F026E005102450128003D020402E50176010B019B016B026900660005019C0199012E012E016D027F029B023E01F50130029B01630232006B023D00160137005701740068007D010501A902E1010C0157029D0116014A023B013E019C02AA010B01800258023C02D301D40177016C009A0274021D02CC029F021D0263023100D40229006B020C027400750072006E00200022002200200065006C001A01B10161028801C401560183011502760183015501F301F501520110018002D201C202BE023F01C602AB02D0029E0225012701D4023600D7023801A302740120024F01BD027102B602B802DD021C0297017002690187012D022301420184011D029C0240012E0111015B02E602D2025F0267012B01630203036E022F0297013E016B0220033A016F022303BF0220006E000A012000D902DB020A030C032B025602E5012A010401E202E4022F03DC021E011A03FC02A701EA02E1026E006400410343037D0164006B024E025002740052020A03E90224010801A801CA027F0248036F01A401E5017B0268019F0211010B011203A5021402A802E5017F0273028902B401760286016C00630226012F02EC027A025001060169034502470213024902D201480371036C031D026801D20142016A0346029E0265024A0220002B004C022E038B0130035603F1025201A801840188014403A301960298023103F5015B037A0399012A010F012800540360015C02890349025A03850169033D03E802D3010C0169033203A6023A0135037501A603F1019303A9039F02C4015D037B025F03E401770187026A0364035F0260028C021E017703470279036E03690070036B03BF0380037B03830333007603C4037F0374036A017902BE03CC037A036A01830334008503DA023B03EC02720165010F03060357012A004C0236003700E20332003100360082035603CB02E2010F036A031103DF033600350035003300E60383039C018501A3031D031401DF0332003500F3038803A5025903500385018E03490397024B035302C8018301670199011102F2026901A6010302AD0213032601A1032203710367014A020D01AC0365025A03770117044001A102A3029C03F60361031E045C03B702B9020002F402E7020104BE0207011A0413018701D0011D027501F70130006302300020006600CD013C03B4019B02EE021403EB02680174012F021704D2011904880323041D04B6015C0364006F003801AF034604020204024002C0025004090412021002E703320020005E00E8030A0411015301C3029D01DF0308045003A90358030D042901A6019E021703E101A1033D04F7025502030249004803230367045B036204F7015C0230049603610405025701830357014603D60387032A049F022C04710240023803EE015503B301820165023A01090415025B045D041903150444042202090420002D004C02D80286033B038E04D30190040E03130120003C00C0026A04B501110464019D01250020009A023A01A2048201A4041201E703A10489040A0492046B026100420384033B04380483048304040491034F0455025201130117039F0299032A02D00258038B0394036F0469023E03E9020C017C03F40194035001960359029903AC030503C603DA048401CB04A202FE03CE0421029403150116013804BC044303F503E7027D03A4032B01E804200038042704DD023A03DD02C004BD04F704AF042D005B0464041E027C04D904F60119038601EE041C03EA0263023300B102E70331006B02FA035C04AF0465040105680431000405D204F70308052000E40309050D059B044C0230003200C9032000DF0328005B0200055F0414051605F603EF04F803D402B00230000E05200034003200390034003900E1033405FD039C03FF03CF0485016B022F0032053502330035003900370532003700370230003605FD031D05C2045503900306043103F0042C0106023C01CD0250034F01B3016004A6010C019A0381018C03130198018E045A034102A402B3037E026003B60363035E025001BB036202BD03CB037303D203C20370057E037205C103E70322054302D00377058103CF0371056D038103D403CC043D01D401B1042002B3014B027B002B036F052C0368038C058F058E0563029205900593058D052D0339023A04FF01560163017101510173044201D5022000380020004D045E0486056703F10109015B00F6019D05F20140045D007C03270567040C04150558057301D001B40122036F049703C50272042E016B024E059B033F0184019F051102D6011601DF0239043B04AD053E04BF05F1041601A205D503A605290456048804530474057B04280578047F0442013604F304CB05FF0196013303880440041502A205A405D4058D04E30557035804D404B205B404B405F10215052901A204850227035003AC059C05CE059F052E015D00AC030D039F033304A8022004A705D401A905EA020701AC05E305A602E50573044900B105B3028403F504BA02C9049C015902A4031203EC05890318066701F2045701EB04E0053B048204BD0486045104580455014201260657042D04410183039404A7053104DC0534042305150620039F05C5051E06DA0577047E0434067902760432063D0662010C050304C4056D05A602060278027005E4017204C705110392024B060702C60508046C002E00FC01FE018002D605130389046900C105BD040B03CD0411023D058801D1042B050705A503E8030106AF03EC038F05D903D7045604B1031601E0010503A702B50322015B0246064D0654062E0532059E04D7039203ED025905DC037002DE03E003E2033700E4033A05A703EA03D00236033506EF03F1033A05A2032C054003FA03FC03E7033B05E5049F038D03C205370150054C03A40131048501D9047101C602B70582025B0571037404CC047A032F025805530109014A066C04D804C60597036900CB047D03720381057B037F057605BB06D303A106A70151046902B10684056105A1048805090165059405CC0697059105CE069605CF0604019905CC05FB057104FD05D0054C026302E9054E043B0607065401AA050A06CD05D7060F032B0111061E01B305A206F305590635035A058102BB053C04BD059E05E506AB069D0621017906530649064201CA059A05F106AE053F04A005D105AC03AD06C306B0065101A505DD0655032B06D70510022F04DB0542062A03DF053804FD06EC02E4055B06E605A105DB0608076C02160638063F034B0212052805B5059A025E0368057606620388026C056603BC03B9067803C6036A019C04760104070904C4060707F403D606BE05D80614019C040D05000616070202E6050506DE06C806E10669000B06A7023D050306D4011106D1054301090336066D021E07EF0572061B0617063906CE034D072106380423068E030B075B06D8052A065A06520459042F0610053B064106AC023406DF03E3015107EE05190667077D04690743063F0657023C0672079D018104450684024706AC046901B206F8063104540620005006EC035206810749065606FD017200590683060C0755015E064303FB048507C50587077E0703045503220403025D02960170047C034E03B60151038402B8069807D9047E073F04AE039E07D3014F031303E9022B01A30760019F06530283020F042E01C6010706B7065E059501B006B5073E01E60415028B055B0036002005E103E706420263025B00320030004A053600C5077D00C70739003700360034003000CD07C70731003602B5023900CD07200043029F07A90186015203B806D704A306B506DB047504BB075A050D061301C107FB03F003E706F6019C072C04AD075303A401DE047403E004980375049303E4073206E607C20100040C0187059A047407F6079503C802F907E105FE06FC05F406D60448062D020E047201100169039E039A01020850031B0724011004E907CF0449005B00D007D207D407FA0570043907F406EF07E307DF040708B8070304DE07F207E107FA070508D9042908B8062C08AC072E08F5079603F7073208E7071A0854051C085B003800D707D407A9077501A007E007A2073B0815076104BE075B00370035003400F203EF073408A107D4013308AA074508F007AE07B907E8060008DF06B4040D083008E507E1046B0214073807F30640040D08AC040F08F5053002A2058A03E0075D08F1015701D4055405E3054A085A031D08C907CB075D002208F206AF05A0053107330393032E0211083100E706B3076B04890501080701CB04C2042708390870042A08F007AB0753085908FF075103700803083708B406FD0762081E05280033021A054D083600D40234003800D40220053200630239004008B00231003900B002C207A6082000AB083300D40238000A050905B40863023400370030003500B9083705090532003400A205320032003800AF082000F003C4086302B108C508AB083700D402C70834008D024805BF082000C2073300B5081A05BC08D10832053700BC08CD0836003100DB08FC033500A90820003702C408DC070C05DA08360039001D05640823086608010756032C027D036B088A0313085C08C8069A04EA059B033002C6011B04C505200241024302980762051402AA071D036501D604530585016A041D02780677020109F70812012F0860020309020506015B003100BD08E408EF07E9060B04EB069E0213035A059701FC02490063023302F20338003200CE072000A008AE083000A308E0034F08CD0839003405BB08B708B20833003000AB08CD08D107D7088906DF05EE08350935004D08E8083600C608BB083602A2054405D007CD0838003800D708FC03E1031C053100B208D3073605B00238003700C9084F08D207DC0718090209C4061B0946074B09BE0842087902220902055601B703F505BC07280997012B097B0043052E093009A008D307F203D508C5085F09C908EA08DF0535004008DB0836005E09350931003405DF05C207B502DB06360033006309F507190966097B021C09D7073900330089092109F105EA06030525090A093404ED0212017509E90835053509C708DE083100CC081A054809A205F203DA08D402AE08DE0834053300D408E9088909DB08C7084809BB0834003500570179098B055E09B2083502BD09B6085309A4083502B002C909320538050905E708C809B208C608F1030905E2034509D5098D02C808DE0837025E09B00239003602B008BE08C20888068D02BE09D708E40899099109FB026509B0066709C807E008E7089B097108F2059E0909097E020B09A2092A0931097B00D7073400C0093205E8083605E008BC09B9093200EF08D5088F093B09FB035D09D107B608D707C2083502E9091509A306F505F301680937053300DA07F005F2099D096F099F09F609A1092909A4090E01060ACA08C209B6087C09DC08C208C709E90837003800DF05D7070C0ACA0820053D094705DF05C9074008DC07A409C408DC09D8084F08C9088F091E09D4024809D609180AD2080E01D40298094A099709090530005909FE024E08B908D2078D023F09DA09E5038B091E09B309E408B6094405500AD8085F09DE08D2074305110AF10256019409150A3F08E7084D08F10992041C0AF2021E0A7209DB037409FA093D0AD3091A05050AB309C608AE09CB08D2084A054109AA09A7083E09E4093F098D02F008D205DE095B0A0E0185099909DB085E09DB08DA08AB094809E60936008609CD083F09DB08BC085709B3084D0AD5082B0AD107C508910AA4083800E6033902D403A409F1039B0ACA08B5094309C308AE09C7083F0AEF08A205930AE5030D0AC309E308000A39005D0A3702BD084D09810A2C0AC708BB087F0AA1083C0AC207CB09B509DE09BB08B509E8084805C50830003800B6093300400888093100BE098D023305E808D30A4D08EC08830339006409650AEC09950946078909C608A20A6B0A66046D0AF405F509700A0C09A309FA09EF08CA07FE09D00A080ACC09AC08250A4D08E409BB09250A51094C02C9074A09D1072F0ADF09FF09990909053B0AD508CB09050AD307DD097D0A1A050E01C3095F095A092E09C908410835098F09C308630AEE02130A040924015B003E094D0A3400E50A130523076F0A2709710A6501A409D007B10AAA0955092105B9098F09920ABD0AE308A508030B350933055409B1092F0BC207AE093409B6093605FA0A34054405DB06310B32054505130BBD08DA092E097E09C70A320A4D0A390A730A240AD207A709340BD50AB808D8082105000A2E0AB609FC09B208B809B10A9909C908E7081B05E908050A420AFC030905380BB109C509CA08A70A0905A20ABB08BD08A709D707970A990A9909640B540BC10A5B095B04A40A7D066101E8073D084B08C207770A7B08E3062408B0055F089309DF0A150A03048E080608900855084408DF075808F407B306FC07F80791085208460854085A086E08C301FD081708040838088B0BB606CB049C049F088B05050AC1084C023909CF0A3400930AB608080B4C0283094509AA095B0AF0088B094008B2082E0ADE083605B509BB08EF08D7081C0BB609A20AA2055909A70B860937095E0ACC0A2005DB06410A4C021C0BCD080A05BE0B5909E808F103D503790BE709EF08DC0A0908820BF4082E016808160983086C08FB0897089C0B7801FF0881017501AB074F03C405BF07070900097B040503060317064308F107350847080103A4019701EF0B7002F10B1206A0084305620B32051E09B6092105B708C208FA0A3702E408D4020A05D205470A320AE808B509280AD30AB30AA509520AD8084D0A0E0CB70845093E093B0B350BD808F008DB08AE08C908E403C308DD09940AE908A408180ADA0AA80B4E072804E70B4B040901EA0B1D09B708C20786082202F5016604C90408018C08250621044702E70B6E039B019F05F2047A09D107CF0AAD09DD095C09B308AE08BB08F008210CC309AA094F09D807CD08030CCA09D2058F0980094505DE083502D70A99098B09C9075E0B2E09360AE4030D0B39096B0BC90B150CC808CE09E403290C34052B0C0A032D0C1F022F0C84021D085909F2036B09F106F30B9408F4078304E3046C033E0C9A0179038701420CA50B830935093702450A1A058F098209930A450C250C3702D7083305480C44052F0B48055A0BB209650BB80A4109830AD808FC098D020A05850C2D0AB909D307BE0BAE0A4B0C490BDE095A09E5034E0C050A290CD30A6D0CBD036205700CFB05D401310C750C340CC6047708380CF407830367022C02370C0303390C9007F60B7D0C7D02F00B410CFC0B8B059909EF03C00A3000780A350946058D028B0C5D09F80A8806970AF2035B0ABE081F0C200580094E084A09CC0CC508C808BE0BF203A205B502000AD307360A39098E0A3400E1084C023E0A030BC50ACA07290C620914060502E80B710C8605B40C330C4201A008F103BF0AEC0C4305B002BD08970A89098809CD0A000AE1038509C4084709730B0D0A4D094E0A320A980CEC0C500B120CE4080F0B4505840A2B0AE3080C0CEF03FF0C610B8909AA08680BDA08CE0A290CE203180A3500820CA90AFD0CAA091C0D350A020DFF0BD7072E09BC0B4805CD08090D9D0CD30A0C0D32054D0AC3093F09E609AB0BB002340DCC0B150D5E0BAB08B208190DB10AF103A30C1E0DB308200DD00AD40BE703240DB80A5D073C0CEE0B0B04FA0BC60C32028B05A20C0E0C750A0A05F40A1E090A0B5F0B5A09E708E609870AB608E308D508640C690B5A09D00AD90C680C2000BD08B50A2B0A920CD70AC207210CBD0A4809300DF30ADF054D083804790B3900AE0CF40C2E0CB20C2B01F80C760C32070B04DF04A506B7069907A904E3017004C10C7C0C3D0CC40C550D810CC70CCA08050A360A7B0AA108120C9809E508080C3205D00A9D0C2D0A330D870C690ACF0A6D0DEE0A450CE309540B410BA8095E0B3409170C990A44050E0AA108CA07AD08EB0C21054709F008CF0AB80A7C0D0C059706F30C6F0C4602820D730C320C760C320944054509C6088B09CC0CDF052B0A010C580B3E09B10A2D0AA7096E0B000D870CAC0A2F059E0DD209440DD30AB30BF80AFC03C40B53090E0CE20AD00CAB09D00A83094D09E008F10C53098309270DBE091C0CC907C60BD30A980941093F0B1A05D10DAA083409310D590CCD0A330B9809360AEF08970A000BE708660D9F0D8809D307B50A310AC408CB0B4E08FA0AEF033D0D0B0BBB0B960D050E3502F008290C4405C207D5037B0C520DF80B540D400C940D570D4C0253098509DE09D70A88063F0A3505A9094F088F0CAA0D8909B50D690B4009E908EF037E09240AC409C3090A056009930A5A0B180DA60BCA094A09DA08B70A3305D40248051F0C4505AE093C0B090537023F0A5F09780B5A04AA097F0DC10DF107300C740CF90C7902960B900BCB04F4038A0B31088C0B6B02BB0C350CC704440853047A0C3B0CF70BF40C3F0C800CBF02210EC90CD20B3505B6093705570C130DE5038C0C43094405260E1C0D5909C10ABE09A00DE003E8084505750DF80AAA09490B21055B0DEF03B70A4C09E908CE0A8E0AE5033F0AC10B650D580BEF03C90898096B0C6C0CC00DB00CC20D3D04B30C540E760CBC0C360CC804BF0C640E4303900D530D680E10026A0E730AD307490BD00AE808FB03680BD707DA0D2D0AAE092E091F0CD207D109DE09850C8E0C4B0C1C0DA80DC208120E180E3F0A2D09950AF003CD08F003BE0B4A054309F008D109D70B1F0DFD0ACE0D180ABD0D8104BD09500E970E520E720C840D510856088F0BF307590E9A08930B3A08E7039D0E610E1B06C00C890B7C0B760866041D09D807AE08810B65087E08DC0B80080E08F80884016C08EF07510EE90B720C2B08D90E2D08F50B92077408BC07EA07B504F60639044A03A0068A08B906B104EE048702E60EBD0777081F03180B6702B106530170039C05F702C30297015A0828096D05C50257032301A603D2035A03EE0473071F0563023700DF0154013F022901190811020E093C08E70EEB077F0BC407C606FC029F053503C8019E071D039403A501270F2800C60720008B055F005F00BF016400650078004201B1076E008702D101B80166044B0F6D06B701FA0B6F063F021D0544027B077A06FA063F060B0F000F730CEA0EDA07470701081403AE03520FB105E3048102C902720CCC02B7031D0EA50E17067806550FF9067E07D70E8F02DA069D04F20422007300E0021406FB04C0079B0E8608C8023E02670F76016D0F4C066F0F7601D70E09056B0239028304920780074806960783047D005A08310471012C01C604110142014008F00C1C020E044B0F7A0366032C0F49080C0FE80E7908AB0BB1050002E3057203EA02ED064A069B0ECF015D02B201BE05400C9F0F7508A10FEB074D086109A50F0809B8032D01AF06B6077701970F690A260DA60FC705480275075805B20FFF0E3E081F08D307B80F60019A01BD0240015C05B10442014705BD095B04C30451053C03AE0242045F028A03280092022E00180F8C0338063C022003DE05CF012709CE0FF30E6A046505D5014706D204EE0215053D0F6D08FE0E1B087E0BED0735005D00880FCC041403B5017F0FB803E705CF01A702050396016B03290616014202CF01CA024902C20669080609CC048908C202B106B507AB0F3A020309100F1A030D0887011C036F088402CD02990B4502AF0F9B01A502BF0783075006EC0B370101046C071E0288015C033202F20E85056106BE0F3C07D90BED0E0007DC0BE904630229100C060E032C104101A6057C0C3510CF0514013C003801AE0F6601930F7903AE0C0C01A4034B10EA0FB8017C08FF064210F50E2E02C804ED05770150100B0867088104B105C1045F064F05040FB20767020A04B50604027F02DF0F990B8B060E038D0675010D08A2091D04A806730428002200230094022510E00F2A024A0F160443042D0307107610EC08FD0E730133036B063603A603791098044D0F9707CD0FBD077E04640A0204210E610A020C8806E609880EAA090A0E39095E0B300A520CB90A620CD90D130B20058F0C180A500BAE0BE203D1094405C309A20A2C0ECE0DAD0EAD08F80A4C0D3F0AC6089009D50B5C0CBE0984059703B5078605A80214011C029E0E6005BA05AA07CB066F05470F8702A8052D016E02A40313086F0CB801B80393031404EA031B0FC2066A02AD0FED04D102DA0FD604C410610362061C09D40FF009AC06AC02460261052102B20686052C01D8108A039609C608C708CC071E054A088C10170B8D0329047506AC022C0127032701D6100706C510F80567011B0BCA07AA09CC0F5F0543047704FB0278013F06D7100403B3041D09E810E40A8405E1018A02560811030411F710E5100711EF08560CB105F2087D083610D9062607F210A40348022B094B101E0457040410720809079B03B9058201D00F47066D10350C3D0495093A01090885025C056A03AD056F05270FB2045510E3103801DD026E00440F7400391002106F02F9085501D1061B07FD06A706EE065802F006FB02710AF80B750169013A112B033D11A103F0079A0732031E0390051B07640FE80F4D10C4030E01F2044B11F8037F041603730CB10521066011EA0262110602C8074C070A08E40667081406E3046E006F001D01AD070B10520F2C02FA0560042811C2025502B10570110A10B9052711280179110004BE05BA036C00340CF310E90F5D11310058106E117304A50F7508E602170477012F11740710102D11F3012F117907C204970B55118110830D4711940F49110C01C507751181117A1128011404851171018711890FBD045D104503B0114203D10695026010480FB910E4100611C710E806C9103C01C51013043C032010F310F7030A0168100011320602117A04E310B401BB11FA10E20AE910FE10F0017E04DF108202D202F6105A051211A4030811E30AEA109C04EC10AC028D10EF100A07A60E53012509C7042007CC11F810D9104607DB103200D2113801F11014031D111D02D811BA11C610FA101C0BFD100B110F08BA03620EE2100511F8111C091411180A630F5B113C028C115B001B11F3110A041D02E70623002011B60122116A040A12E5116103D102D2015C10B411030F05044C03C3101111CE116F03BD11B00CCA106B044F01CD103C108406280F3910551106073404A003F70BDE0AC3019E032F02681048064502FE110C06F611CD110212160A15110110E3011C110D12F5101011D91121124607FA111E0BD2101A03E71187043B12EB11E610ED11EF09EF112A02C8113808AE02CB110112F910E710DD11F0113207DE10EC05A1040F1161015A12EC11DC11D111EB108B10E111EE105C03640F1612D410E81120003E00AC09260D70116F124D12BC06E803330F1A10C40F0A011512D31078123007AC09CC075B00A70F4908200375015C10E302A2018501050570124E1255048A115C1146020E017F124C126205E8111A12A20E520DAC0438121A0F3A127312ED077F0D81089E1202093A127407EB0A340F7D126C0047079D120D11FF111E05FB03841286127508881223018A12E4025C020C1165039F07631211128B1194128D11BA12FD119F12A7029A12F60B8D12690281122302A812BB123912A70220007E0016018002F211660243120401D212F3046B02F30C7303CA10660FFF0F5F089A0773048302E0129C11B3116400B5111C1291031F1246123D12C8102412BF119D02530FB90FD4116112B1046312B9113C125B12E10A0911DE114510870DFA02860BFC117D03CF12AB014512F711FB12C107170A190A2904771298129012641220123D12EE09D50F5E12E401DB05CA114F12DA11CF11FD12F0110B12D612F4100012121309134912630FA302C912E6110F137B03A112F0034A100E131812CE037A122B027C12CD04AC1228131712021141019C04B2127B08B412B7106D028912E1028B12FF12971230134B02BF129312231196128E12CB12C712A30EAE12BC120E1104012C1375124F07C3120413C512061332132309C5105703AC125713A512BD1204013B13FC033D13A80287124013B7124213B912A412AF12A7124F0492120812C112AD12CE1259136A137B0C071213124F101F13190821137B0837138F121912DD0BC412A612D0124603B6111D129902F9125012B304EF128805F112CC10C211CE102A125903C7113D02C91158121A13471267120A11600650130513F812EA111B1303120B1316136902210FE010D7110713FA126612D0110A11DF116A120113EB09401204100C1221139A13131325134B124C132A1331138B13A31352121513C8122F133913721274122E138012BD13E911240B3108350F54014B13CA12CA13B112651385126713B512691388116B138C12C413D51091124C1072134A1380134D13510DF60884136213C613A212DC1237126E13D012A812A209AA1235137413E6135213D313B312D6133F13AA0FB812EE016D135113B012DE132111291014126013EC134E014E13791301147B13D5127D13E101D913C002DC1371125D040314FD133A1287139505EA125105EC120813EC118E1371083E01C0116D0865037D13C511D1109E13751385135A13BF139B1304120C13E411C9134613B8130913EE111E130A148A11480230146612BA130B0356125B039913AB138C13DB11AE13EA106006F512170362122213ED1209134114B105B01300139D0202134813E01314127C1335140E127C03A7019B07330470021D08E213CA139A12E9129405C2102914EE1223128F131E14F212910F3414F4114412111348143814FC104A123A1497135712610E371451129C134214B90F9F13761347141A1476142B14A613441474014614751407114A1469124D14360CB3130D132E14C5133E14C0131413DC106E128C14D5105413C81345138D145B13CD13AB12D01329132F146413F613CB02D713F913DA134413BC132F14FF131212081495125C1446134E139C122614E7139514EA137A142714A113CC13F0135E13F2135813B514631383126613A114F8135905D9138B04E513BB14E713A814C0124A131214A013C314250607144E10AB146914D7127D0F93147112F00EB414E7131514CD06D2065F14C110B7111914AC1351121C140904661491137C1122142C05C611DD107903F612E110841440141D138714A701B213DE0ABB13D113A7146C147D1407113214B413290F20130C14EF14F9116F14A613D814F4138E142A14A513551272143C147414071513138614AC14981450147A13AB140F1487042613C5146113F413B2145613FC13CC146808EF133413B914CB147B14F513BF14E301C1140502FA1319150414BE12CF1409122415BC140614711314158D1153146A1404015B102A0616157B031315AA143615D2147E133B15D5148704BA141A15FF115E1416146114A2134712E3145003E51427129213291223142C12B2012E122B028801910F3C15BE134C151313FC14F0104112B61300150E1524130315EB14A813D611250101155C1268124C14F3144E148A147914B0140615F914E114131109157114C501731464056415AD13F114D5051C1041119A010F019E07AF0FC20666034607600318135812F011B70156023F02BA0554010E105A1181156B0383154607920FB7019D0FDE04B1057312F4044F07E50B70016301F3119C05C801F70108108E15B104AD06BB0FB206F004390FDC03C6023D0F3F0F410F4203440F460FDF146A040812871020100307E903B3062F0C100136127C020603F80B4F117206A3156602A515A5015E0FBE15510FD001B1058010C3155A14050269011D09810B30024C116911D515EF114915400F3C117700420FB61516014B1586104C0FBC15A106CD15610FD0015311D00F20025902D501C2151202C415D415E601C71525124F033C128701CC15500FEA1511019111A6156811A1096A1185084707D2154D1163116B1151085F12EE15F30E98018E03900F3410F308EE0ED906A205F402A90182150C010F010A1228038704EE0FFE1518088D04A802CA02050502020801B203F6010E042A0F52010516E212B71061042A011815A70F2316E7142F02AD12B407BC0F1F0222016C11190FA61222106A15140666011C11CA15FA15DA0B13163B074C02C5077013DF1335151F032216691520103516E90F4702BE10B104B105890F8B12E30432164F1625161D086303BB0FD805391610065F11940F25014F15D20243064016C815F815C510441641103A071E0585086505870D5814160F250BA402F710B7045C160A124D105316D10F86015616890B4802DE12FE0F5D02E1121109DF128516E612A20E40115D111108460710128C1694128E160C05E7064116A415F9159D01B111260F0E113E0266162D107013A90322038E125A021616580596151916740554050607B6011A034D16C20D28169115EA143E15D01440156115FF144802951682012216A00757034403E9124B156512511236128114A9136A157D15761486146E15650A7015F51479158B150D1575153F141C135D12F6149D14981462143114531204157315FE13D1168F147F14FD149C020B143614C7160711BA13171151106F16A804B616E316D302A514F714C5133F102F15731345161911621616018E058E03DA14D00617141E12D8161B1464141D14CB105115E714C411E9148F05EC0974080B093E0567156716C516A113C1168514F114CA16ED1002132514F313DD16FF167E1478150A0741156315DE169B1339142D149714DD1320175E15DA160A157A150C157C15261749147F1508092D16AE06F8106B14B7030515B0123C073105100A92142417711212069F15B902111525175E02E30FEA026D02EB101E1736148304E8165910F50815165B153E104E04B31609123715D3140B063117B3071D0439156D11830B9011610734153F151B16EC165414F51037071216F616C712FB168F05C01623130017C21402172612C11105170A101B1008172D1220139F0B000632121F0259033512031347156F131A1777153F12431460124514F7127C147615F014D41614176B12161708093B14BB072C1781178A1768128B143C1710139317FA105F151D17621738156B1548126615D505ED06A31154161401900D901710047C15D105CA07AC174A106913A417D10F150252177313FB037116C414A211B905B11720157B123311F1138A1501118C15D513C014E40FA31478135F17B4166117B513B716551472060F0FAC168E120A12AF17B917AA0649156014B8155D15FB125A15441579129917DA1028171717C6147415DD173E1205122917CF169217D8177E15D4168417EC148617EE14E5169417AF13FF126F158914CD169C17CA17ED166B14E317FB101D0B8D154013F00414087117BF03E611CD11C2062212641665162512460441013B17A614C513D9120803401727134F17D112E904A312FB0257033C013F0231135417B713BB0C14183310C414780304181A1842044B0243171202E40F46178D0818188A036A12D2011F03FF170C0900042A034A021D11641003025906C717531748170E12B004EF0B620636110D04F31623113F119D17D7120C0500068A032E18870D750300032218031819182F1807183218ED023418F70136186310320665103A184B1660171D180C145D0099038F0DAF1418173A1210184A106518E117B012D9123F1780064B18F502061847133D1864172C151314D0123B13A414231852184D185C152D1871181B182E06F1114718B71383040818B7011A183E02E60F4B178F1137108318F81763174E0F7F18051881181B078718200F6F02791297186616AE06C0065701B317CA146E1625081A0635030018571885129D0F8818BD073E026817BD04281881100108E5016D107018941826187016BE161614DB14BF16D7171117A403DA179717DC17E91776149B170009A8171913F017D316951772156618ED132D176612E016601590189E17C8181C092217ED0BC416691510176C17C8161317F317CB16F51702040D18F016DD131601C308250F790F9F0492035D02E312B810F70C85083C0F2000FC17FB11D312601836143B1359096B02AE04B212C707FC14D3123115E713F7183800F9188312D607F114161810161B0EEF16D616E4184C028806AE0C8010EB183F136C07830D38006218C007BA13F4187418BD141E0902192000FA18740B90145412FE181E1525153C072D0A0319FB18F1188614071964182B0373112E197411441852141A196C113517DC16A712E904DB121D158216FD0FE412851604082D1688162A014406B111BB188913B811C2188D130117E414031771172114061774173612361780174919DB11D018F4128517821487179F1777144B14DE1815177115C5180B1591179D0BCE18DC18EB17F717FE14F9178817D216D518A11723170E182517FB17FC14E2180B1971121C1540171418EE13BC175D13C8019C143813D5109F142715A80F1916C2142B1541173D174A160014C81788191715E413FF181B15C713B3143719CD187B047C19CE137E1290193717BE14C2172815C41786197A182419BC145E175E18C8179A190C063315A5193C18841861184315C0186A014005A7198613BD044302BC101101E410B719AC12FB03E7066B176D14E2144B199C181F146814AC19E4166619E6166F1962192A1764190311C619F11778148A10DB175C15BD189A17DF175819ED175A19EF17CD19C918F217E011F4140204E0177F1795195519FA10571960018812A618A801021893182518AE06C313D1194101681870111318EF191518E005EA136C084C1872182A061A19E00E201884035018EB1953182718E20F29184517B2182C18F819801826183118A5183318E91958186210AA1596035C18A0183319C4193E18ED0FC604100902095D188B198C114618D218481881044A18CA12B518AE06D702C10543137B18F91981180C1ADE0456180F1A2A06111AE007131A3918151A0914171A270162184F18CE143B18C112A4182F1A6516311AFB04BD01750065007C062B1A0A1AED19C204B619A4035C0575011E08BC19BC18DB184A196E174C1970172014C3117317D0105515300477179403C31659190F176C198F14C9165F198D1761192810FC19D418A017FD17E617C017D016FB1786149617711989197319D519ED0B5319E219D319A4133F12371AD114391A0D143E0F15060B044118E007F2028106BA159D1650017C068D19BC0616182106E00C20003B048E1A0601FA0F4C1AC704BD104F1A23011B0B4A12E315531ABE19551A800DC119F2122812E81474175D1A67015F1A0C17741AE318761AE319DE17C213CE16701AE8177C1AFC126819791A94192814B01AE4172C14D718621AD918641A9B13661ADD19CC16DF196919E21691185C19BA137F1AB516211A42157B193313BD1723151713B41A500383196813C5175F064D1AAA1A38129C1A9909521A4719E0146D19D905A31A25121F14A61A50195C1AFF125E1A7D139F0B9613CA19A9176519721A2F17CD0F6B1ADA196E196E1AE0192D15C21A1313E51928107A19F81AC113DC10EC17681583146C1A5D19F214DF18E2116D123219381ACF1AAD19CD17680219165B051301F302080FC3021E1471011D1AA9148C193419720F220060009A0560003A1169004B03370176000301461A20006D007500BC012000490117012B034701490172002200A1020E1B801A101B36143A15121B110F7B10B7191201171B2416F602BE051C1BC914161A3B1BF5115B10201B221BCD01241B0B016D00261B2000291B6C002B1B2D1B2F1B311B6100331B48011B01371B8A191D1BAB194A1B751822195402131B401BF605431B7118C4021B1BCD1AC9176A19CA1A2F06F90F90024E1B7200241BBC010D02541B2A1BA201581B1D015A1B5C1B351B5F1B6E1BF518CC17601B481B0F1B701B38155E19831BFC19721BF50741198416431940198716911BB5045A0EA7130E17C11A0304DC1AB819AA07C807760CBD19FA14BC11561AA41AE6144F195B1A280FBF18751A9817BC1A21191613C6183D14021B091BD118891B4818081BD6185F05981BD511071BB21BC41AB113C61AE311B91ACC18BB1AB61A0A138317DD123D193D08921B8F1B941B3E194319971BD8188314981AB003B719BE10501A1E09E11AEB12E3174E15E71A6714E1164212B713B71BC819001BF419081BC418B91BD11B5B19081BBE1B88140C1B4101FB1A7718C41B541A56191C17C919E717F31AAD1B1015F319AF1941017819DD02951ACB13A91222157E19001C26159D198419B612C3144313051CC814491352144F17AE1476181F15FE1B121C2515D11A5C1398195F13A21900199C193E139F192A15A119EB13F11B2E153E1ACA141B1C5213A9191E1A7313841B3A1AAE19AB1B7B03AE04B219AB01D31BA816DD1AB9191D099E1AFD168A13BC1A611AD719631A5C19EC1BF417EE1B7E17FC1A5C19FF1A9501B01B711AF91BF51AE41BFC1B5C19E71B04012C1CFD1A6515FA1A0A07030307029F0EF401B217391B3615101C1116181142102E1CAE1A4E12231A151CA319F2166510F30EFF11BE0F9112730498044011140150066E1BF51652105D075C1C6F1BC91A8A1B5E176E1CBE0C5A1C9B1B991AD51B9B1AAC129A09B715E21ADB1BC019DD1B93035219BA1ADA18A11AF41B83177019631CC118C51B501C1113F11AC718BD1B4C1C511CF71AFB17B81BD311C01ABC1BF41A8B17671ADE19EF105714150F730165017F19811306018911AA192B1C34197F1CD41B4E1ADE1A831CEA109F1A861CBC1ADC1B90134F01C319631B531C6E14551CD0194E1CE61B781AFF106319F21ACC19A21CCA18C21B6B185419C51B471CC1063E1C9A1BEB1BDD18C51AE0188D034F138C1C7802160137050F19E9185603B6102A18A70F1D085008F018F218391CD412811A7016480928192019FD18AF04051C3C07ED1C1E1904192A190619E00508195E10B91AC9154A0245045E110E14F4199E1517012506FE195701941A0D16A7023C10270F6912360347108E15D91CAF14FD1C830222025E1144106E18F608131D9212B40142012D00240643038C185C178E18521C201AB51B1E18191DF815141D02092411861B0E1C4F10741C3A0753109B0F34049D035B1446108505101D5C0383030405601C6F16DF111A195E0E48168E03AF188402B118C901EB16BF1C98065815291D1B1D5E11341C5E029D1BD71B1519851CDA1BBA1C881CBC1C4E195A1ACF10A91BD5168019AF1A941CC61C9F1CD31CA11C4B1CA31CD71C431CF01B1F15081BD11CBF1798134A1CC51B731AC81AE01B1F179D1C661571112F1972113119251C0F1CEF193519321C0F1139191718FC0FEC182F16B504931B8316CE1B961BFF190B1C771C521CAE1C2A1CE1135E1C9A16F002351C511DDF1AD91B1814871CA41B891C0417A71B5B1D9513441C231CC01C1B17901CC31C2F1CD219F31BD419B21A8F17C81C981CCB1C9D13721D6215C519751DC21CE81BA01CEA1B991C661DBF1BD81C6D12FB1BA71DFD1B92194F070C1C9914B814041CFE193C13071CD91AA019B717011B831B921D650E7F1D5313C11D2804271C19177309181C9B14D11D061C1E1CA90FCB1D2A1AD51D6F13731CE01DC612E413051C4410DA1DD912EA1C491D6D183A19D41D3C19841D6614EB02C81BF01DE512FF19E712E806801CB41C371CD30A981DFE16561D9B1D581D591A93135415EC1AAA1AEE1A601AA11D6A1DB21B6C1DD51A6E1DB51AA91D6C15B01DBF1A631DB81DAF1DFE12671D6C12EF1BB11DCB17FA17AD1B9E1C0A195E1DAC1B601DAB1DCD0FD217A9062203C20C0D1E7B159D0BAB17AC17181DB817271ED5040D1C51144F10B5178719261EEF06321EC41D031CCF136D1D2B1E0D01D81AA214CB1DAE18CE1736186902D117A317D31722038F1D611BB01C811AC712941D501DD61B9C1A3405FD1D3B1CB61ABE1C261D741D1E1EE31B511C011B771A241EB61D141ED919161E8B1BBB1D681DCB18CE1C7B1A101EBD1AAF1BAD1DB11B651E291E221C131CD31DEA18DB1CBB17D21A7D193D1EE31DAB018219C91D421E201C001A7A1A5A13E21D731E7B14291C4D1EE113B11C331E3515AB1C4D134615FC1A501E9C1B531E831C561E4819B61ABB1C5015591D031E0717A91A0A172F12640631121B1A421A920F8B1CC31B8D1CA21BE419F51BC71C971C701E651DCC1C6A1AEB1CE21BB51D5E1EE51BB21B951C0B16061B151EAF1EDC19671E191E721E831E801DDC089009E8187F06E11C7102E31CB9109D1A1619F1181819F11CFC199C0422051F193509AE1B4201C702F419D11EEE1CD41E2B19F91C8F0D8D1D8B1E2D1D341E15157D1DB21C951D941E1B0B3300961EE31AC013991E4D19021E53159D1E051E9F1E4B1D5D06091E161C0B1EAB1E481C6F1E6F1D6C1EB31BD619BA1E641EBC1E171EBE1E8E17A61D921CA81D8E1CAA1D041B1B1E6B19CB1A761D6A18E1190613E5185B04C51E87036B05EC18A1149A0EEF18171966151919EB1C3C078F09DA1EFC182817F418061D211FF51C2919091B2C19E51D7A194D07151F3B03451AA201020F491A261A7912521CFD19D81E1A05EE19C41C1618F719B418EC199A18041AB01876068E03441A7200461A251D791CD712241A2418021AE51E521E821CC107EA1EE317591E4A1FE11BB21B1F1EC31D601E0B1FF61BD61ACA1C021FDB16A71EA31D8217E517051B991B641D701DD61C041FB3138C1B4F1E4201791DE11E8D1E001C921EF91D361C9E1B0A05531FFF1DE61A011EE91AA81B59039E1E5715EF1A5D1DAC1CE911231E5C1FB11E491DB31EFB11691DF71EFB170C1E491C0F1E091F111ECF19621E001FAA13B91D6D15A41CC01BBD1D201E841FE8132D137612B61E9619791E191C8E1ED2137E1EDC1D8519811E0B1CCD1D8D1DCF1D9B12661CB114751EB11FE217D71D9A14BE177C1E1103A81FF7131F1C4113821E771E8C1E6017D11D881E871B3A1B5A1EB816621C7619641CB41FB0124F1D9A1AB51CC807391CA11B89176701ED1E581A7D1F9F1D64013D1C961FC616981FBD1EED1BBF1EAD1ACA1F931CFD1EB81EB91F631F8F1C651FAC1DAD1EFC1E921FB71AB01E9B1CB21E581F761DDF1E6E1F011D4E1C6D18C01E771EF91FEA13831D2E16F11D8616881DCA1B8A1D1F1D4F1FCF1F371C4705791F981E571D9A1EEF1EA71AD010DB1F671FBB1E691FBA1DE01F051FB91BC11EE81FAA1EA51D4D1CBF1D4F1C611D8F18C71FF5118A1F7014EB1FF71B5F1F142068127519211E2B13B31F5A1FB61FC51DCF13F21C1D1CBC1FDD1DAB1FE402C31DCE1DE41E0919DA1D141CDA1D171CB71FD41A861EA319BB1FC3173620BE1FDF1D4320C714711FC21FE71F111CE61DCD12621FF519EA1D2220F510EC1D821D901B891DF21DEF1DFF1FF51D0520CE1F811CD01F0E010A206C1ED61FE81A52150F202B12F21E811FD004A21E3D10A41E6F021120BB1B1320FD1E411C0B1BE11F691E111FA81ED41F7D1AEA1F5D1F0E1EF81B2920121E1D20071F851FE51F2020371F24208D15BF11B118351454044C201E1BEB1C8E1B540FBE06C0037E059020621B5520D9138303E71A8D2037180C18F51FBF1C321DBA0696203D1502038C20E4018E20C01D2F1E21047C05BF064101A70498204E1E491D3A15FD1F592003205B20FE1F42198A1DB91E1220EE146D1FB420E908A3202E07CD034101C1045816AD208005A5206A013E00C11F9120C1207116B620CD1BB8200120C91B851D1401D01BB71DBF20A1209A207905C320C503C520FA16DB1A751F961DAC125008541D991D7A1FBE110D20D81F94136401801FAB1AA11ED903A31ED00FA51EDF1BB21D2320F31FB41ED21CDC1F7B20E41A091B8C17A51C5C03E21F2C20081FA91EB11A871FFA1EEC1F911F0721EF1F8320F0011920461C09152B209E1F141C2F20B7143C1E7E123320C81DA91F091C8719AD1F7B1D7B13AF1FFA1F52203E20E71F781ED81DB81F4A20F41345209E194720771349201121CE2030154E20761C2121C61F561F111B9D1FCB123506DA1D6020FA1D9E1BC6086420EE1F6620A51A6820EA1A6A2009176C20AC1AFF1EBE20971F711E01219B1F1A1E7F203F1E591275209A1C21203921B31D5C1EFB203F20F81E1C20B51EC41CB71E2817DA1C52201206E503E7184F071019E21C4517E41C1B0B1B1FCD1E1D1FCF1E1F1FAF0B221FF118F01CD71E4E1CF31C76212A1FDD1E3621AF1C8A1EF61F9B043A20FC1B741FB31C761F501AA01BA01A0D214521A61B5A1DEE206F054A21F1200B017917F42034120801F01A27205621EE1FFE1E131EFD201A20931F661E1620691A1021C01F5F217E208420E31F06217C20031B5412B41B5A21F920B41D8B1F30171109321724044A06371F6507D505691C6F1CD501F515831AC0209A206218C121B021751885083910DC20C5215A17EF11FA0F211DDB0B14161A04771E681C8021021465108918FA127518301DA3186D1C6D04591CAD028E11221DE606E51DC921731D3C1BC220F519F9167011E421F820641B4C1EC51FCE1ADD20C8032B15CC030220D720D520F41D8916F61DB211EC042907181F13192410511E07204121E91E1308E420E71EE503FF05F81D8721E520EE09092201226120371C781F05220B22072204220A22E61E511FD81B13221822622015191B22501F6220D4071F220222501AE01A232210229E1BFC1D27224021D71B0E22931E511F050A2E220622511F50082B228821DF1A1E0B36220C22E40332221422342237003D221C220820EF113A22E71E2222172220221122F80F452230223922482224229C1A4B224F222822D71BC72153222C229C1A9A094C22D01F16220F225822BA1947225E223722AC1240225B22112261222F22D01F551E66229E1B4E2262223B2252226F22E71ECC076C22D71BDA0775229C1A772257226322E81E4122492229226E22692208207E225022AC121E227B223B22531D27100401470F6402BD0F9C180B18CB04770068000A01A201311F20166219EE1F2716280F651059030B012C16D320D720FF15BA20951BB920B720F62179079E131E14710A36039C013F11BE10D2044E11520195210C156B04280F68086C2101086E21FB1754094705F80F9416EB1E47124207C4013311380FE70B07072F1FFF1BC202A8019004E006D905520EBB07B6225903E220FB21AD0F0505B106AC15AC02AF223211A306160394216E20D122BB0FD322EE1350164710590306019A02A91898189D18F51E6E12D722AA120F03F510F219F111B022DD22CE22DF1CC61E191ACE044218B6055C1CDB222010F6221102B422E1221002DA1FFA162A1A98072102F401EC14710CB205A60E7C027406AE0722004C00DB02610070006800200053006300BE01700074003A00E0025006E922C801C40F85055805A022F52100203C07B1053B04DF026B02500622003A00DE02251061017010C915AA18D412F522CD221102201B5B005E003A005D002B003A00250064002A0031237510C210F9029D02AE021D020506701F7903E80B8F152202CE028902FA024B23FD02DE0214237200162318231A231C231E2343235F1BC922DE02E002B111480333125D02B70CC7011903B003F002E702710C3704C10C86188E15811044081D041903DA0F44046E09A205AA166602CF1769027E06161F1108940F9C0F8A0389104D012B1DC5020C0663016107BA053D1915088B0880233B03060FAA06A3168602151DF7028A23B8010E0F16107E23530129003A0C4303350CA9038C03EF15CD021323500048007C005E0CCD0A420042004600AB0844004500EE0A3000410033004400350043004100BC08E5034400340045004305BA234700CA0743003600450045001E094600410035004600480945004600E00C0A0544003200C2234D0A46004D0A3300D4234705AD232E0942004100B517330042004300B8233700420034004400F0084400CA23CA07AB08D307EF08D4233500EF2335028909EF231F093900D4233100D4234200BF23F923AF23D4233600F923F1030024D823CA0742004405D923D423410045050724CA070924F623CA07D3230C24D007D4234300DA0813241524C3233702F9239809F923B523F923420003243000E1230E243409D923E408252423241024BE0806240F24F1232324FF23CA077B0DAE08D423232431242324F023AC171D24AC1742002E24D4233800460020243E244024FD23EB23F7230824B70846242024410047240C24C8080B24B4235E09EF23FB23CA0735005224BE0843242005F723180A4E24E709F7234805F7235024EB235F094E24D00720246424332462242C240F242105D9236B246A242824D423D9074E24B5022024D40C70245A24CA072F24D8072024D00A6F24CA07D00A3700D9231F092924B5094D0A3624D42343053C247E248F098724682458247E248D2479244300360213249324C3232624C3234705F9238D24292442005E2404244D247824702445007D24CC0D74249524CC0D802478241424FE23AB247824E723FE23D423BD0985244524CA07B22432244424B524F22379244200EE23B824BE0813249D248C24160CB124D307B7244D0AC224C624F823AC170A246924340901247824CF24CE24A4241B0DFE23D124930A2024E103A9244D0A4400202431005524310057242924E024A424E024DA243B24A424E7244E243B24DA24C60A4E24ED24CD240F0C87244F08F224E624A7244200972421243405EA24FA24CD246A09C62423243400D42330004300A424032520243000AF24FD2409253F09B4240325AD240325DC241324A324EE24CC248E2436021525E224FC2416258909A42445056524182533241B24EB231224AC17A0241625CD0A052526252924BC082024A5082D25152586247824C6242924E308D824F8243525FE231E0933242B241625B80A6524D124170A672423244325D423CC23202446009B2433243B246324C1240C249E244F24A4244A24D32477241625560CEA243C259C2458250024A424B409D9232225DA0C202434058924B4234B25CD2441001F2408246525162548250725C5242324CA2430006C250225F2233125D80C2024F10377251724D80C6325410049254E25DA247B0EEF236D247B254E24F1034425FC107024092485257A257825EF2336058525BC0870240C25CD24450B33248A25BE247025B80A1D254025480921251D255F25580CF12377258B2453247E25BE08A625480905251125AC171325FD244500DA2433052D255425792443057B24D1248824B0245324A7244205EF2393251625150E4E2443005524C225DA2437000F2537000B252924C825A4245F0974249725BE25702505242024D225F923BD24D0250225C9257024D9253024AB25CC0CDD253700AD25D725CA074500D124AF25A424AF2547258F25A124CA07C808A424ED25B9252005DD253200F225DB250325A425F6252024C423EC2468257E24FC2536020F25B6237B2455247B09B124F82433051D25CF252924390039243F097D25A224742455243700E124702457246F258925CE2574246A2575253000E12529241C2607251326AC17A625CC0CDA24A60B4E24770AD525E824F725BC24D3258D241626B524F725AB0B2D25A62535240D25BA0BB1245F2534000C263400FE2534000F25BE232D2557249124C325E125BB243F24FC23F925BE2529249224DA24BA234924F3240C245A25512651259D25BA257725C6244326A424C22520244400CC0C1324832514245A2654254B2663261726662630240E260F24F5233324872430250D25430AF32378246E256F268224D524B324532427242726F824E40361257B263A25C3235F2543006A254B268326C024632539008526EB238926CD0A4726EC258D263F09A7241E0C3324832535053F2563256B0D87244B2417256325212405258B2621244D268325B5234F268725C724E3254F25CC23A424A9266C268825AC172126CA07AF267125DA243600F525B426B326DD25B426A526702543001A257924F3256125F225552432008F263E097B248325DA08A424AB0B6325BC087726A6264A057526532473267826EC250F253800F525D626EE255F25EF25CD24C8084024DA260C2638008B26050A6125D62575254305C3248F24CD2637245624A424CB2377258F26D908392525261A252924C6085C2599240F249A26622527266E26AD26BE08552454247725E12575255E0D71269F10CD267025FB0308273D242A250C2740249A26D909FE23AF263600F0261527D8241526EF237626FF24AC26A72444004F2545009125782416279225CC254A26EF235F2535000C26B8237725DD255424ED26AF253D24D52604254E2438003327CD243900F52538276524DD253827EE254F255309EE250D27EC2510276024B423D124CA23542649244727E103EF2333254D2757265726ED267F2620054F2547055C255527E203FC23E8248F26AE23D3254226F92383254200612765260424642721241924D024E82634096B26FE26E0237B246A25792441000C26672563254805CC257A25440E7624C9265226C70E7B272D253C259124A72492244926292507252025CB24C92666274F08B225B225C926D0262A240B27532474251927222605252E263626F42602258F27AA09912730246A27D30AEA263D24D7261E27F4237725A8254F254809772545274B09D82483255625FD24F2231E266C27CE264008EE2558260824A6258F09D8245026D2244E24910EF025032505253627BE25EB263200E2261A269427390D7C258B2667254924FE2541000F254100DD254100302730262D253126D827E6245F25E924CD24EB2481246A27E7261B276527D3257A25E523E6242B26E8272526F725E3268124ED26AF26EE26EF23AF266227D3256127BD26B1249727D326340937253725F6274E2549244F257D255125A62584093D24F824B30E3D247A258A0E3D24E5260D253409E424F5253100DD251128DA244300EA25162515285A26BC27E223F9254C27FC109A2631000C263100FE2531000F251128BA26F72763253600C327E6269A2698267E242D2842276A09ED26BE25B425BC27F1247E24802733240F253D27F025E1036A27E0089D273E2806273526BE240125EC25FE25E12640242B280D25860C8C247B244F254A0EEE24A625A027C924F72310280B2579244E087725BC270D0E722478277827BC274D087424F7252D0AC5258B26E4231926C9269927B5248325B125B124F826360293274528D124BD09D727E4244E27FC1078284D0AF8241C2527260C2632007F280926D92381286125C827FE260A27E2274D0AB1275D249D270527F526C5247924380055243E24EE25AF26E024DD2496288F269728D923A724E403EE253227B02574287C274A244924FD26CE26B52587247C27B8095924E424B325052840247A285D250F245F2580285C2582280F2469264A058727BA282F252F25DA2497095B24BE257525E0251026C528A2242728EB233C273C27552439008F26410034285F26C525A72471249425892870251E272024E425E725AA282627FC10A7240E018726B7280D2665240C260B269F28D3246B28AF0DAD27EB28FE231A2575255D265C26D124B723A424F028D4231E276325C423C8280625F925682703251628BB24E52766275D28CD245A288E2577253928612465244F25B4089E25F025C62761250F25F3255C255828ED272726A6258B27B1247A25EA0CEE258B2649283D2448282029CC25AF2612264024A724B527F025E423CC25FE2529297224DF252E29B3269A2636000C263600FE252A28D3244B28FE26C4231C28F9254F25430031289D24FA28960A0225E228B4230525B92833000C26E023A4244A29EE2470276C2461258325C3086125D12426269825AC24D824C3271E26D6255A2905255B29FE23B826B82655241427FA28BA235125BC274E260824FF285F26F9256026E928BC2625263700B5234F081E27A5089224770A9510E423292472276727F923C7234E088B27CC2633003E29AF25D623712554249D244705C5232428DA244400F8248D295C26E928D2235C266627DC24F4285526082594297A2595291C27D728B727C323CF283300AF23BC24D0114500CA234100E503930A102420281528F1274505802836056227D509CF287908B708DE093909D6233909D3233505CF23B509E12324288C0E5824390976294700B629C326C1293F09C6299A25C829D62382294600BD094400E923BA29CB29960AB6295B09CD29EA0C112809248A09B729C729DC29290EEF0844004200DD26B629570B9710360541004600BC26C429D3299809E4294A054008B123B7235D26971044053400CE29E1036329E0243F093309DC29D823DE0952250A05EB294A05D229370545004300D107F929D623D1074C0C36053409C423AF23FA29D7075424E5030E01CA23E1033800D2279224AB0B4B093E2917256F290B0ED323B5028C0ED00746008829D0296F0DC8254500B4234600BD0B4705D027F129D4271C262E0E4300252AB2230825F103DD235424B4232005FC105D2655274700F10D1528CC23EF09E708112836026125402AFE24F329482AC907440C3E253605900C1528CB23E223D42320276E0EDB2420054C2A2B2A4D080F2A4500B7233602CD0A0A05A808072ACE234305CE293505B923702844000F25D029A526EB266B2A5C265929F6286C2A3829CE26B123F42826257924D0295C260B252F2608251D26F628802ACA07B1235C265F27832ABB28E923FA2844008F268B2AD928C2280D25E9235C268B26E129782A952A4E244400792A732A712AF428742A8C29DD257B2A812AF4285524772A972A9F2AF525A02A832A7D2A902A9A26982A8A2A0C26892AF025B02AEB250825AF2ACF257A2A882A242508258F2620275C263128982ABD2A6325AD2A972ABE2A26257E2A2A2AE725A724C7238A2A752A232405245E09A324A529E103DD23C627AD234600E4256227002446281F26E7083F24D107E203252A3B2A7908C127D32945003B24D329D2292E0A4A05E223C529D623182AA70CB5246126E72AEB29DC29EE2ACD0AB52435054200050D062AB527CD0A182A3305F32AC629D924C523D6263B24180AA5087125C8083C264B059224E308092AFA270E2B12260E2BF52A5309BA2834293E29E82904250924EC29C808EC293F09C808C32682261C2BF42ADE23022A3C26EE0ADE293C26FA2A3E293309E20D47006529D329E103EA0C4500042B2A28122B1A2B142B4B053527182AE929042AC629132B570BF203E123D00AE5033D2BD623BC08C90E9026350539092E0ACF233909FA232E09E929D007EC2ADD293E2B1A2B3505BA28F32337053C2B002BED2A562B5B09E6281E2B4A05E829532BD227532B452BCD0A372BF72AAF23CD0A3A260D2A350553092F0DCF0E3527EA2A4505D329F52A39001A2A672BDD234C0C222B340536053E241C2BEE2ACE23EA29532B772B1A2A980935273900832B8226532B0425532BB629DA295B2B852B242BDE09BA283F090425202B672B182AD229962B8A2BB729B923A324D329D027932BEF2ABA283605C7083200062A8826A70CFE2A672BE103062A332B942A062B4C2B092B9228502BBC26AB0B102AB829B32B082BB529F62AE523F008E229B72B9A2B692BA62BDD232E09FB2A722B570BE910BA2BC3070E2B4A2BA82BAA2BE62A5309BA23672B252A482BB629BC2B4D2BA508332B992BD107CD2B132B6C28FC03CD2B172A71253827052B4A2B082BB629EF08202BB623362B9C2B4F08BC24CD2B820EAE080425D4293605342ADD264027832B180ECD2B4809362BEE29FF2AB629872BFC29552B032C032A4700CF2B180A3405C6230425D32B6D2B8F090E2B0D2BE02B942B6C28F32A770B5C2B682BD529582B4A2B1427142441000A2C4B2BEA2B980AE72B4724952B022C762B152C962BBA29A92B982BE429BA23BE230E2B3E26EF2B252BEF2A9F2BC42BF02BA70C3405992B192C9B2B352C050D9F2BD30DCD2B082ACD2BC42BA70C872B7129CD0A832B462CCD0A1A2A4027CF233E24A5080B268309E829BC08B92BF008D623E1034400032BE129352B142C072C282CE92A4F080F2A582C3602202CCD2BF6290E2BFE294F243E2C272C332CCD2BB223C823AD23E52A3229DE09B5021A2A860CD427E523E126FB0348297F09030C3E262005A508B1235424D427E20CCD28E623842C3E0A790EB502CC0C3502B3293D2A34095A2A562CAA09BD23BE095D261129492A312BCB084805BD09620DD2079526BD09462AB428492ABD083E26C408F529F0037D2C462AF2259A2C422A4F08C4083E26A62C1528F30D9E2CE4035D26FE25D3234D2AEA2AA82C3505AA2CE103CB08E823922C0724C907B426B12C3505C7234B2AC42CAF0DC50E700E7F294E088D295D2654299A2CF70FC22CC2269A2CB80AEA0CD02CBD08C50E5229A508A82CAA0A462AFA26A52C4A05D30AC3084E08E425C408CA2C2C24C907E7089E2CD30A0D0EEE2C972C5C24EC2CCC0CE72CC4091828B02CDD0DBD09EA0CD608EA0CCC23AC0A562CF32C7B269A2C9006BE232B0E1B29F629312CF92CFB03AC0A620DC22CEB27D82CCF2CE623462A3F2A4D2AD207AA09E2234E08972CC32CF52CA92947000A2DEA2C700BCB2C8B0CC82CEA0C252D620D43053226DF2C682AD8298D295129D42CF629B00B3409F7297824B509CE0ACE29B509CE29B42CCF2C782B462ABC27BA2CBE08B60AAC2C5A2A8F09DF2CAA092027EF09C62CCE292027F003102D452DA02CF22C462A112DC52C3A2D470D222D302DC52CF323272DC82CFC03FC2CE92C322DFB03CE2CDA2C142D5D26542D34092027952CA22C5D26E32C5A2DE623322DE82C4E08E929EB26D3071226C5245D26592DA026502AC6233405E008ED2AFA23C22598095909DD2B062B2927DE23E725DD255E2AD9284526552A822A1C265524CE23E725862A1C26892DF525A529FA28B8294E24992DCD24332BD928992AE325A6287025332BE725C52A0D258A2D552A1429E325E228972D4E24A529DA24A32DAD2D9F2D71257A28652A45252127942DD928962D0C26AC2D5629AA2DD9284D251C260F25AA2BAD2D752AA22D31289D2D552AA52DFE26E52A6325B02D9C2D4527B52DB026DD281C26C72DBB28A324E7258E2DC32D9C2DC22D722AE325C22D962D902DD92D0327A62DDD2DC12DD928C3277127B223E923EA0C1E27B823B729A92B2E093200EA290C24E5235F2683279C275424E929E12AC3236B2BDC29E1032028B12BE82B072B502C722B212436052228E20DE9292028532BC30B292CAC2B4A05412B1424D10AAE2BB5029228E72BD02BB42B4E2BDD2B922B0E2EF62ABA286B2BCE0ABA23672AF22AA42B1E2E502A4B2B2D2CAB2BFD2ABA23D826762BE62ADE290F2CBA235225D329E62BF52BB70E642CFA29132B482CCF2892281C2E232B472CEF29C808502CCE29BC24532B3805F92BB22BE92B4D2B3F09EC2BE929E723662B3D2C5E2B582BBA291E2CCD288F2BE723242E292C392C972B372C512E5B2E9E2B202B562E5A2E352C582EFE2DD107A92B172EDA2BB52B1B2E3E29272B3E2B6E2B062C3F095F2B562BCB2B512E012C042A792B762E972BBC2897100D2CBD09CF2BF62A5D2E932B5B2E100B202BB523832E252BA729852B532C3B2B282C662E6B2A012EED29C708232C0B2AE129D42BA52B502AF92AC82B2B2BAC2BD52B342D652C3300B223CD2BED29F82B4D2BD00AC8084B2C7A2E782B082C532BF7247C2BC5294A2B802BA70C0924832B622EDE296A2E6F2B6C2E4C2C622CF82A2A2BC02BEC29052CCC29EB294A246D2CB5246B2CAC2E632E272C250EC429292EDB29AD2BDF2B652CB212452CAA2E872BD00A0425832BE229502E882ECA2E1E2B822EC92EF72A0D26372CF203A32E722E702B612A402E4F08050ACD2B3E09802E852E3E2E552BF02B042A182C252E572B072E1D2CE9299E0C5F2CFD2A152B3A2B182B030DF32B9F2E392E2C2BAD2B192CBA295909492BB82E0A2B3705C329DA2EE72A5B2CD32E982ED707002C262EF82A4A242D2CBE2B382BBB2EE529162B3B2B072AF22B652C5F090E2B4C2CAB2E612C162C252EBC2EA72B9B2E2A2ED42B3305672C202F5F09072F372E0E2B642A3A26E524CD28790EE923E223C225D4277129B1231E09F92A1226600C7F2929294D0AF62B3C26580A8028C708FD2D252A5E0DFE0BA3244827C90A4F087B0D902C582A672D942C6F2D1C2D992CC52C442A2C25B62C5E2DA12C1C2DA42CBB2CA72CB52CAA2CF103442D242DAF2CB509192DB32CBD2CB62C462AB92CE42C642FA92C040E4D080D0E532D452DBD23820EBE23A32C452DD52CBD0B642DD12CD80C242DD52C462AD72CC52CD92CFC2C1E272A24EE2C372DE02C6B2D612ACB2CA62CE62C5F2D4E087D2FCB2CF22CE509F12CE72C1128F42C58244D2AF72CBC2CA12CFB2C432F2A2D612DB12CEF099D2F042DC52C062DBC2A7F29BB290B2D502A0D2DA82C622D782F242D892FD02C152D5A2A440C192DCB081C2D672D1F2D212D9D2F9D28052D7B2D272D512D7D2C4E08462DCE0A2D2DEA2CCC0C452D6B2F072DBD09450543003F2D5A2AFC038909682F1E2D8E2F482D022D4B2D072D4E2DB62F1E2DC82F902FC02F562D2A2D9D2F792DB60A202DCA26BE235E2D712DFF2C0F2D802F8A2FE22F9F2F682DB12C962CE22C452D6A2DCC23F02F732DB124CC0CCE29582A792DBA243E24252ACB2334298C2667254F08B529BE237129A529180A8A2EF0254D2B9A2D15257924AF23632518309A2DE228C92319308E2DD62A47251F30E52DF82E4525E82D45251F30E12507257A286A27AA2975251430CD24CF23DA244600AF2633304725CE29022589282F306B25DD254600F5253D3047253E309A263A3029243A3017308F264A05A127B026CA2DBF24B0260C26D72B9A2D8628CE263F3045253E303C30A92D082B32304E301C305A3019300F25512B9A2D072A45254230B22D5F3030305E3023305E30AA2AFE2643302730AA268C2DC323292B5F0920051128072A8E2B7227CC2345008324CE0AEF23DD23982C860E342AF92A542F072A0D2F232B842E3B2CEF2E5D2BF12E172C1C2C1D2EF52ED323CF2BAE084B05512BC12E1A2C722E082C9030542E88309530F52E602BAB08C82E3F2E612B8E2E1A2A342AF42EA330652EC929082EC32B7A2E282FC72B172FCA2B4A05CC2DE42A752BDC29E82A262F1D2E282F282ED22B9D2E3E26B330012B4805F02D5D2C382ECC29162B432B4B09192CE103C423912E292FEA2BA7305D2BE82ED0073C2EA92E272F4E2C422E5309CE29C808CA238D2E1F24532B772A312F0E2A802EE6283C2CDB2EE02E782B9F2BB9238F2BC627BA2EAB306A2BA70C6D2BD529E62E182F1A2AE423102B5A2BD12E5E2E3F2CEE2EBC262E2F392EC52B272ED12B0E2CBB30462CDE30A42E192EDC2BB72B892B8D30C929062BDE094B2E700EE230DF2E9D2B1F2BE929692C142CF02BE623212C932EDB2B952ED92E94306B2CC42E2A2CF324272C452E10310A2F592EDC29E408AF2EC829B12E4B2E822B9A30862BBC28892B4B2C930AFA2E242FC308132FAC302A2BFC2A2C2F142E4C2D042B0431BD2B052EE5234305222FF730DC2E2E0A9F2B35001F2FFA29922E8A2BBA306C2BD52BC730E423C225E623022E782BA62EFB2BE9298806132F242F6E0BA32E092FB62B0F31A03038312A2F702EB829C129CD2E2F2C7F2E222FFB29D2295E2C652C3A31042F462EE423D427692E6F2B232CC02B2A28542BD623672BF0034431982EC6086B317E312431B629A324202BA50837311B2FE1231D2F1A2FFC2E172B0A2ED02EFC300F2EA82C122CC82547052628F223FC03D2234700902E2B0E072A5B2CB8231B29B708A3242228D027AE2397313E2937056D2BFA23CD28DC24D52F8D298309D107CF288806E6183702AF258F2C3C2A552F932CE0086A2D592F452D5C2F9D2C662FA02CB02C612FBB2FBC2C652F292DDA2FF62F2A280A2DD12F072AC631742FB72C7C29F52C6D2FC731770AC12CF52F412DC62C7B2FC92C42291E2D7F2FB82F652D832FDE31CD2C862F452DE0318B2FDD2CB02CCE0AD30AE12C6C2DC531B42F952FCE2F622FBE08F72CF02C3605522D8F29BB2FA12FA72CA32F132D2C257F29002DA82F6B2D890A242DAD2F082D502A4C2DCB313505B32FE62CB20D662DE631132D822F162DCC0C182D3E26BE2FD831052DD323C22F8D29C42FAC2FC62F1B2AF731C92F2B2DCC2FA72C222D7F289A2C8E2F392D0A2D3C2DDA2C7824602F362DF22CF82F362D0A2D4D2D3E2D5D26402D492AD82FD131AD2C552D472D072D4A2DBD234C2D9E2C4F2D05322132E52FD02F322DE82F2F2DFB2F1A32ED2FE425D207F02F612DBF0E11321832C52C692D582FFA2F242DFC2FCB08E92CFF2FB5240130772D592ACB2CE4258B2A3F093330BE23CA0D54095B2CD62635020930D307D52B182AD02838244D0A7924410806270E014930EC256A27F62AC624EB2603259D277F320627082580325D2682328532A526833286327B322A2A7D3202252E0A5528252579323B2A8232F92A90320424CD26002502258C327E2A1C267B32D6238D32AC179224963281321E26A2329C32A232A53298328E3292328F329C32AD320D28DE09E503AB32A332AF32FE267C32A526DA2A93321E26CF28A332BC32792471259E329F27FC107E2A7632B83243297432C7328928B9328F321E26B5324C30D22D7732D226CE269026A332B132BF328C321E269B320D28DA32B632DC32CF32A4320225A6320D28A232BF3285321E2687320D28E632D8259D27D029FA2D050AC50E89094600F3252228E203242BFD25DA2AEB24D52AC608CF28D62AFB2D98298430712E9E30A230EA2A7D2BED2AD530512CD830542C4C2DC80DDC29BF23532B4600AE08592BF72B0C31222B4D2E43005B2CE3304A05BD238F2B0A2F7931672BD62B2F2EC629B5309F30712EB830FF302B2FFE2AC623E830D82BDF30E42B4805C6233E316A2E182F062EC12B092E342A6E2ECE30262E232EDE293F0985312E312031362C202BBF2E8530252B62272B337F2B2C31B42E3F33602C882BD72E512B21333933242F7F0E26312533402BC430132E192C562A0331CB304D2BE930B72B2224B730B5247B2B592E622CBB2EF72A292F292ED32B7131302B4909A324492E032E6B2EB72B892AC02E532B1E31D42BF02BC72E3C26A12B44332231F62B3C33F930382CF8308730842B2431F22E4A05AD238F2BDD2E6131F02E3F2CE1303F335F2E982B732DE32B6F3120319106102F8D30D52E7D2E4E31212E8E2EBE30182A20276F335631C8087E33C929202EEE30E52E980FF13024333933732B010AD130FA2D9031AC331A2A422D9733A0309C30742EE52C0F2F652C882BA82E4B337B2E3305E503432CB20DAB08322FE42E2C2CAA2BCE2EBA2311280E2B2228943135026E33E82B1931092B1B312E09AA2E5F2B91305A2B8433B633D7339930072AB133722EAD30C92B92318C314B058A31182BE4333705FD2EF82E012F7B31EB30C62B3931032F50317533092403316A2EB223212C7033B92EAA30272F67339A2E172FF133BE23C2301C26FB30D62343003E293C26CD28DE23BD23D227E724002E932EFE2AA333B5238C2CF103BA23F92A5D26F328A129F329C423E1292A2A2105472ACF232428540908250425DA2C3429702B4200D0292628062AAD23750C2E095424B4268C0E88066B278C09B73179085532CF26F82F902F5A2F6B279E2C5D2FC131502AED31DD31F62FD431D031672F1734452D6A2FB12CCE31732FBE2C452AB82CEF313C2D4D34D631772F0F32242D7A2F7B2D972FE3314E2DF32FB92FD22C7E2FE4315D26872F0E281132DC2CAA2CEA318F2F1C2D6D2DCC0DF031F02F5934F62F992FF631B80A9C2FF931922FFB31F92C6B2FFE31FE2CA72F95100332AB2F34090632A62FB02FB2230C2DEE2C0D3244321E2DE731BA2F922F15321A2D473205321A32CE29222D1D327F341F32282D2232CB2F502A1528CE2F27323D3201322A2A3A0B0A2D5F09AE31102E982F432D4734242DDC2F3F327F2E4132E02F0E321D2DCA31E42FBF2F48324625962F4B325A324D32EF08EE2F5032EE2FF12F622D5C34E131C02F5732F92FEE315A326F2DFD2FBC345E324830762D03305A2AB9231033BE080924C4080F3428347227072AB509C825DE25772C872D5B24B132C432BC320427E432F723DE329932FC10A832F723E232FE2624289F27E834CE26EA34963220289F279532C4329532BE26FC10F526AF0EC4329F328F287932072FA0324D0ADE327025DE24AA32912C7732EA32FC100035E234FC34EC340135CE320C35FC340D355F248D28DD34C927FD34C432E832E9341735CF32F034EF34BC32E224DF34C92736347E2A21351435193501350635582AEF34083507359F279F32F9342C35C832043516353035452F8D28E634E5343335FD34E22410351E289F27CE32EB2615350D25FD3475321D35F7231F35BE243800F72313356D27E503BC26B729072B0834D207FA2324284430AC29EB23D42B6828E129A1298130B8312331DB33532EC4291E2C232F732E012C18285433AC336733B930C4258F2B86098E313733272F570B3B332233EE33992EF0330131192C1725F5337631DB2B78310C2FD3297135B829A433D623F2320C2E1133C4332A314833812B4A33DA330133D52E3131E929E126852B0733D7308C2E552C672BE6232C33922E0531D4334C0CD3297633C52EA434272C8C2B24318E2B762BAF309D33AC3389316D351B2AFA2E382B272DCD2B3D30983532334131072EC22B8B336735C62B162F062AC2078231B633792E982ECA2F15318D333E338B358930F830CB29EA29BC358C33463183338133CB35DE2E7C33B630F52E7333B4304531E43091337530102B04343F096A33F233D3292E2779357033473166359B30752E602C232F99330C2C9B336D2B872DD329EB2A362E2D336F31722BBE35B7303B2E4A2C3C2B33319433E82E3631A32E0631B63595306331FF33BB309633652CBE096A2C5733442B51315B2CCA30222C5D334F2BFE35E12B1F2EED302F2B6F2B980FE203823165337335182E2D2C6109A32EDC35A7353602A331E2353F31DB2B60310A2E93334B316731C8336931142ED00AAF23A133EA2B4C2E5D2EC935C535DC2EC4330F364033E12E992BDA35A42EA233BC338A2BBE33242FCE230E2B5E2A33369B30D733F72E342AEC330325A22E652C03254931342AB523BE09D1075409E2293B247D25E1291E09BA23B1231733662D71253E097F0EBE09FB032D0A4825062AD2231E0C2A28F2323D30332BDA2C0524532FB8313734572FC3340625242DBF31AA0A9F2C4034902FF3314434523446349829692FCC314A347B366F2F4F34922FCF315234C02C5434AF34D9315734C82C6E34D931DF3154325E34842F60341F26B72F64348C2FDE2CEB31D30B6934EF31942F6D34EB2C6F34F531C12CF8319E2F412D88069E2CA22FFA2C7934A62F01327C34032D502D5C32073282340A32330585340F2D3734BF341232BB2F8C3417325534E32F90342E2D232DE32F9534C82F572D9834CD2FE531A834F629D3230032BE233332DD2FD32F3632A434F52C3A32C931D931A934492DAB3434324332B836B134B836E72FB534AB281E2D5B2D4E32EF2FBC345232632DF42FBE36CA31C234902F6A34300B41325C32722D542A5F32CB34462A792D142403255E09F82ECA26FD0DD1075B2C51358609DE243E26B509CF289726F6348724F8340D25A92B9D270C37FE34F32503354A05D9233B35330A7932F22D2C300B35D92336352005EC3428244A35CE268A09CA3213371637463520372537C5271437932E96322137BE262A352005D832D9232D350B3732378728293736373335C6290627FA117E2A3B370B374435B8283837273510372B3742374237DE32C52730370F24E334B12483282C302537E4342005FA34F2243837CC3223372B375537F92624372C30F2340B375C37F927173706274337223545370D3725351A371837163719370F241B3760377E2A3909230ACE29CA23BE23AD235B095D27FF2AEB23D207552AA92B292B4B098D29FA2D542FE724E3353A2E412ECD28D630522CD930552CD62A0F3381354C2EE633BE33382BE9336D3513365533622BDB29C929FD354E2E8C371036E623562B723519336E2BC335CD35E02E4731202B9428762BCD306B27CF337531F9339837C435FF35FD3375352B2E7C2F0F33FD2D9E378D3047369230AE37772BDC336035512B7230DE290C33A8307533C32E7733252B7933F728D329F328B737BA28B8331F36772BE535BF334633D329F92A9F373A2CCF35CA35A337CC35D5359F305B09B5020636422B58337231FC03D033182EEA2B5E333736982E622E9C338635D0351131D7373436E430912BBA373836E530992B4C3628361436712BFA35AB30F5353D2E1424DF332F31BA0B9A3300314F3136057B339737FE33FB2A0034672B2D0AB1357A35230EEF2AC02BA9303C2C45369B37152F9B2E182F570BF625AC351A38DA35142E4B3654313C36F92B3E36D2309833BA28A8372A2EB43004257935D233DF29252C9F350D2AC7332E2C1E2BDD358F2E912D2F360D31163349310E2BFD2B652C172AC22508253B247E2BAB0849333F36F3374C33D62E4638FC2ABD351136D329F33097331836FC33A62B693528333538BE30E503E437F6331E38072E2236092F7C350F2BE42BC133202F2C2A5038D1352533683527331E36742C702CF530392E7129FA23DB2BB223E203F72474322D0A1F2CB823D027C907F7246936142ABE233F24C4085631332B2C2A8A311D0B0825222838279224CB23C3263E2D0634532CA129180AF328D5093E2F8D386E363634EB36412D71363A34BE313D34C0317736602F8E36722F51345E2F9909A7341E2D49346C2F86368336D2314334A938BF2C762F072E97389A2C8C367C2FA0368F36CD2CB936462AD32CC52C852F61341032812F65348D2F472D9B365932D331E52C3132E92CA038ED2CA2369B2F03327A25A63676347836A42FFD2CAC368534022DAA2FB036E82CB2363432B4360C32B736B138882F9136CF2F8B344A34BD368A361932202D9134C32F502DC4362132C6368E2FC836B5389A2C382D4E087226A134D2363832ED2CA6347E36DB2F3E32D9369931DB36E12FDF38943472348E34FC38B434582D4C32EC2FB9344F32F131E836B8380239C52339349C36C534F136FE2FF436CA340230F7365A2AD10DC623C6233F24ED2D6C2B6B2A3D338F092C2E0E01B82C0637F025A12E9D272A393A373437BE25DA2ACF0E963231393C371F3770258229E0276A37FF2538397932EA0C3335D00A2B3914373F3932394139CE32503742393C3758373602413966377E242735B623E027473787243F37662C2B3953394829793247394C28493720362B392E372C39C6327E2456395E37CF32A129E02752375F329D27E60C96326A394839E0278F32B4251B373739323939394F393A374C39360285327924C4082B399F32B4257739753983241935EB26573989285939BE2484393C3763393639743971393939B42E872BC723CF232B3215287D25D82ADE2DDA2AB523C6232A2D5E2AF629922480370738ED336F35102E0736C630662B102A22365C331F2B0E36E92983306133EA2AC137A13985338B30CE37522EF62EB93762355F35D933B130DC298330E035053125364738142F292B18380034D52F462E3B24DE306E314B31242C962E303841338F338233EF37682B8630412C6238FC309033D239CE393D339F2B132C63389030C337FF29C537272C7933A2372B2CCC2E2A3634383A269637D6230637762B0B385131D30759380F3833331238B535512BA83716385033D429E93504389C33142E3305A03355312338A72E46383D278237F4371231CE34642B28383C26B9353E29A635E8331C2FE733AB301B2FEA33122E1538562BF335662EE3254138E629443889354638202CA530622B6531663212366E2BA508A933F235AB33FF35FD3725386231D43085370833492BC629652B12333C3630360E3113313B365E380B2B7A313F09A8374829CF2BFA396636BE39232CC0396633EF339B2EF325122B9435CE299A2BA739082F0C362E0ABA33FA292333B439E93768339B33FE2AE025102B0234CF379F30792B0038193A032A2736F0379D2BF2374C2ECD2B1432B53301336335A130112C61380A2C8E35C1393531EB295138AE39FE302A2F6A38F835FA2920270E2B6C2B84299F31B7089C2EA02BE308CC2F442B072A600C4829E1233E29E4233F24F9365E2A982A7F29072EA72964259D24F82B1F246D2E5231E025AA2B4E09C623E203C3338E2C48253534912C562FBB315832982C9B389C2C7636B2127836C43185364C34A338D636AE2C8036A838B23AAA2C702F50346E2FAE38D7311039B338DC31F3314B09B738893492365A34AE346234B936C03899366834C438AC386C34BC34C938F431EF2CA3367334A536A52CD038FD31642DFF31BD340232AF360532B1368134DB3884340E2DB52F1039C53AE238D331BC361B2DDD36C0369234EB38262D20327234EE382C2D2532D23AA62CCC23102EA72FA324A334F838422DD92FA538CA31D836DE2FAC344D2DAE34C02FDE361039E0360839B7340A395D2DBB34602D002D5332812FB836ED361339E336C634F2369D39742D6032CC34CB2CCA23C625F724072B6134FE363C09A609F431C7234805322997293A266A272D3B89284835B5244939072B2237B5242735E623693979394D2769397D39B1244B37323B69391437343BB8325B39F6293C3B2E3B3D3BB524453B3F3BEA2A2E3B3939812C6B395339292B6B398A39B124423B3539B1241B37503B7E2A503B2B2582393826693925377025343B2B25423B423B373B5139363B393B413B6C3BFE34383B6B3919350025143735029D27743B9632763B5928D232633BE134F02A69395A3B4F3B2E37CE36513B613B2E3B4F374C37E02EB232C323E42536029F327129A00C582EE126AE080A2679370F2432290E334B09CE233C2AF92A7908E625EC290B31033A5831753A1A2A332EDC29453A8635CA39673A3138E7393338AB085A36A039592AF0086D310234493A7A3A693376357231E523912E6A2E92248B2E88374F3AF0395C2CD133B42BD72BEC29123AE929DA28B730570B0E3383313936D0393536D735E539A0379F2B1B33C937EB393F3AE103C9230B362D38E7378F37EC300538EF30980F6B2A1C33E1330F3A9231A2081C38CF26E32EF935C23954381E36E23B2638252FCB076D38592CDF331E3AB22E1A2C2F3A8C3530314E33C4237D3A592C572C28368033DB378E2E5B09EB2A6C33D027F239AC375F381F33192C482764336C281E38D633B9396135123CE729012C7431A22B8C37383A3938D939083A372CF7377B315F3AB3353533B72BB8233731B9243B36AD37B43BBD2E2A2FBF37D837962BA437CE3BD9379F2B1C3694331631D639ED2AEF39662B5C38523A7033422CBB331D31C437303879332028CC33A20AE02B2B3A583A4D2CBA28492CFE37BB2E313A432EC408203C722ED433672B632B463ACF238F30FC35483A1936C3390136B2373905452CF53B6C358B31143AA339E037560A4A36603A03334A3C52330B2C4D31FD396D2B1033102B3405EF35A83B3F3ABB371C2CB937EE2BAF35DE23350061341434700EED253909C8258B2ABF2A0634F3251733202C3405C9238D294D31E423AE239E2B8D3CDA080634832D0924E308E62840262A335E2DB7084931C7238C0ED227F1035E2A7D252A28E923DE247E2CA53AB931CB2C9938BD3174369C38AD3A5F2FC331F73AAD38C831013BD931A738B22CB43CD131712F632FA238BD3A8936C02FC03AD23AC33A5B34E83ABA38CC2C0139953688349736E931DC2FC338C434C538D03AC838F138CA38D43ACC38F32CCE38D83AA836FC31AA36DB3A7A34AD36D6388D297E34930AE13AAF2FE33AB22FB636E63AE638E038143B3E2ABB36E438EC3A1039C6301B32C236B034EC38F33A2A2DC736F63AD43CCC0D992FBD09BA234E080425FD3AD72FFA383C32922CFD38043B0039073BF03AF831EB3C073D0739E92F09395C2DBA340D39123BE9365D340E3D1139BC31CE3AD9315B3216391C3BF636782D5A2ACE296B2AC923F2329B2B2E0A4008C8252428B723B82317330F04182A02292E373A2A773B77397F3C6A27373D893BBE081B37B823753B3C3D363D4539EF233C3DEC34EB26B00B0627463D7E2A463D2924483D1C27393D4B3D3A3B5324863B532439393D3D473D1D37FE23C3320D25C2076A27E3081137DA2A2927753BBE32EF23623B633D753B5B39CB2379324C3DFE266A3DCE266C3D3624363D583B53241F37453D53394931753B553B532467393A0B693D3E35423D383D443D5124663D1137C80D773B623D793D383D7A3D5B3D3A3D6C3D70258C3DEF23413DB524EF2327354E3D813D773B8C32BE26D62ABC242A28BC243F09980979302228CC23F6328F2DDA2AA33C0C2C7125A22E9E39B831CA2AC93B8D31653CA2396109683CB426053308253833E52EEA3052387435C439BB3087389E3B0F38F82A3E3A0C3C8D2BAF3B573ACC2F762BD63B84319F2BA32B243172278D2B3C3CD92BBE3DAD37A2356231F02ABD30663132389710E939672BCA2A373A0B31393A16330D312F3C692CB83D1A365B3A322E343ABB2BA13BA43BFA3B3A26B53D0138573A2B3C5A3AFD395C3AEA2E202F4A364F3C4C3CAF33C139AD334F2C86370933DA30B537F43B8F2D342BB33BAA2ED037763A233A0238FC395A3CBB33312E1F36E103782B6432023A9239553AF43B58383E31A9391A2EB72BEA3DB735EC3D8933313CF337D4393736213E512BB039D429E335AF2B682E6F33B42B4331C135272C86336D3CB837D9330831D4357231332BC92C42382B31203AF93B51338D35FC3B0536452C6438BB330B2C9A35E0291C31E0396C2C203179333702342CE339663AE033B1372C2F22273E387230D033773C19382C3A3F2B152B8E37C225143E1C264A31B1395E35072EDD33B839163CA130050ACF2BA6331336293AFA374B3C0C30E030093AD13B902B1D3CD839202B44362D3E4A3B5F3ED73BA234093CB42BF439B4353633F03DE43B262B432C12264805E229EA2C180A2C2A003D182A1528C723E403DD0D6025EC3DFC3A1424D30A930A67257137C9234829840E172A652FB0268E0CFE327036A83A72363B349B2C4E089D38AE3A9F38FC3C8236662FA438FB38CA31B83C4B34BE3C4E34AB38A636BA3C8836B038193DC23CFC3CC43C133BEA36E231CA31BC38CA3CCA31E731CB3A6734EC31EE369D36C738B5344234412D7034D53ACD38FA31DB3C7734A82CDE3CD438012DA92FE23CD838072DE23A0932E43AB42F0B3D9636ED3CE93A4334EB3A0539B034EE3AEA384532F13A9634F43A24329A349D2F6A34BC2F072D3909202DB42C2E32C3313032E72C32320F3DE02FF738043D003BAE3ED736083D40320A3D8734F63C0439B234CA36103DB634E336B8340F3B153DF22FE83AC13412391C3D9A2C1E3DC8341739752D1939223DAB3C1528A12E180AAE08E3089A2E86386936DB35E52AC6270E01EA39C5250A37FE2614273335322941285339303F9632333F3425863D3409783D383F4128893D7A3DBD089D273E3F9632403F7924C5235C3D2E37860941281437473F3A3D793106274C3FA5264A3F7E2AEE0A343F2735443F353B3409543F7739B4261137503FC9275A3F4D3F593F583F33354028343F493F903D12377824643D7824463F4C3B4C3F342539396D3FAC24313F5B3F713D0E285B3F573D913D7824653F2F3F6B3F5C3D2E39EB264A3F34257A3F343F1B374E3F5A3D843F5F3B3024F22D180C802854244809CE2A8A2B3A2929247429DA25A92BE008983CAE23A93D79089529762B4E3A0E3EB5023033492ED233EF3B343EBF33E7357C2EFC392B2F6D2B142EE123113E22385731BD338A3C1E3E8A35A63FBA0B743A18307E352E3CB829693E283AF030493CF73DAE33F635FA3D503C86375D31BB330D3A1838A635183CDC29CA3D3C333A3A203E8D33703E033C723E4233B93F722EED3BBB30CC3DA22BB33D713E402C223E252B2F3E632BA22BF839233C13385931003C1C3E5A316D3A1C3E2C3C5F3C3B31192CF728583CA20AF43D4B31413CE139433C252BC837ED37E623253EE43DF23D5638F43B4A247C3E473A6C2E212FFC35553CD23F5C2EDE3F3536C3354029073AE635192C463E7D2B393EA12E88315A3E6D35113A163AD2376231570BD4376C33C90702402436B73D793AEC3F0A38BB300D40DC2905248F2BCD3774323431570BE0245B31313E143CF42EBC37D933EF033040CB07EA3B9131A53F773AC62EDA359B37F10AEA3FD339C635733ED139ED2B4E3E112EC530142EDE24DA3B192EDC3BD52F4E3E9B37E408802ED73DC9339E3FDC2A31334A2E4008793E363A5D38D03D0B3C052F052FE73FC729622CE023273C102EF33BEA2AB223D00A912D24284D3506343502D608023D5B2CE42320052224D227F229DC24BB234305933AB523860920277E24D1313631382729272628CE0A2927C02CA03E0239AC3C462AA43E75365E2FC23141347A36BA3C7D36063DCB312A32B73AB23EBB3CBB3AD531B73E063F8B36C72CB438CC3ED42CC43AE138C73CBC3ED62CBE388A2FC53ECE3C4134F13EC638FA3ED33CA240D53CF0037134A436D93CA02FD23ED138AB360032D538D83E0432E32FE53C092DDD3EE83CE53AE03ECB3CE23E1332F23E8D34093FBF36E838C1369334252DD22FEC3EF93CEF38FB3C0E3DE008B12C3A2DFE3EA534003F9540033B043F4232C93C083B4632CC40023B4932E136EA2FE4360B39E636113B113FE138133F1B3DD03CCA31173F5D32193F1D3B1A3963325C361328172AF0038B2A4108E22AD134A43F2840753CF32967315D26DB2B3502D2238F312C2C9F32E708CC2EB829DD26222E36056B2B4A244830AF230B2CED2A90261541D307E7231841812E833215340D2A0B34072BDE09982A003DB00AF42A1A41E5295E2AA529133A852B2A41BA28062A80282E41762B30413C262D0AE129342A632C922EED2AA12B5D262C2E90262341F9280825FE2A150E760ED623DB23E92371253C263E29D32A442E6B2AD129442ECF234E41562C4536CB252028222BF5294A24502CB023B02F4C0C1E41E2351B418A2BB1237730BA3736413F367227182BE625923B1941E139B030C333C6293F242541F32E354173412C3A172A2105E72B2C2C0741702B0C417A3ED62A912E7E2BB42BE82A5B09AA097E41E20A0F411F411B41AE2EB423B923472F2541B42387317341222E79308941922BB63729416E4124418D411534C80D3F419B412341C8372641CE37B20DA43B5A41802BB5294741C1293A26B22EB12B8637622E8B410B31C629AE2EA72BB829C80D4A24FF3F6B27B9230825942A7E2B222EC808EF08AF23C3263C0B9A41E0253C41DB3933412E313641C53DD0272C2E9E419141A20A93415F2BAA41DA0CAA41162E2041A0416D2BA637A34112269A253E2B6741CE236941CA419A419D24D6263527442EA7296B40672A1441570B812D604136418D3860415D413A41F52A1B419A2BE04139096541772AB541F62AE708D223AA2BEE0A26415E091E25662E0A05D00AC130CF2B85316541573C99414F24622BE7236C41CD0AC8254405CE23A5081A2BF6413D2CF841C941A430D02B603E2233203F332EBA29AC41042ED62612415E09B723672C16429A41C2257E41903F1B42F741E4413841FC320D3A3702DE237137C33D19429A41602E6541D70BFC416141570B61418E412940D841E2352341910E242E2342A82EE6413A41B041570BD2237E413F421A33673182358A095D26583E4141B5247241082574410D42BD237741E0087941E1297B41082BBC262D420A42E73317410D42F6411D410241DF413A42332B3229182BF93FDF41FE41292E72300242563C203F0541922E7C411636E02B492B872B0D2A2E0ACA335F09AA41F30DAA418C41CD418F4144420142AA3F51312030413822425B41E126E229982A512C8A31E229552C283417338D2E2C2ADE41B829B12BB02F5A40FD2B13419A4130420E420638F94134416A4240420D2A8A42912DFC414D4257426F42AA42E341A84289428E4128311E41B242CE371A426541A7428B4133098A424542D04141416D2BC641BB42BA2736427F2B98093342BC42C0422B41B5427629C741EB231E415A425E42BD427641EA39C7413429C22CC533C63F472CB941270E59091240293A593C773A1A3A6E426D3E522BC708832BE203532B4D0800336D41A8420425E1267730F82BF642552C5333D0277D27532BA925EC293241BF423942B74238415631FB3F9F428A41F72A982B36426641FF2968355824BA23812DFC418D38FC414F2E5B42404125416B33662EC625A4383B24A7415C41042B512C97092631063EEA4202332C2C0B26B6420233E92B782B003D88068941AA2C8941E541982A4B41DD233D30502BA542F442AF233E42F041E723FC41D0423141D24240433A26F62BC3425842322E582E23414542FE2AA831EF41D241672BC30B5841CB2E350593428A2B2143D730AF0E36433943B141122B3641F7245D43DA42142EA00C7A41CC2E7C41B80A09414233D53DA026AD2E1C2B18422F416F426441182BA9261142C808042BF44117422543F34262416742E9291411A3317A432B417143B6427B43C9236541CB368941E62350427843B342A8423B42AB42EA421B414D359C41900CC5236F315E43CF0E464390412141D2414B432C2E092B662EA92B1D43773C8E4383431C40C242424233099F41E3038941C442EF29F431FF410425CF0E78420D3CC808A32CFB397C4183358332B030793EAD43BE236840332E9943D8410D241743A0411034CF0EBC391133332E563E8B43D9428D437C4314249A31F42A0742382DA5081342473C2A42A8424343A443D8357F42C5413E40BE42182B8609462EB53D9A2549427543982A0A2DF54179438A41D1421B42C72A1E412331A341FF39400A942A1F43C8083E43A030B1411D42EC438733D8339043ED4302436F43A84241421843D84124280942424303431B410444A04191412C2A0E2B3343D443DD23E425D743CF420A4400448F438043FD43FF298E413F247E41E00D5909A4336F2BF92BD229F92A8C432644CC42C627202B33308F2BAE414B41BC42B329AC435E439541F42AAE428E4154099A439241C443C60A1E414343B84205449F4145428E428D2BB5432142C4294942380E75418D411F2EC308D427062AA2352341C029F42A13426227D730CC43DA43CF43EB2A1343B24110419809F92AEB419A411440EB2E043EE2374F0811281E435443A841B0233342EA43C70EBC247F43FC43D32F9543392E9026AD33E92B8130CF293C38BC4341411A43BE301F266744E5439342E7435F44D8431B414331704442445F424231042B63425D336843B6425642072B7542E8390242522C8237E043A543EF2936446529102A6D421A44A508B741A8433944D141C443442FAC421B4493438C4141448D421534A3243F43474493424941064398423F363C265041B544AE23903515425A2B2D0AC341C4333F3960448D43920C343E1E417333F243513186093E09F5436944E7425743262BCF2BF643D323042B35436D43EB43514206388243C42309241E41E2433D4451310B26CA44D82ACC444A42E1292F44EC41CB07B143A744AB0BDB449E441F41284477444344302B460E1D40E6295F44D533DE09E523102ED53FA8397C2ED93D5131062A4E2E423822429239B2237044DB433E44A743302CFA39F1437D44D623CB23F008A641E344D2444A41442ED544E844DC42EC449841C629E23B52433B0D12454700E641D4449A41BF237E418E3E89412E38962EAE2B460E4644E34449414C2B4C41E12638439B42982AC341B944E229BE441427CF231427CC424C0D4C2D2F43ED44D22A2B0E6F33D0274D2B273DD4278F35FB441A414E2C253E9242AD4125420A2D164402447B43D242972D11424D454D2B012E4C42E744CD4353452F4217449A441C449D414C0CC929AE4150455B457B2B74435E43B543DE29F23272270D2C142EDE237B40383E44434545F22D0A410634E3293E2B6B44E94357445F45A9425E45524540424A45BA234C2E10429F443F440D4440446D2B6A3ABB337B0D7745C825B92674449041CF26BC248645714463412D41C73BAB0B8844364179307344F34291442E0A93448E2B1943162F7735B00A7B420B2CB8435542B924253A584409448145EF29E62AC1434144F62B4A437C44CA33050A964536452942FB42D644E041212E19447144BA29994524349F45783CE041340901444A448B413841E22915457E41822910451C2B57459442042B0A2D9842F22BB6441733DA453645DA45BF44CF455B43570B6E0B7044312C7044C6411D458144802B1345B3441645FF3C3C38473C9643ED30BA28760E473C0D436C2B5338603CEF3F1042C53DE629382D3E24A331DE29C207732C672ADD26E123C1448644CD25FD29C3441A450A2AA331A9453909AB459345CD439144D7425B09733C704437337044A742F944C441C62732404A441D4677440D45372AC12B702EBF3DBC29A5396445B045CC45AD426145FF2A122BCF412C2EAC44C408180A1E41E028DE44B1457F45BF4253427A3E92299142B044802BB24497424D412943DB45E7239A42534146465A2BAE08BB44E3293A41692C9645D744DB438C2B69452B42460EDE29BC0D7745A742A145AF43292E1C2B0242DD41073C61260842D32ED7451545A6427E4598456541ED295645C429744332463A4423413C314E09624241462442E129E94354443B456D44EB447E41860950424743D94111432841BE3010304138773C142E80280742E24410374D2BEF030825202B743252465842E52C2C2A52463446563C10422C45E643D3430833D643552C7D468609914539336E432D4641438045A7469B418A42FA23A4461242F328A1467D453A46DB43F92AC7459228C74508452F46C4428A4565295B2C964518281D45894651315B2675318E463E24AC458C431546B2435B09983C1142DD415646C443142E842A4046E344564379460846402BF2030645CF434343C043374482460541B745A545A9426C33BC2A884664444A44CA4661430343D8428D38D337B5430541C24602445D46A3459C3502422F2D2745F643E743E7418544BF45B4421B429A3DBB45AB0BBB455041D74336451544C5232D0AFA42FA2B512C5145AA460745413E9245C443A2412446E10371458044F643953EDD43CE432C46EA448845BB468346A508592BA5332D42064666456946B346DC467E451F4782468929E02B7146A4447346EF3FB00A9C4682448C46F44154441542332C964507457E45CC41374430479946F039B7086744D545980A524641474F43EF3FC8393547A84107424438090D0844A9461E47094589452147F10A7044172A44476546F630D546B12BCE425B45AF455347FF436045A944F43E343EC64688268F443E292B383F2E1142AA44D04134468D29C745DB3DCA430234DD2399097038E24548309931F245A8423602AE463D473A468845704733467341D32365291142872D7443B2460F472A473A462F2BB44591416C40ED44D7443F47CE41A3443446EC2E2B387B315846E5421F3A782E8C436E3C7D2E732D83340436C4239C47C841CB45EA449747A04499479C43F7443E2B2A46BB2B1146082BB94391445C465942CB46BA28A20AA94789444B053629563AB339A7429C30923BD933AE23C7452834B846C346890C76461245BC237E47F446F325292E2241182AF744ED3511331046C646B747B524A644C6297F098E478543C245D7443343E5237137F62EB341A94371474A47FE42753C4D475341954212444D41D7431424D0441F45E6419742EE453B24AE469D24AE468D4475436B47DE37682C1147A0421D4764478B428A42AD2A6E463A46772A9343A430AA4611449742D4272641D8468C435D456541953EBE4736415240A947E82AFE46FB2E4B054B2BE733050A1A48E3330E2A5D478E47D9445844FA30E73370419F4479410B488E47C145E9299E42AA467F35FD0DEC476C33DE09E144D545494107463045044647467A47DE451542453C2548A9443047C642153401425C3A7D47FA2985477246F144DC29F629D345534349421F46C839B447DB47C846330549451346622D1E40210545477746230E25424B4127422927C3412A3B4748AC464948D241180E9645D545D6465047BC42DE2463459F448247AA46AD473844D841F203B6465E43554720474244322E3940F43B2A2AA243023468416541FD0D6C481A38930A1D48192CA12E55481E45E643B023FD3DCC430D24D0461B410128D0469F418B2A9C43B8459E3F313D1847E344EE2BA9477343EF47D645E544442E4D41554442483545F04738452228DA457129C7459C35302ED229C42EC729A035B924853522339D442B4663479F440C4420479243DE292C41AB4707488A48E3475E433242D845B523C9233B45BC42452E1142430D582E672A86090540CC429130672A4546D2485B4505407E471B417E42E2488143C545033612471B413F3ED1476D2B980A59484A399348F2467A4883453C266E48C4430C45BA23112B964590453C4761476A46CF435D3A9048532B97351D457248A1425A456144050AEF48D744EC2EEF48DD23DB35FA425B45EE087044C90C9C451346A245D347AA2B1A2BB3437231B01058405B481346E923DD4212479144982A23491E42F43B2C2A1D43EA452043D746FD464A05D32FD3293E0A9744E4419843DF4639448A2EC4439D43CE37302F11454942F7330B499546F629BB476F2DDC30D63B83489E3FC7081D43D545CA2FEF4843430C44434241444A48562CF0422B45D44564482E453A4198423D2E47465C490747BB44E3084931C341CA2FBE47424772311F3F6348E3443C09AB485D48C14778488F4710488148824648492A3B70441646CB079545EC48F23BAE463E28B5231D3AFA4696486748CC433305AE46ED233C4742387038F745E123F945CF28B9413E284E4273450746D747CF283049930AEF48272D0E49F6482341F8481F36292793482C49D533D826F9473A426240BF47AB3F6B498D467C41B723AE46A6495131E3268C446543EA2BE7265B46EC46403BF5469E41D647F829BB45A729AD23DF4828478E47D2425D3AF4330A2ADA446F314947D146192CC6259348D5456B49A2427129213F56449A41D027AC49CB41F4485149D0416F44652C3949E2464441003D383C5137443176436846A842EE2BC3493602BC24E6491F38F443E2449D46D826F441412B533E3C2A172EBE41082BB9485C4290435F2BE72380281E2C6E0BE64961415B09312CE64950483147DA410448CD0A5D3EA049E74350477D466247C948C348F448A12952470E4A71448447EA478647C4430536024921241F48E229CC374E2B182B43420D421D4A3C26C7430D46714450499A49AA314C48CA3327487E3A3D491C2B773CD83BEB493D489542E145D9459A4250415A43DE459A42370571487E4565358A423A26502E4B42E349A646EA446B46E733C549563A202CE9494B47DE42B743B6475C48B9474A057749424A6E49B423D107A947CA29E1238E494C0E832A9149EB45EB298B49F6295D3EE235634A252A124ACC489A41C4483E41C542D241B123574A5346CF43CB076B3AF33F0548C248274AD649294A4B48E346D029C745A129F148E8465D42403BA92BB043D22902428A2B2544D747662EB9238C467C42EA2BE22391460A2EA20A3E4A2947D242E523574A6227574A142E2A282B49D1442045EB2DBF3B1044EE45040E1649A8426D328844C7492341BA357044D12A70449C49DA3D953A5941F747E843454A570B162AE6497D40E649C830602ACE47ED49962ED730CF495A437D46433141496144F0494F48054312488E3C1149BF49474ACF43A3464E49FF480648C3489B44A90EAE46F928054964486B492F4568483843CA2F9446FF46134AD744DE464044914118333A49A1482F34A64A8443E241F745CD45D344E841AE08AE48BC42A609EC4AE529050ADB46D44A274AD64A7C48AA43930AF74A622B45433749D8419B3F73469649652C0747FA42C523CF234E464D3315485C451844E92963332840DB3F5131E0084B49584995421241984229422834E4032942F232714AE041D9442249FE4936412649BB4A762D013A1E3A24443C408C432633FB334A44B8300538B548460E4841E8291442104B0D4A6A4AB74255477D43954A3A486644CB445748A04A5E4130344B46E3290D475B45EE48E5483049FC03C64A3E4BBA46824606347F485B2E0C416641392CDB295248C629B623B13B002B5940DE24AE461C45A948DC4A3847B7235C497D460B2D4E4BEA0CA8476C4B79485447534BA3445349A208EF48884088486043D841063CDC49C74472315B2C9E4AE3440D2BEF48C0232C2AA92BDB30CB074C3ADD23CA23AE0A3527E1298A388B2AD4278906D907D7075F2A6B2AE941F23F3A268B2A382AB623CF28BE09DD230B0ED82A47052105E4232228DC24FA238940B423E631EE2FA62FDD2F4134C73CAD34B5028436D3310F0C5F0B202DE82C9D408A34C040012DA33EBB2FDA2C8309CA2FED07CC36FF2CA140BC3CCC0CBE4B5409AB0BB42C900C013D153B143FF23CE83EF240B53ED23CCB3EA73ACE4BB2400F3DF22CB84BB24BE73ECE401B2AD5387236EF362A0DAF2FEF2FB4400C3FC03ED9400A2B4909702DD2403A2DA72C002DE408153F9D34EE4B452AA1293E295628740C842FE84BE627EE2CC7342027022D012DE425E726D23C2B0ECD28CE34D3232C44F232C429E530A129C936DE31A72FBE4BE3262B32612DE4081331EF035B2C7038470D7F3CF1033330E223B723AA093C2EE6088D3FA129512B9539A508CF23B123D3238D2A1033D93EF94B0132104C9D2CB80A2E43F44586403E267D43F7234830462A9C346B344625F731C240A140C9405E2D502A2F2DC73B6821A610CD0AE503EE2B234CE7306D367F3C243D0E01BC260C4C0239304C2927BD09C934B80B9C27C934402FF438B94BE640D0364405364CD22D4A4CB02571250425DC24DE23072F3527BF23F92A624C1C0BBD23A1290E30882648051C4CEB26A2451528644C7A39572BDD363432D44B452D712D183DE62F212DE63EA636C74BCB3E3B34D840F003C84B462D3B2D134CAD3E864C844C5D2FCD31FC2C9B34BD4B9E2CC84B534C003D604C1C376132063D874CBF4BDD088534CC36C70E2E2D013F28328743132D6A40B12CFE4B5F4C152836433D303330C2070924F0282B4CC23E023F094CCD369F34462D5E4CE823BF40E43EA94CA72BF53E090D602F2D0BFA3E952C8F35BD463B24CC23E123B1238C3BC33C1532602DEC310E32D73A172DBE4CF43E642FF73EAA0AF93EFC2C952C9D2FB740073DD443ED4B2C327F2EC24CFE0BDA4CE6231331FB2A1E344D2C6A4C8C3BAC39C308793037399239042B514CEC31CA36DF4C124CA42FD74CB224922C3132DB4CAA3E544A6D32562DEE4C7D43763DEA3486298B2A87481C4C8F3259091033CF23E04A1F24B34C3A4CF83A743BD84BEE4CF14B3409F338AB0BC34B1226E223E623B623CC23A54792282105B34CC23A184DF538CE29B14BD74B8A4CEE2CB2231A4DE9297D25753C473FE223363E224D394CB3342B4D264DBB23FE4CFE3C544C013D8F355E091F24362AD52B4F2B4A4C744CCB07D307732D4D3F5824930A7F4B1C4C930A32294C2FC923C423FA23DC244D4D87245E428C40BB2F562D6634AA0A9D2C482D4634F44C1E2D57342D32653A952BC50BBC31072D0534DA31F548E540834CE84B1C4C6B4CE708F9449A3A0C374A4C383F3D30D0484238E025B708B34C672D963F484C1427462A8F268F36322DD743D724DF2C2A328B4CDD0D4E2EE7231033EA344F36CB4CF34CEA2FC308CC23E92A3B455B3D9834884D732FDA2C8F35B623D52FFB369A3E2E098F3A0A2EBC245E093C2AF438CF28E52A554D8040772D2A0DCA36D33E2644C50B6634743BD84085295032D73E994C7B37582AC54BB64DD234202DA83AC308522A584DAE3CAC3A8F40AF3AB33CB83AB53CA44CC52CB03EAB3EB33E3A4CA53E0347702DCF3C294DE5235B34F12FE008C13A932C3A2D1A324D2D082DDC4C792FD24DAA0AC43CC24B3432230AB509AF4DC33CDB4D202DDD4D4A32E33ECD3ED33A5D2DCE2FFE3AD5361C3FF52C083C1C26050A54368229603D542F672B5F4BE13976336B2C4231352C1233BC29EB29820EAB089D24692DD9099E4D71287129E2238D49B831C934562A3D393E097510860D5C055C081D1063182000")))() 
end)

Limited.Name = "Limited"
Limited.Parent = ShopFrame
Limited.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Limited.BackgroundTransparency = 0.500
Limited.Position = UDim2.new(0.0185950398, 0, 0.299145311, 0)
Limited.Size = UDim2.new(0, 181, 0, 43)
Limited.Font = Enum.Font.GothamBlack
Limited.Text = "Limited spawner"
Limited.TextColor3 = Color3.fromRGB(0, 0, 0)
Limited.TextSize = 14.000
Limited.MouseButton1Down:connect(function()


local name = game:GetService("Players").LocalPlayer.Name
local gui = game:GetService("CoreGui")

function showMsg(text)
spawn(function()
local msgwindow = Instance.new("ScreenGui")
msgwindow.Name = "MsgWindow"
msgwindow.Parent = gui
local msgLabel = Instance.new("TextLabel")
msgLabel.Text = text
msgLabel.TextWrapped = true
msgLabel.Parent = msgwindow
msgLabel.Name = "msgLabel"
msgLabel.Position = UDim2.new(0,-500,0,200)
msgLabel.TextSize = 40
msgLabel.Font = Enum.Font.Highway
msgLabel.Size = UDim2.new(0, 505, 0, 500)
msgLabel.BackgroundTransparency = 1
msgLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
msgLabel.TextStrokeColor3 = Color3.fromRGB(math.random(255),math.random(255),math.random(255))
msgLabel.TextStrokeTransparency = 0
swoosh:Play()
msgLabel:TweenPosition(UDim2.new(0,700,0,200))
wait(5)
swoosh2:Play()
msgwindow:Remove()
end)
end

function findHouse(name)
local yourHouse
local things = workspace:GetChildren()
for i = 1, #things do
if things[i].Name == "Property" then
local aHouse = things[i]:GetChildren()
if aHouse[1].Name ~= "PlaceHolder" then
local owner = aHouse[1].Owner.Value
if owner == name then
yourHouse = aHouse[1]
end
end
end
end
if yourHouse == nil then
apts = workspace.Apartments:GetChildren()
for _,v in pairs(apts) do
local owner = v.Owner.Value
if owner == name then
yourHouse = v
end
end
end
if yourHouse == nil then
showMsg("No house found")
end
return yourHouse
end
function ISUpdate2(ItemSpawnerSF, gg, txt)
yourHouse = findHouse(name)
local i2 = 0
for i = 1,#gg do
if string.find(string.lower(gg[i].Name), string.lower(txt)) then
if gg[i].Sort.Rooms.Value == "Unlisted" then
local gg2 = gg[i].ColorOptions:GetChildren()
for x = 1, #gg2 do
i2 = i2 + 1
local B = Instance.new("TextButton")
local V = Instance.new("StringValue", B)
V.Value = gg[i].Name
local C = Instance.new("StringValue", B)
C.Value = gg2[x].Name
B.Parent = ItemSpawnerSF
B.BackgroundColor3 = Color3.new(0.831373, 0.576471, 0.0627451)
B.BorderSizePixel = 0
B.Position = UDim2.new(0, 8, 0, (((i2-1)*22)+(3*i2)))
B.Size = UDim2.new(0, 164, 0, 23)
B.Font = Enum.Font.SourceSans
B.Text = V.Value.." ("..C.Value..")"
B.TextColor3 = Color3.new(0, 0, 0)
B.TextScaled = true
B.TextSize = 20
B.TextWrapped = true
ItemSpawnerSF.CanvasSize = UDim2.new(0,0,0,(#gg*22+(i*3)+3))
B.MouseButton1Down:connect(function()
press2:Play()
local thing = game.ReplicatedStorage.Furniture:FindFirstChild(B.Text)
local num = math.random(15)
if num == 5 then
showMsg("Tip: You must be standing in your house for this to work")
end
local tbl =
{
["Id"] = "{B5G070FF-OMFG-4B87-B2C1-0A90ECC9C78F}",
["Name"] = V.Value,
["Color"] = C.Value
}
local cf = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:toObjectSpace(yourHouse.PlaceHolder.Base.CFrame) + Vector3.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.lookVector)
local x1, y1, z1, m11, m12, m13, m21, m22, m23, m31, m32, m33 = cf:components()

local tbl2 = {x1, y1, z1, m11, m12, m13, m21, m22, m23, m31, m32, m33}
game:GetService("Workspace").CommunicationRelays.House.PlaceFurniture:InvokeServer(tbl, tbl2)

end)
end
end
end
end
end

function ISUpdate(ItemSpawnerSF, gg)
local i2 = 0
yourHouse = findHouse(name)
for i = 1,#gg do
if gg[i].Sort.Rooms.Value == "Unlisted" then
local gg2 = gg[i].ColorOptions:GetChildren()
for x = 1, #gg2 do
i2 = i2 + 1
local B = Instance.new("TextButton")
local V = Instance.new("StringValue", B)
V.Value = gg[i].Name
local C = Instance.new("StringValue", B)
C.Value = gg2[x].Name
B.Parent = ItemSpawnerSF
B.BackgroundColor3 = Color3.new(0.831373, 0.576471, 0.0627451)
B.BorderSizePixel = 0
B.Position = UDim2.new(0, 8, 0, (((i2-1)*22)+(3*i2)))
B.Size = UDim2.new(0, 164, 0, 23)
B.Font = Enum.Font.SourceSans
B.Text = V.Value.." ("..C.Value..")"
B.TextColor3 = Color3.new(0, 0, 0)
B.TextScaled = true
B.TextSize = 20
B.TextWrapped = true

ItemSpawnerSF.CanvasSize = UDim2.new(0,0,0,(#gg*22+(i2*3)+3))

B.MouseButton1Down:connect(function()

local thing = game.ReplicatedStorage.Furniture:FindFirstChild(B.Text)
local num = math.random(15)
if num == 5 then
showMsg("Tip: You must be standing in your house for this to work")
end
local tbl =
{
["Id"] = "{B5G070FF-OMFG-4B87-B2C1-0A90ECC9C78F}",
["Name"] = V.Value,
["Color"] = C.Value
}

local cf = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:toObjectSpace(yourHouse.Base.CFrame) + Vector3.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.lookVector)
local x1, y1, z1, m11, m12, m13, m21, m22, m23, m31, m32, m33 = cf:components()

local tbl2 = {x1, y1, z1, m11, m12, m13, m21, m22, m23, m31, m32, m33}
game:GetService("Workspace").CommunicationRelays.House.PlaceFurniture:InvokeServer(tbl, tbl2)
end)
end
end
end
end

local LogansSpawner= Instance.new("ScreenGui")
LogansSpawner.Name = "LogansSpawner"
LogansSpawner.Parent = gui
LogansSpawner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


local ISSearchBox = Instance.new("TextBox")
local ItemSpawnerSF = Instance.new("ScrollingFrame")
local ItemSpawnerF = Instance.new("Frame")

ItemSpawnerF.Name = "ItemSpawnerF"
ItemSpawnerF.Parent = LogansSpawner
ItemSpawnerF.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
ItemSpawnerF.BorderSizePixel = 0
ItemSpawnerF.Position = UDim2.new(0.5, 135, 0.5, -174)
ItemSpawnerF.Size = UDim2.new(0, 194, 0, 348)
ItemSpawnerF.Visible = true
ItemSpawnerF.Active = true
ItemSpawnerF.Draggable = true


TitleItem = Instance.new("TextLabel")
TitleItem.Name = "TitleItem"
TitleItem.Parent = ItemSpawnerF
TitleItem.BackgroundColor3 = Color3.new(0.831373, 0.286275, 0.121569)
TitleItem.BorderSizePixel = 0
TitleItem.Size = UDim2.new(0, 194, 0, 30)
TitleItem.Font = Enum.Font.Arial
TitleItem.Text = "LoganRMX's Limiteds"
TitleItem.TextColor3 = Color3.new(0, 0, 0)
TitleItem.TextSize = 16
TitleItem.TextWrapped = true

ItemSpawnerSF.Name = "ItemSpawnerSF"
ItemSpawnerSF.Parent = ItemSpawnerF
ItemSpawnerSF.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
ItemSpawnerSF.BorderSizePixel = 0
ItemSpawnerSF.Position = UDim2.new(0, 0, 0.203448279, 0)
ItemSpawnerSF.Size = UDim2.new(0, 194, 0, 318)

ISSearchBox.Name = "ISSearchBox"
ISSearchBox.Parent = ItemSpawnerF
ISSearchBox.BackgroundColor3 = Color3.new(1, 1, 1)
ISSearchBox.BackgroundTransparency = 0.80000001192093
ISSearchBox.Size = UDim2.new(0, 194, 0, 29)
ISSearchBox.Font = Enum.Font.SourceSans
ISSearchBox.PlaceholderText = "Search Item..."
ISSearchBox.Text = ""
ISSearchBox.TextColor3 = Color3.new(1, 1, 1)
ISSearchBox.TextSize = 18
ISSearchBox.Position = UDim2.new(0, 0, 0.103448279, 0)
local gg = game.ReplicatedStorage.Furniture:GetChildren()
ISUpdate(ItemSpawnerSF, gg)
spawn(function()
while wait() do

local TweenService = game:GetService("TweenService")
    local tween = TweenService:Create(TitleItem,
TweenInfo.new(1, Enum.EasingStyle["Linear"].Value, Enum.EasingDirection["Out"].Value),
{BackgroundColor3  = Color3.fromRGB(math.random(255),math.random(255),math.random(255))})
  tween:Play()
tween.Completed:Wait()
tween:Destroy()

end
end)
ISSearchBox.FocusLost:Connect(function()
local yourHouse = findHouse(name)
if yourHouse ~= nil then
local txt = ISSearchBox.Text
local items = ItemSpawnerSF:GetChildren()
if txt ~= "" then
for i=1, #items do
items[i]:Destroy()
end
local gg = game.ReplicatedStorage.Furniture:GetChildren()
ISUpdate2(ItemSpawnerSF, gg, txt)


else
local gg = game.ReplicatedStorage.Furniture:GetChildren()
ISUpdate(ItemSpawnerSF, gg)



end
end
end)
end)

Cmd.Name = "Cmd"
Cmd.Parent = ShopFrame
Cmd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cmd.BackgroundTransparency = 0.500
Cmd.Position = UDim2.new(0.578512371, 0, 0.56410259, 0)
Cmd.Size = UDim2.new(0, 181, 0, 43)
Cmd.Font = Enum.Font.GothamBlack
Cmd.Text = "/e cmds"
Cmd.TextColor3 = Color3.fromRGB(0, 0, 0)
Cmd.TextSize = 14.000
Cmd.MouseButton1Down:connect(function()
-- This file was generated using Luraph Obfuscator v11.8.1 by memcorrupt.

local lIli1li11IIl1liI1111i = {} for i11i11IlIIllIIlIl1l = 0, 255 do local l1IIli1lIiI1l1iIil1, lIlIIII1l1i111liII1l1 = string.char(i11i11IlIIllIIlIl1l), string.char(i11i11IlIIllIIlIl1l, 0) lIli1li11IIl1liI1111i[lIlIIII1l1i111liII1l1] = l1IIli1lIiI1l1iIil1 end local Ii11i1Il1l11I1I1llI = function(Il1i111Ili1iiil1liI, l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii) if iIIlilI1lII1lIII1ll >= 256 then iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii = 0, lIliiiiIIllI1Il11iIii + 1 if lIliiiiIIllI1Il11iIii >= 256 then l1i1II1Ii1li11I11II = {} lIliiiiIIllI1Il11iIii = 1 end end l1i1II1Ii1li11I11II[string.char(iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii)] = Il1i111Ili1iiil1liI iIIlilI1lII1lIII1ll = iIIlilI1lII1lIII1ll + 1 return l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii end local function lI1Ilill1I1ll1l1iIl(lliliiIi1iIli1liIll) local i1II111Il1Ii1IIiilI = #lliliiIi1iIli1liIll local l1i1II1Ii1li11I11II = {} local iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii = 0, 1 local Ii1ill11iI1iI11ilil = {} local ii111lll1I1ili1iIil = 1 local illl1IiIIlII1illl1I = string.sub(lliliiIi1iIli1liIll, 1, 2) Ii1ill11iI1iI11ilil[ii111lll1I1ili1iIil] = lIli1li11IIl1liI1111i[illl1IiIIlII1illl1I] or l1i1II1Ii1li11I11II[illl1IiIIlII1illl1I] ii111lll1I1ili1iIil = ii111lll1I1ili1iIil + 1 for i11i11IlIIllIIlIl1l = 3, i1II111Il1Ii1IIiilI, 2 do local iiI11i11lIiliiIiIlI = string.sub(lliliiIi1iIli1liIll, i11i11IlIIllIIlIl1l, i11i11IlIIllIIlIl1l + 1) local lli1l1lIllilI1I111i = lIli1li11IIl1liI1111i[illl1IiIIlII1illl1I] or l1i1II1Ii1li11I11II[illl1IiIIlII1illl1I] local lIliI1lI111lIi1ii1lii = lIli1li11IIl1liI1111i[iiI11i11lIiliiIiIlI] or l1i1II1Ii1li11I11II[iiI11i11lIiliiIiIlI] if lIliI1lI111lIi1ii1lii then Ii1ill11iI1iI11ilil[ii111lll1I1ili1iIil] = lIliI1lI111lIi1ii1lii ii111lll1I1ili1iIil = ii111lll1I1ili1iIil + 1 l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii = Ii11i1Il1l11I1I1llI(lli1l1lIllilI1I111i .. string.sub(lIliI1lI111lIi1ii1lii, 1, 1), l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii) else local l1l1iIiII1i1I11i1ii = lli1l1lIllilI1I111i .. string.sub(lli1l1lIllilI1I111i, 1, 1) Ii1ill11iI1iI11ilil[ii111lll1I1ili1iIil] = l1l1iIiII1i1I11i1ii ii111lll1I1ili1iIil = ii111lll1I1ili1iIil + 1 l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii = Ii11i1Il1l11I1I1llI(l1l1iIiII1i1I11i1ii, l1i1II1Ii1li11I11II, iIIlilI1lII1lIII1ll, lIliiiiIIllI1Il11iIii) end illl1IiIIlII1illl1I = iiI11i11lIiliiIiIlI end return table.concat(Ii1ill11iI1iI11ilil) end local lIllIiiliiili111l1i11 = function(lliliiIi1iIli1liIll) return ({ lliliiIi1iIli1liIll:sub(5):gsub("..", function(Il1iIl11liIlIII1I11) return string.char(tonumber(Il1iIl11liIlIII1I11, 16)) end) })[1] end if type(loadstring) ~= "function" then error("Your Lua environment does not support loadstring, therefore you are unable to use the Luraph VM compression feature.") end loadstring(lI1Ilill1I1ll1l1iIl(lIllIiiliiili111l1i11("LPH|6C006F00630061006C002000690031004900070131006C000A010B0149000801690008016C00690020003D00200061007300730065007200740020000001020104010F010C016C00080149002301120149006900100149001401200019016C00650063001C011E0103011D01250129013100060125016C003B0125013100380136012C0174006F006E0075006D0062001A011D010101340123010601070125010E016900120123013A011301150175006E007000610063006B0049011F01350110014D013E013B010B0129012A015501200070001F01040133016B0123010A014E010D0127015101510131002C0119017400660065006E0076005D014B014E016F0128010E014F01500108017601650074006D00870161007400610062002F017D0104017301620108013E0109016F012901040115017400790070006500900135010D01280106015101A20182013E0128012C016700870179017B019F012601800136010E0107013B015101270141016F0073007400720069006E006700AE0184013F0110017001740106012C011A0172006F007200AE01A70182010F0163012801B4012B011501B901BB01BD012E00730075006200CB0110011201A301C20174010B013E017601BA01BC0167002E006200790074009E016C010501D0017301D0012401D1012901E301D501E601630068006100CA01EC0136013F019501A50170018501D301E401D601720065007000BF0164014F0106016401A301CE016701D401E5012E006700D801DA01EC0126015301E0015201FC01E10199012D010302E6016D008B01F701080238014E013701FC016F013F012C0123007B0033003600380037007D009F01810198014C01940137024F012C017B003202FB0184010C024C010D0274012C017501EC01660057013101690043011D01B40126016001940193013B012800920107014D01B2010E0112010A0169002C002000A20192014C015002E10149002900BF01EE01570280010D012502050158025402CC01C30159022C01AF01DC01280197010D023801120128006102CD0176023C01B501100152026B0273027F0157020B025A022000350029005B0222002E002E0022005B0246026E00480243017802A40109013C016702CC016302690066001D013F01DD013801DF010B01E101310093026E0111016E017101CC015B02320063023D00150137007501740068007A01350165023D01A802210170023601A301B301CF01E101DC0169007802CC01A601B5014C01D101A40224010C011101B301A902200031005B0231002900630205027400750072006E00200022002200200065006C001901AE01BF0265014E02B2010D01670160015201E602F1017201C0024D02BB023A013C01BE023601C7029502A702CB024E01CF023600D10205019B0218022701B602CB02B802B102B30216029602FF0197015301E2011501FC01C201A701290124014F01A3022701DD0165018101E30254025B02FC022A01A102FF022502630218036602B702690215016E0051012000D302D502D702CF0154020B03640107037501DC02DE022603D6021D01E00213032A01CA02A8017A016400DB026E003A0339031D034A0104018F02910228039402610295011802240128003F035E014D02C3014D039301A70170029D0237010D0376022902A3025302810256021B0285028201DC019F024002C1010B015B025E033D019801A2016203D0025C023E0260036803E602750109036C0367035403D00175012B00CD02250387012703A001390136014F030A0137023B033A034502470274004902D702A602FD025603BA0225024A0308027D031A026B028003A701170334030D03360380018502290305032C03B201CE025C02FD022C03A7011A0381015203E0029F02CE0157037F02550255020E035802120164037203A40174037401B10381013F026E03750320007703330063026503B803B4030B012C01BF036D03C1037603200034007903D4023203B10166036102A403100120002A00CD0236003700D603320031003600BB034B02A502550306039E03D20320003600350035002E02DB031103E102E20237031301D30332003500DA0377034D0383027F036E01070182039F01420386034A02D1013A012502BC023A010801520282023F0111011903600117033D01AE03A7026E01A0020804E8033E01C20154019E026A039A027C03280211044C023701B002B202280340030501A002C20163017B022A010E046F01A102090250012201D201200030005B02300020006600C9015C0276029E03A1026101CA02B902680257020B040F01CE010E04BF021004E90273014D01200064006F001F040E02890323040E012C015503EF0122014B042B017703320020005E00A00126040C0104047302CF01E103FC033B01FE03000496020204560204045902830228016403340494013604FE016F011D03FE0227045A040B023C01390458045F04360373042301DB032E033C03CA037B034E04270150047D024C042F03EB011E041702B20165015F042401BB026701540456047802090470013C04FD0124032D00CD02D2027A03320388040F01350209017302A30120003C0015017D0309012A016604B10113012500200091043C019D04B5019F048D04E7030004AF048B046C02A301630261007D04750132042F043903F70384039002FA038803A0040C0352015402DD016C008E031602FC01F3032802930307019503BA023503A601E402C3032201A70474018C0306014A0369046301D90471015403A3029902FB02CD047E03CF04F503D20115012F04BA0483039603EA0399031401EB0420000103D7023103D702BE047D04F704AC042D005404D3035E046401A30388041003EF041403EB035B023300AB027B046302ED035504AC0400056004EF026E019302D3049703D50416032000D80308056A039704310030003200BD03E10328007802A1030105FF036204E803E10206059903CF02AA0230000C05C8033200390034003900D5033205F0037C034E03E804370263022F00C80335003000330035003900350532003700330037003000340538056A03BF04C10443036B036802950243042A03CA0407032C032204BF0236014B033401D0019E02CD04DD0100043A029C02A7038004AA035903AD036E02B0036B03B703C503410263036C055F0373036F05C70321053202C40373056903C303B20361036F03DB03C903EC0139014C02820163011A037A0415017B00200023036C005B028B058D0551018F058C058A059005930592058E059505200032023104CA01CE01350459026D04C20315019F0338004504470482051A023B045F04A10249005B009D056B049F05A7016F015D0070022505110503059104CA02C4020902E8036904A401AF059203CA0263024E051E04B5016404AE04E802F6031501D90230043204AE056201B00595027003CD025B02C90346049F01800421047704FC032504860528045B047404EB042E04CC05CA0184023402C8048401A503A2055B02A405D60516026001A3018505FC02E9054B0219032605610413055E0527025802BA020004AD056A04CF05C005B2055B02E5056001E70514031001E4040501BC02BE05EE028605AC0504067302F00107064900B305AD027803F50433036E03F105500136027002EF057B02CF01F001D10316067501ED042C04200032047C043A03D8054A0483042B042C068204FC03DB038F045704DD0572042A045D041F06BA05F205D103AF0136067804380615013E062604DE05790452047803BF04C505C802C705F001C9056A020703A602840194022B018B024F06C605480353062E00F701F901520220042D06FC03C2057D04CC04FB05E7049203E904D2041203160515036804DC038C042B03FF059F03CD03A203CB02E4022B04BB055403A0026705AE04F3025206A5022D05C8039904CB038803A1035603740654022B01D303D903D6033700D80338059B03DE039D039401E103E303E5038E0605059803D604ED03EF03B304640691036101E904C0041E04F90387033304180335039702B80506035905B10112015C052001DA059501100457052306A506FC038B039E02DC04BE037C05B903420271036D0579057E057703FD037401B106BE056604D7050B0653010D0626042B0489059705CF069405D0069605D106D40604019A05CD0570066C04B105A105D3052000EC05A605C90684052204AB05FE05C60626043704B205B405F505B605000410031503BA0553033601BD052D03DA06D10561068303C4057B0651063402A5022C01CB059B053304E606F5063804EA05A00373069501C606B601ED05C4055E063106FD02DC05440637065C04E1052706000710063901BE0566012B04A305A505DF021A0685051C06F30510055502120501047706DE01A903A202AB030C036D0283025902B6037205B303740520009704C306A202B206E302D103C206D906D00538041D0588020A0672011106190784010906A7050C068505CC065B00170706061A071506A205F4041C04190654031B06220676063A065507B303EA04780326062F042906F703300659053206A4040D076207FD0233060E054306710440065C04FF04580720075607350611076C07E00572076B075E03380677032A0656064B065806FD06A404FA06C902FC062401200055064A067C06830707015A06F80172005D0649040E072A01F7067E0432038707FB06C8052B01C3054C03A1015503840601051E06F4029601800381010701CB0487046506B004EF01A4015F049F07CA02A1074803A407AE0630048503A40683013B04E204AA050104B107F505700405045B0463055B003400360034003300150620003B025B02C0073300340035003700C507C70720005B003100390048053100CE077D00C8073E01C3073000D5073A0232023202BB070E0666040B02D107D20733003002C5071A0229024F02AF0749008E038903E004B301E204CB044503B1059301A307ED07BE03D8048904E104BB02A5075E01BF02F203570229040102B5068A03DA04B806E304E3050107F4063D076F0175047D03FA054D01F0020306A7074E01830139017501D605E007CC06E2070A01C007C207C407E5060C080106C203970471022602820512084104C507B5075401BB02B807090849063B04BC071D086C00C007390037003500DC074206F407AE07C001F807D705150884050308D205EF07FB07F107FD076302970428002C023F05350032005B02350038004605D405D20734005B0236003E01080546053900080552083500D405CB075D08860243052D04E2033100E503550839006608C30739085B02350560082000090537005708720833006B085808320020055108390038006308E30338007508AF02500819052F023800AA0234003700630834003800360084082F0232002F0432027A0733004805090563020007CE05E706A005D205270850012908CF053F0114089E061608180209011D07810525028C04EE02690367013B028F0321015E05B703110125017B05520505045F059801AD04AA07A807720117021404AA088706AB06C4015B008C06340031003400E807B5052407B7054D02B108C5057202800392052C02D90336003900D70720004D08C3071E05080534004A057908370036005808E1083700D4052F026C088E089F0336003000D503CF023300DB07CF027008EE087A08080538003000870872085908F80868083200E208E2034F0884082005EB080805330584083A087B08F908C70899059902C108B7037704750369005B004005C1073600CA08EB06CC08ED06BB08CF087C020F0326015B024D083300D90363082E02F8085F08330061081F055E081A05E20396086F08CA07AA0231004705AA0247057108C207C7087908E60751082F027108E607310084088C06F808D80330006608EF03DF081905CA0775087A082B092005E201D808DA08CC0784087708380888083000E508CD023E01F8083800F60851084105840868085A09AA02F6084109E3035609220975083E093C0930020609D60371087A0838006D095A092309EB086D09770825094309F80848052F02CF02310038009F03CC0774081B053200F80835052709200035053900990533060C0918080E090902C408F6083808CD07EA063B04EC062805B101AA08D0081D0925011F092D02090534004E098905C207EC08510873082E055309C80336002F09E203EB0801098C087508EF084F0888083405EE08D6030B090A068C09DC010F098F09430991081609940918099609810418071C09A7029B09D908A10948056608380884088C088108CF024F089F03EF08D6035808D30766082109FE083400910865098E08FE08A9097501A0094709C207CF02EE03FE08C808390919053E097508E40368085108F608FE08EE034205E6088509EF083000710843053600E50934057108D90343057C08DE0858087E08560940053109DD083400AF0914095108C7083300B609ED02C208BA0964015B00D2098C06BE09C30602051909CE089809C409B408D3088905CA077D08A40956094C09850959085408860295085609C708FD091905FD08FE08E503EF035B08F7083A09090ACB07EE088C086F08410942056608E708EA09E609CF027E088509820985091E05230AAF024909C8085E09EE039F0346052109ED0953088909BC039C097208FA09D40582097B09370986023900550AC8037D096509D9039F03DE08D307F5087D09DD0831008509060A3800400A3908460A52085108E1084409EF0323098908280AD5036709750904090809D207550955087E096808E509590A92087B042F05B709B104AC086F0311093E09010A3B08F405BF09160AC109DF01C8043602C5091C0A7F093600E0091E056C0A86093A085C09B309CD024705020A63083200CB07460AE709F809EA0873090C0A3308E10772011E08C307CB07CD0722089E0524088A0A0D0A8D09AD08C0043D08EB073F08F307A007B90AF707BB0AAD07BD0A1104FE0734010008E6041708A7080903FA07A903DB04090899083C07B20A0F082808F107A1081001A308BC08A50844081D071B08AB053508E407DA07D507B00ABF05E8060B012C08CA0AB706F20792074608CB0A0808BF0AEA074703BA0AF907DF044708CC0AEE07E60A0708E80A3303BC0AEF0ABE0ABA074208020811064508F60AFC078D034A08AC044D08D6084105F7024609720A3A0A400558083A08210A81085F0AD907AA0233054A0A530867095E093000610AA809D309CD024805FB084905EA08CC07FE0877082B09CB07A40A5509490942056D09EF03A40593081F0BC90938009808D80602070D08DC069E08680328021308ED01A4084308000BA80887047406C3064A043801DD07D7056B02F503F5073F02AC07EE0AF607C20A4607490B4F0296014C0B16064D083205590A5B082F0ACD028108FE083808AF094105DD0947057F08EB09ED09D909E608D6081B050E0B8602DE083C09D803010948056D098C0685097E087F08D603660A29098609C107D4053908EA08590ACC0968087E097309CF028C066A084F0ADE06370051070203430B0F0950043801D1078C08F809C507570BD307010944050D0B9C0AA10AEC098508E303610803092C095B098602F708410937008D083A0966082005570A530A19055D09770A2309F5095609E607800972088A085F0A390859095B0B6508280AD207870B260B3205F204C709CD02D909020AA10A420A030A5409E309B10B3500570A21097809C2070109F50906092109C40BA60B47095A08B40BE4033009DC088508850BCD02410563083E0944055508E709C7081B0B0805450A870B89083900E50360079B0253024A0B540B6003C00BDA087D093A0AD30B5108310956098E086309EF08A409590BC803610BDD08FD08AA02EB083A0AF608C40BD70BEE037A0A7208D307EA082005020A3E012D0AC7085E093109EA082E02400A3405AF09310966087C097C092E056E087608EF08870BE9098A0B28038C0B09028E0B870A910B1509D704F20AEB0AF80A4906EE0B520BB106AF059801F30B8905680A3C09DD0B42051F0AAB09D50B270AD109D909EA0953086C08CB0BEA0830027508EB08360ADE0670092A0A4F088E0858083E018B084309FB09A209330967097E087108C307FE086F09DA03300B650AC9031806A802BF08D905BE02900B8D082C0CC90A2E0CE70A4908ED0B6A021208530B350C2403560BA109DE08EF09EF087508CB077A091905720A510CFF097C0CF509A409F6096508D405AD0BC8037D087E0BB1098602220B2A09250B3D09F2094109EC08EA090905EA08EC08280A680A020AD9095109F409230C8C08250C9C02B602440B290C670C920B2D0CB606F70A6D0C310C6F0C50036D047402990115012C024F08CC073202620C270CFD0122048F0BC808680CE807B80AFB0A500B6E0CEF0B710CCF05360C740CC803C307230A4F0C5808A909F808600A7E0932055808390AED09F4088602DB0BD207D90BE203D307400A0F0C040C7B09F1092B0AE209DE0B6B0B22093A0AD307790CF608F309650A510840053509E503230A7708280A4F08660A47055E0C7B0433059F0C630CA20CB80C2A0CBB0C7B05BB02C804DA044304CA0492071504C10C340CC30C730CB00C8905CC07D9035808790B7109000A630A0C0C4B0C8C088A0C500CE20389087E0A200C9A0CFB09DE08CE0C65097708F3098F0C9D0A160D4605E20C5E0AC90B2D0BE00CDE089108D4052109790C39001E05230C4A05F70CB60C650C1004A40C690CA5061C062A050B02CB0224052808BD07FE020601030D320C700C060DAE0C370C9D0A7708510C680A0F0BF809CF09FA0B3908A00AEA098209CC0C4405D109D608F309CB0B2D0B2E02EB05E10808059E09090A48055C09980A95066D09580BAA02E5039F03D60367091D0CE70BD608870BB509B50CA10C8D0BFA0C380D930BA1090B0D040C1E0B3A081E0C2C099B0B8209F008310B0F0BE7099108670B2B0A1A0D5009350ACF02CD09600D090CA50B720BA3092000740863089E0ACA0C630DDC0B020A7E081A0CA10A040C810C1905A50B4909AE0A870B330539080B0AC50C64094A0AD503100C7E0DDE097009820D650AC80C850D4A050109250DD4058A0D1F0B67098D0D76088F0D6F093309920D940D5B02960DAB09980DFD087C0D9B0D81094909830BA00DCE097C0CCC07A40D8908EC0BAA0C050DAD0C550B090DD80C6B0B190C6308CB0BA10B120B08051B0BCC0C2E02F609D5034409D909C80C7B0C7C09A10B240B58083405280A7408FB097C095A0C810DE3083305F7025908840B3D0C91081C0B310909055108250AC808F708BD0B340D740D280C760DBA0CA50C7103FE0CEE01E402C9048E03C206C504FF0C0C0EBA08030DA90A1C08AB0A3608E507AF025D00E10A0006E30A750126086603D20A3B0B2B085203040EB70C5F04460B32086104160E0506180E2005300D92093C08FA0A4F0B4903F10AA70C030BB9069307D702DB0A9303170EA1065E01A306FB03C5099D020C04DB065202150EDC0A170E64038A040B028102BF08D104A0018B049E037D024D036900FD0AC9042A08950437013F0493031106A3072702D2052D009F03680833020B03D50481048904E502480E3D0E2D0EC907AE0AB3056306AA08BE022104CB02250EEB033F0BA3072800CF0789055F005F00BC016400650078002C01410E6E002800C8028302EF0B74023F042601A201DD03A7056202480B5006820797074D046B0EA7026D0E190EE00A4D028C0E67032A03FF03B30515047902C302CF0183042B07D0044B0B60037F02920E4C065306770D4007630EAC02CA057300DA021806FB048905770D52031608FB077C02C6029507930E4D06AC05070E1509AA0263023202BF04FB04BE0EAC0EFD06BF047D00B107AF01110EDE016C026E012C01ED0D3A08C8062B03210E340C8705ED012B0E490E6D0EC107C307700E1E04EE019F027F01FD01930143022B0C480B73017101CE01CF03D2053C0E970E5B04D1072F0E3109E20EFF0760043E02AC0882012C01120A540481051A07CC013D0DDA05950EDD0E6C0EF30ED907EF08DC07FB01960277042104AD031D029009B5094F05C304F90A2D030603A303A4078B022E00B1071D0913031C02B60767012F048105A101A3073602A804AE085F01CC0118035301B4017A0ED8089F03F10EBD07E307520CB20B5D00C50E41087602D90431073D01430233020807460847030C01470BCC04000D3703E904C50188053C02C405AE0CC40167031A023E0FFB014C0E8003700C280E760609041A06A5019E032801C30A6B010A0223049B03A90363051B0F8909710EC406EF01C5029E042B029C0E600F0403620F1D050A089A0803070E0814077102BE021103EE01B004DA0A9B02720F370B75013C006F0CC7040F03B004750E1806DA04C001270FFD0211097D0FB20AE8075F0F540E6E0F56031C0E9B08DB06C703DC07BF0499073401840EA0019E05A604280C800328001B0FCE0E040390067006D7044606B301A9042A012800220023008D0285078B021D0F9F04BA02490B7402630F55063202FB048F066F06E6066904AE0398012A080C023F0E5D05AB051503B401950F2B02750C6309E90C9D0A8A0CD2079D0DE20353081A0B870DE20D5E0B8A08CF02540CCF097F0C3E019F0D260BD809D50955087B0CCA07820DE503340A1905E40367092F028B08F8098509B70B850C8908AA02550D3E0A1C0B4209230C21094A05890B6306260558077304F603EE05050606054F0FC80AC60795058E02B3079202740EF10159024C0252013F041A042B0E6D032801BA070B106105000B0C026A0E80017406900F510112094A05A50C0303E7025902EF05B9090803ED011910B6021B103608C608C808F70E5D05540F100494025505A801A40437031A100C101C10F6081F0530002D10AF06AA051103FB0501052F063510281037102A109A0BC9083407A003A207CA02C70FD10524023703BD079B0EB50834102710360445105B00120F9209870F260F260F66014B0714100D0316109F0269008E0F4110730E470F31005B00DF04AF0397030D03280E1B0EE40E270294010B038003B305390391050610C2048703470E551060104C020E10C0093010180214084E0258025306F005900E0C0F3E10B9098205AA08950E7D10520191101C102B1048103507C50F4C1080020E0820105E026D102410F00E4310561092104610C7084810710E5010660452101D0209103610A21058101B0BD6033C103A0D4D019D0E321018103A04A110540EAE103A10B1108402B4016601D10565018F10B7107E1052011D101409A00EE5046802A101A810650620003E00E70F3500F70C9204CB10780F9103D10A3D01A80397026A10D3107F01D510AA074910E4097010920172104104EF0A7610DD02EB01DC1039074F01D6108007160821045D105001DB10CA10DD107202910376107D041504B408B31031108D0EA801CF10EE03D1101806FB10821037027303D7106710DA1004116D030C03B303E010EF03E2108610A504E70E7510DB02E810B21005110D114C014D04250FF0100F0FF2100B11B410FE10641060071D11FB10410D1109BD101510180817106510D105EB10A91020003E052111FD100711771005103811840E7C10C310A2105201CE0EEA105110CD1054103C112910AE109109B1103411480F0E1143119F04B8104C02BA10BD093302E3063F108D103901C2104D11C41093104710B30596104B10440655029A104C0F9210BF10B905F3014C110A103D111C1013091F108704190422105D02FD039F1090104511941048110D11A00497076611B7096B04D90EFE0123016A106E1161051F0FE101BC102006AD039801A303CD06DF077C0F7711280787101109CF0E0B0ED10E5B040801B305CF102F0418060B074C03B0018D045010DC06AF08F0054D109F08CF037606DD108706FF0A790E7B0E20007D0E7F0E810E830E0710850E870EB40FC10F9F028B0E0A028F11FF03131034022E075306110152039B07250209103D01F310AA07FE109E0E0004B305C80E870606043404DD10D1071B0E180714038610A50211015B0032005D00F81064005B027D0E6E0065007700AD11820E15013A11B211580E0006B5117C039C0EB81100041408FD01EC10410418076A03A908BB110A03D4110A01BF112602C1119E116910A910C6113A0B3C01A00ECB11BC11F511180ED0110112F4110E031E08D711C507DF01F101D8100010C501CC0E340B9C05CF0A1E0E430269042A037811C00E2901F310C604E310F0116E01B3059A114B018301280FB3103C04C303660EE302680E9D044B0749049D0466035F03C8109C0F2811261251065F10AD03B308220482014F073D0BC00FD40AAF041B048B0BC0117502A1010B01930F730F2508CD02CE076A02EF102711280F0E04EB106803CD113C01AD050D0F0C0205042B0FB305C60EE810A10E24128A0F3512C9023712C202F610520E1406C00B4D03DD0326029D04A708B50C4312B70C700169108C0F15121D054B121702250FB206A4089A035E12660160125412ED060E0F581270015A1260072E12A8035712DC065E062F128712960FF7034F02650C741027045B0023008E12410F000604017A07E8079C11F911B001C203980F6206E30E9211B70264069D08430EB90921019502860E8D11A8038F114B0E3E125F02D208610203068611020FC4064F0199022611540F28115F10631144082D11FD0CE702A212A5048203791043033B11581169116C001D0F53118C10CB0256116711AC10B91075114910A10CC60F9910C203A908BC126210C110CF124410AD106B112C0CFB012F100C11B510571168114511391051119B106C1023107111E512D0124F11D212A610B001CC10ED1026104411571059103212AF01A710DE102601C00B4112F6049A04D702BA0175009E01990F6D016E02B303C3084D046010641174021301F1034011F412DF10970454045D12F41030114211F304620C45128810C402C101C303970E6E10F607BE10F703FB0404136500B212D9122C11631017031D1334041F136001C312B2077A100810A01059119205EC0281101110560EAE0181119D10ED12DC124E11C510F11262117D020E131710EE12DD12B910DF124811CB125401CD124E06AB104B13F0125B11D31297105F11C80FF212D410F610DF10421338134611B0103F0FAF12221107115F13C81250113B106402AA060F09E803FA02DC039C10EC12280EFF1243097513D210B90549075A0512011C114D12B912280FD6113A08E710DE0257052006770640014206210E0E12091046126B10840272138411AD051E12E60E90126612BF045D02AF034E0E7111AC058413F0067A132411EE1065037E138A0FBB124713BD126310D911C412C304C612E61245103F1118134111F512531343133810AF109209E112641335114B11F612C712E712BC096A13D812A513DA127A11B21360134D133E13211082116E10E1014A13B313A3102C1052118B1050138913CC136013D2125D11CA0659134E108105B602EA02A90F700C7504FC125D13FE129711160162061213FD12B508700F3204760FB2067202010D4912EC0E0708EE0E190F6F135F03F20182059913A2042706860FDC131F065F0F80032C01620EF703CE0A360BD00AA4040D13A61365012A13C1132C13C1107703F613DD13FF137A041A08B812890F5E1072129C086510A0040C10F51174014B07C012A90F7B02F4137703A9120514731241070C14C0102901630298128D1222135F03A207251307142B132A1410133D0B0C01FE13AF127A043711D206A9137B10C413C81280108D0A05116C064E02400487103404AE132F11B0135E13BB13AC13AD10F912C713711370117313671374115613C013BE100914C31337136813C613B71381026513BA134014BD13BB10D0132704CC12D31356145710D6134A10D8136814C80F8912861273148F10EF018A127414C2064F13C70FD31337113A1164144510421427054414850246140712B7042301B20FB8134A111B116B145014BE134E13D1137B144110D41368136D14D41298106011D71246135A14C213B610BC1357105F14A607AF131313FE128D14B9105114EA128E135414CB13A6145513A410B3050414230815123314291465117A12A314E813040114147D1316142011141219142C018B05F7037D14B011AB13EF120D107C030F10EF0283148410B703881087148910E30EE21262148C144E14C714B41366145B13F510EC104D147F148E144711C8063414B61494144511A1149A07C81340135514D614541344135814E30E7A1440108E10AD14ED14AF1457135E1170144E1017134B14A414B5080011E403D210B814E213531057048D10D910A8021C12E113DC14FE1215131011911312119313B90A8213E91001150A1503155B101E11BA12FB12F312B914D9116F13491106110E11FE14021152071F151A1133100415F5029C07CB02FE058A1420151B110C1515090E159311731011151611DE022515E412A013880FF11028012C156114B9134C011D1517154E12A3132A1161100D1429012E1109153111D30338152311F7033C029703A711FE1068021209C5077E145D1429108114101067034514BB11D3118C0434045012D10EB105A70447034A144B154211EB14CD136113B6136D11E8148F132510DE14D112EE145E014E1566136B156013E812BF13EF149114F114CE12791595145613D7131705A2116111F80EE2140F13E414A0141E102C0CFA10D31440153310150159089F0CBA0F150AC101F005FD0FC10ED7117A0ED007C61315010204891549139704330B2000AB04E409C8075114A0151A155C1315150401A4156302A7155B0BC5085613F304CD0E2511BC143C15291108149D14651065127812D70A9011E71302156C001D158211531502100801CF11AF113513850E73157F10C9143B135D153D13DA141913B1135915F812B513B1108D136F1183117215D815AD1045138815B5148A15F3146A118D1590146814D2139314E615CE1395106E148515D6124402D2142D1526159E144F14A7148F14480B0611F402560263012E130913C502BA092E131A020F1022064404FA146915D6107E005007860FC910FB14B91420000C16FB135207520E6015311327154615481363109C061016C41549102E03171116161E130B1309032F14D8102D0FDD01C0042F130A1303166A02FC15A710EE0239049D0FA903D80E7F02B9151F113D151A165B1464109104100F3B0D2916C0024315A21366010B149C14481536149F0323163013C308D102C20522162C1602168E090306480FFD15E9021D028C0EAF059E0FE70E23013716A113BD143A16BC1548165D004A03440D1811E3124F15131600131E1590158B14A80113169811151651165E058E090C13A2151C163B07F515E41215133615EB017316181667014B162D1675160F14621635142B16051687116103D2052F04B114B10AB3142814471635140016021274162013ED0583050616320725106B10521221071A047B044C125F16BA1547127E0F0B1255163116630180118916020F8B161D1596132716200F2E08B405011696163213700F4E0552150110AA0709015B006A13E211C514CF15C8143A1343143C13CD1447146912A4016315E50E65159E036201B212DF05D1119F083F01A30F7015AB14DF1573116C147515231214153111ED156D15E9153814EB15F21481155714F5148415D5129914F31576156D162E151916E015F915D9149B142B118716DF16C61343166016BB15771665014A151B151F1670166C167A1669161B135207721423132313751406083C0FC2037A07C3146206BA167804BC16CA153E015715C116F016D015C41682143C136815FE16AE158B15DF1462138A10EA159214E416C2165A11E716F015E9165A13F3164715F516E5168C15C71063133F156E16F715D71436087B15DB153F1371157211F712E1155814C3151E173A155C103916C215DD166506321277152115D0109F0C4917D5149E08091107154D17A801301511113315E510930112156716D41419161514A4165217241149065D174417A4139216E3142D1488134617D610F816A4163B16BD15E0131D17A9103E15FC103417C61510175E0312176910390D5815D916A2105B15CB14C616ED018510CF141B144900CB161A04A604CE160A01D0167304D216B903CA127E15551152131717F414CF13E81698142B174C034017DE162F1720176E15EC160217781526173717FA15A914DD15CA13D8163D177415F5145914F416E314F616E8156B1358056D13BF026F13DC15C9139E107413751371160203EF067913AC06E5026217BA12490A59179C13BE176E136817720E30106810AB165314DE15E00A7110131194134215C1177F136D1763162812AE129913560FDB107813AB06E80375170F1277171A15F40E1517CD15C614EC14940519175C151907D516CD17A7173C179F143E17AB172C171B16DB129C174C13B0172217E21624178015A217B41528179714D9133804D5154C14A514F7174F11A814F4153317EE163517E817A31766148F15A0174B11A205FF14B50E0213510EFE03FC0F5904AC0535006416B70E9F15AC04D6178716B015A615E70FFE08E0162C01AD041E161E172418B2152718D212B615030DD41745158616B614930B6B176317AC15DB14A910E0174307E2179204110AE517C512A2177E17CF0ED315C7168614841789140B18F6151F17F116E9126F15EE17B817DF16E215DC162B189B17FE1709187615F014911742107C17AA17951729179717DA13F4173C164E184F11F7160F160A16DF102215001557186A154F17CA17DA103A18D615141326185517E50E530E3515850457046B180618381819159A1747176E0C5F17CE104B170311ED164D18C81705152A15C31185185417321579183415E6107D165A179115C0173816BA125F17D3179918D51735180F13FD16AD15311135078918E4124E0597151A188B046305C715BB16E31768085D009503E117A3114018C908B1183E18B31855151E05B0183303B2185415BD163B10B6188D17C91569102C10C118C81578175B003900BB18AC181117AE18CB187617B818BD16C30EBC18B718BE18CA15C407C618AD184018CD07D918CD1840181417DD183F1855153800CF18BD18C318D107D818D418C218C818D711E118D1181317ED18EA18C718E3171D18650FA206B01170138B169F164D018E037700680051019E012813410BFF079317730C5C022912A60211042C1206170B17DC070C1930123D0F54107614731408170D17160229026B026501B2067602501222106C02B208C40117121A078C1018070619640CEF1199151B182D125F184F11FE0EB3059812E717CD1309061A03B0051A1956032403161882069C0F1E194307BC0E3801221952062E0855050E173D039F1204191E0F3A0F1C0610041D19B908900A100940195F15B9082619E60547030E0F66012405AC1626028B16460702089F057614670F9F0C17130504F0112019640195151718AF12FF0AEC0EB6075E163B1544174C192702C309C5023F193304040485105219C912C31422166D119301F2133707F6118B185F0F0C029504770222004C00D502610070006800200053006300BB01700074003A00DA0255068E07A307F8116B0736080F198B122016B3053204D9026302550622003A00D802B00F720767044204C6028C0E3C1972191009400722005B005E003A005D002B003A00250064002A00A319AF0F3A11E907510697024E0109066E006F003201B4041902D70A1C02F202BD19A802F602D8028719720089198B198D198F199119B6192200630239197B03CB059E1264006F045F0EF7077E038D03280E7319EE11B1069205820ADA194B02FA11A904C704A402170F73060904AD125E02DA17610281067B039110CE16EE190D01C30F5E0F3602E902DE137D024508CA064219FD0F1305F4199B04A512ED069914AD041403BC02FE19C70FF0199813550FF3198E034E0583054207E4193A01AC0F4C00500048007C00330046004500DE08F7084009E40936004100410039004300CC074200AF02F608650A47007513350043003600450046003305F80F3A08420034004500400501112F1A1B0B4600300041003A1030004500451A3A1A36004400D9094700201A4500481A3A1A1F054B1A3400460038003B1A4C1A3000531A4500541A471A491A451A4C1A4E1A3200511A4D1A491AEC084400320043003100440043004500441A4F1A46006A1A1F1A5B1A34006A1A651A291A691A1D0C42003B1A5C1A35005E1A491A3300511A4300441A501A201A531A7E1A831AF60842003100781A35005C1A6C1A6B1A581A7B1A441A661A6A1A37004C1A38004400441A7B1A521A3A1A871A891A791A3A1A4F1A831A4300601A7C1A8908981A831A3A1A7B1A331A521A731A390045004300340044005A092F02430046003200351A440041003A0846004400B81A3205150CAD1A440037004100250D42006A1A6B08440031004600311A350041004300291A311AAE1A4200E60745002B1A450031004100DE084600D81A3B1A4A053300C51A781A281A2F02C21A3300440042005509491A3100671A420039003E1A36003E1ADB07EC1A4309F11ADB07EF1AD2073E1AF31AF31AF01A3E1A601A75132E1AFD1A7E1AFD1A3700F51AF31AFC1A4309FE1A061B001B430921093900D81A33004300D21A281A7E08C81A8C06D71A3900E51AF21A881AF809411A431A941A3000D21A3E1A1E1A2E0AF5093B1A391AAF1A391A4400EF033A0852081D1BE503201BCA1A6F093B1AEE0341001D1B680A2E1BD70347003400391A4600900DD81AD51ACB0B091B211B8C06381B3A1B721AD10B47001E05B01A991A7D095F09EF03391BCC073400B91A491AD81A291AD81A281B291AF509C8084200CC1A3A08391B3E01CB1AD10B970A3908311B5B1B680843096B1A59085509241BB20CE3033E01FD084600501B601A6A0DD10B991A261BCC1AB01A970A6A1BE4093A08050CD61A0A0C8B1A4305501B721ACB1A201A5A1BB91A881A6808CA07B91A4500B81A35003E1A201A3305DE081D1B071B1E1A43096F1B3600E61A8C06401AF7081E05421A9108821A711A311B7F1A4105A21B851A521AA31B861AA11BA11AA51B4300680C4500CB0934003E1A3800321A521A4605B01A391A030AAE1B4A05D21A0E1B650AD6084300E1089C1B431A8C1B8E1B190C211A3000801AE20D801A4300AF0FFB12590F6110061165162000")))() 
end)

Rocix.Name = "Rocix"
Rocix.Parent = ShopFrame
Rocix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rocix.BackgroundTransparency = 0.500
Rocix.Position = UDim2.new(0.0185950398, 0, 0.56410259, 0)
Rocix.Size = UDim2.new(0, 181, 0, 43)
Rocix.Font = Enum.Font.GothamBlack
Rocix.Text = "Rocitizens X"
Rocix.TextColor3 = Color3.fromRGB(0, 0, 0)
Rocix.TextSize = 14.000
Rocix.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/v4XaeXVJ", true))()
end)

Fps.Name = "Fps"
Fps.Parent = ShopFrame
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 0.500
Fps.Position = UDim2.new(0.285123944, 0, 0.777777791, 0)
Fps.Size = UDim2.new(0, 181, 0, 43)
Fps.Font = Enum.Font.GothamBlack
Fps.Text = "Fps Boost"
Fps.TextColor3 = Color3.fromRGB(0, 0, 0)
Fps.TextSize = 14.000
Fps.MouseButton1Down:connect(function()
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
for i,v in pairs(g:GetDescendants()) do
   if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
       v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
   end
end
for i,e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
end)

-- Scripts:

local function BJNNQ_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	local frame = script.Parent
	local close = frame:WaitForChild("Close")
	local shop = frame.Parent:WaitForChild("Shop")
	
	shop.MouseButton1Click:connect(function()
		shop.Visible = false
		frame.Visible = true
	end)
	
	close.MouseButton1Click:connect(function()
		shop.Visible = true
		frame.Visible = false
	end)
end
coroutine.wrap(BJNNQ_fake_script)()
