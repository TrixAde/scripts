Visible = true -- Makes heads visible. Set to false to make the hitboxes invisible
Size = 40 -- 3 will give you a slight amount of help with aiming, 5 and up should make all of your shots hit, and anything past 10 or so will allow you to kill zombies behind walls. I don't recommend setting this past 20 as you might get kicked by the anti-cheat.

local old
old = hookfunction(getrawmetatable(game).__index, function(...)
local self, k = ...
if k == "Size" and self.Name == "HumanoidRootPart" then
return Vector3.new(1, 2, 1)
elseif k == "Size" and self.Name == "Head" then
return Vector3.new(2, 1, 1)
end
return old(...)
end)

while wait(1) do
for i,v in next, workspace.Entities.Infected:GetDescendants() do
if v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") then
pcall(function()
v.Head.Size = Vector3.new(Size, Size, Size)
v.Head.CanCollide = false
v.Head.Material = Enum.Material.Neon
v.Head.BrickColor = BrickColor.new("Really blue")
v.HumanoidRootPart.Size = Vector3.new(Size - 1, Size - 1, Size - 1)
v.HumanoidRootPart.CanCollide = false
if Visible == true then
v.Head.Transparency = 0.5
else
v.Head.Transparency = 1
end
end)
end
end
end
