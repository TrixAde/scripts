--//	Normal Functions	\\--
function touchInterest(part)
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0) --0 is touch
	wait()
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1) -- 1 is untouch
end

--//	Games Functions		\\--

function IslandofMove()
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("StrikeAPose")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("SettingTheStage")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("DIY")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("GetMoving")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("VictoryLap")
end

function RobloxCommunitySpace()
	game:GetService("ReplicatedStorage").TasksList.RemoteEvents.AwardBadge:FireServer()
end

function ccpGame1()
	while wait() do
		for _,v in pairs(game:GetService("Workspace").obby.Badge:GetDescendants()) do
			if v:IsA("TouchTransmitter") then
				touchInterest(v.Parent)
			end
		end


		for i=1,4 do
			local args = {
				[1] = 2,
				[2] = {
					[1] = 2,
					[2] = i
				}
			}

			game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(unpack(args))
		end
	end
end

function MansionofWonder()
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("Boardwalk")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("FXArtist")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("ParticleWizard")
	game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("ThingsGoBoom")
end

function RobloxCreatorChallenge()
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson1")
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson2")
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson3")
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson4")
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson5")
	game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson6")
end

function ccpGame2()
	--Get Kid Neza
	local path=game:GetService("Workspace").nezha.NezhaTouch
	touchInterest(path)
end

function BakuganLaunchParty()
	
	--Idk if this gives anything but it exists
	for i=1,10 do
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Claim", i)
	end
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ClaimFreeRewards")
end

function BeattheScammers()
	for i,v in pairs( game:GetService("Workspace").Clues:GetChildren() ) do
		local part
		local dialog
		for i2,v2 in pairs( v:GetDescendants() ) do
			if v2.Name=="RobloxDialogue" then
				dialog=v2
			elseif v2.ClassName=="Part" then
				part=v2
			end
		end

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=part.CFrame
		wait(0.2)
		game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueRequested:FireServer(dialog)
		wait()
		game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
		wait()
	end
end

function ccpGame3()
	--// Scales
	for i,v in pairs( game:GetService("Workspace").Collectibles:GetChildren() ) do
		touchInterest( v )
	end

	--// Money
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").ObstacleCourse.ObstacleEnd.Part.CFrame
	wait(0.5)
	for i=1,150 do
		task.wait()
		touchInterest( game:GetService("Workspace").ObstacleCourse.ObstacleEntries.Part )
		touchInterest( game:GetService("Workspace").ObstacleCourse.ObstacleEnd.Part )
	end
	
	--// Buying All items that can be equipped in roblox
	while true do
        --just in case they somehow didnt get enough cash
        touchInterest( game:GetService("Workspace").ObstacleCourse.ObstacleEntries.Part )
		touchInterest( game:GetService("Workspace").ObstacleCourse.ObstacleEnd.Part )
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "clothing1")
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory13")
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory14")
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory12")
		wait(0.25)
	end
end

--//		Games			\\--

local games={
	["Island of Move"]						={5306359293,IslandofMove},
	["Roblox Community Space"]				={6985028626,RobloxCommunitySpace},
	["凹凸世界：自由丛林"]						={7541759836,ccpGame1},
	["Mansion of Wonder"]					={6901029464,MansionofWonder},
	["Roblox Creator Challenge"]			={1871632192,RobloxCreatorChallenge},
	["Roblox Creator Challenge_Space"]		={4201429814,RobloxCreatorChallenge},
	["Roblox Creator Quiz"]					={3204381131,RobloxCreatorChallenge},
	["Roblox Creator Challenge_Libary"]		={2546610365,RobloxCreatorChallenge},
	["Luobu Mystery Box Hunt"]				={7232621271,ccpGame2},
	["Bakugan Launch Party"]				={7234162497,BakuganLaunchParty},
	["Beat the Scammers!"]					={5450795073,BeattheScammers},
	["七叔（叶泽浩）Launch Party"]				={7277488595,ccpGame3},
}




--//	Main Script		\\--
local gid=game.PlaceId
for i,v in pairs( games ) do
	if v[1]==gid then
		v[2]()
	end
end
