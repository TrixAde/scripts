local Tasks = game.Players.LocalPlayer.Tasks
local requestRemote = game:GetService("ReplicatedStorage").RemoteEvents.Client.taskRequest
local completeRemote = game:GetService("ReplicatedStorage").RemoteEvents.Client.taskCompleted
local room = game:GetService("ReplicatedStorage").RemoteEvents.Client.roomChanged

for i,v in pairs(Tasks:GetChildren())do
local dataCount = 1
local totalTimes = v.Parts:GetChildren()
for count = 1,#totalTimes do
if v.Parts:FindFirstChild(tostring(dataCount)) then
local data1 = {
[1] = v.Parts[tostring(dataCount)].Value,
[2] = i,
}
local data2 = {
[1] = v.Parts[tostring(dataCount)].Value,
[2] = tostring(i),
}
room:FireServer(v.Parts[tostring(dataCount)].locationName.Value)
requestRemote:FireServer(unpack(data1))
completeRemote:FireServer(unpack(data2))
end
dataCount=dataCount+1
end
end
