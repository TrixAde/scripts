local plr = game.Players.LocalPlayer
	game:GetService("RunService").Stepped:Connect(function()
		setsimulationradius(9e9,9e9)
		plr.ReplicationFocus = workspace
		settings().Physics.AllowSleep = false
	end)

	local runservice=game:service"RunService";
	local player=game:service"Players"["LocalPlayer"];
	local character=player["Character"];
	local blacklisted="Head Torso HumanoidRootPart";
	local limbs={};

	character["Humanoid"].HipHeight=2;
	--character["Head"]:FindFirstChildOfClass"SpecialMesh":Destroy();

	for i,v in next,character:children() do
		if (v.ClassName=="Part") and not blacklisted:find(v.Name) then
			v:BreakJoints();
			limbs[v.Name]=v;
		end
	end

	while runservice["Heartbeat"]:Wait() do
		limbs["Left Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(-1,-2,0);
		limbs["Right Leg"].CFrame=character["HumanoidRootPart"].CFrame*CFrame.new(1,-2,0);
		limbs["Left Arm"].CFrame=character["Left Leg"].CFrame*CFrame.new(-1,-2,0);
		limbs["Right Arm"].CFrame=character["Right Leg"].CFrame*CFrame.new(1,-2,0);
	end
