for i, v in pairs(game:GetService("Workspace").Regen.Purchases.MVPurchases["Power Ups"]:GetChildren()) do
   if v:IsA("Model") then
       v.Name = "Model"
   end
end

for i, v in pairs(game:GetService("Workspace").Regen.Purchases.MVPurchases.Helmets:GetChildren()) do
   if v:IsA("Model") then
       v.Name = "Model"
   end
end

for i, v in pairs(game:GetService("Workspace").Regen.Purchases.MVPurchases["Power Ups"].Model:GetChildren()) do
   if v:IsA("Part") then
       if v.Name == "Button" then
           v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       end
   end
end

for i, v in pairs(game:GetService("Workspace").Regen.Purchases.MVPurchases.Helmets.Model:GetChildren()) do
       if v:IsA("Part") then
           if v.Name == "Helmet" then
           v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       end
   end
end

local args = {
   [1] = "sword"
}

game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))
