_G.Collide = false -- Client Collision hats/parts | Recommended = true
_G.Anchored = true -- Anchor the hats/parts | Recommended = true
_G.Jitter = Vector3.new(0,0,30.50)

plr = game.Players.LocalPlayer
char=game.Players.LocalPlayer.Character
ct={}
te=table.insert
local srv= game:GetService("RunService")

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~='HumanoidRootPart' then 
game:GetService("RunService").Heartbeat:connect(function()
pcall(function()
v.Velocity = _G.Jitter
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999)
end)
end)
end
end

hats=Instance.new('Folder',workspace)
hats.Name='Hats/Parts'

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') then
te(ct,srv.Stepped:Connect(function()
v.CanCollide=false
end))
end
end

function create(part, parent, p, r)
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.Attachment.Name = part.Name
parent.Attachment.Name = part.Name
part.AlignPosition.Attachment0 = part[part.Name]
part.AlignOrientation.Attachment0 = part[part.Name]
part.AlignPosition.Attachment1 = parent[part.Name]
part.AlignOrientation.Attachment1 = parent[part.Name]
parent[part.Name].Position = p or Vector3.new()
part[part.Name].Orientation = r or Vector3.new()
part.AlignPosition.MaxForce = 999999999
part.AlignPosition.MaxVelocity = math.huge
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = math.huge
part.AlignOrientation.Responsiveness = math.huge
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 999999999
part.Massless=true
te(ct,srv.Heartbeat:Connect(function()
part.CanCollide=true
end))
end

function rmesh(HatName)
for _,mesh in next, char[HatName]:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

hatsparts=0
for i,v in next, char:GetDescendants() do
if v:IsA('Accessory') then
rmesh(v.Name)
v.Name=hatsparts
v.Handle.Locked=true
hatclone=v.Handle:Clone()
hatclone.AccessoryWeld:Destroy()
hatclone.Name=hatsparts
hatclone.CanCollide=_G.Collide
hatclone.Parent=hats
hatclone.Transparency=1
hatclone.Locked=false
hatclone.Anchored=_G.Anchored
hatclone.Position=char.Torso.Position
hatclone.Rotation=Vector3.new()
v.Handle.Transparency=0
v.Handle:BreakJoints()
create(v.Handle,hats[v.Name])
hatsparts=hatsparts+1
end
end

te(ct,char.Humanoid.Died:Connect(function()
hats:Destroy()
for i,v in pairs(ct) do v:Disconnect() end
end))

pcall(function()
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)
