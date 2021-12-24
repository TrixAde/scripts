--// This is very simple gui. It's just remote events. I might add normal farm later on... \\--

--// Local Variables
loadstring(game:HttpGet('https://pastebin.com/raw/6TW7RGz3', true))()
local mainfrom = library:AddWindow('Your Bizarre Adventure')
local far = mainfrom:AddTab('Auto-Move')
local que = mainfrom:AddTab('Auto-Quest')
local itos = mainfrom:AddTab('Item Farm')
local cos = mainfrom:AddTab('Cosmetic')
local runservice = game:GetService("RunService")
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:wait()
local hump = char:WaitForChild("HumanoidRootPart")

--// Anti-afk
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()
	bb:ClickButton2(Vector2.new())
end)

--// Item Farm
local tping = false
itos:AddSwitch("Farm Items", function(ho)
	tping = ho
end)
local itemFarm = coroutine.wrap(function()
	while wait() do
		if tping == true then
			for i, v in pairs(game:GetService("Workspace")["Item_Spawns"].Items:GetChildren()) do
				if v:FindFirstChild("ClickDetector") then
					for _, handle in pairs(v:GetChildren()) do
						if handle:IsA("BasePart") then
							repeat
								game:GetService("TweenService"):Create(hump,TweenInfo.new((hump.Position-handle.Position).Magnitude/250,Enum.EasingStyle.Quad), {CFrame = handle.CFrame * CFrame.new(0,-5,0)}):Play()
								if (hump.Position - handle.Position).Magnitude <= 7 then
									fireclickdetector(v.ClickDetector)
								end
								wait()
								char:WaitForChild("Humanoid"):ChangeState(11)
							until not game:GetService("Workspace")["Item_Spawns"].Items:FindFirstChild(v)
							wait(0.5)
						end
					end
				end
			end
		end
	end
end)
itemFarm()

--// Cosmetic page
-- This works only if you already have 1 cosmetic. It is really easy to get one.
local cosmetic = ""
local rome = cos:AddDropdown("Name of Hat", function(hom)
	cosmetic = hom
end)
for i, v in pairs(game:GetService("ReplicatedStorage").Cosmetics:GetChildren()) do
	if v:IsA("Folder") then
		rome:Add(v.Name)
	end
end
local cosmeticOn = coroutine.wrap(function()
	while wait() do
		if cosmetic ~= "" then
			for i, v in pairs(plr.PlayerGui.HUD.Main.Frames.Cosmetics.Frame.ScrollingFrame:GetChildren()) do
				if v.Name ~= "Sample" then
					v.Name = cosmetic
				end
			end
		end
	end
end)
cosmeticOn()

--// Farm Page
local rmove = false
local emove = false
local tmove = false
local ymove = false
local umove = false
local gmove = false
local hmove = false
local jmove = false
local kmove = false
local lmove = false
local zmove = false
local xmove = false
local cmove = false
local vmove = false
local bmove = false
local nmove = false
local mmove = false
local ono = false
far:AddSwitch('Use Moves', function(hom)
	ono = hom 
end)
far:AddSwitch('Spam E', function(hom)
	emove = hom 
end)
far:AddSwitch('Spam R', function(hom)
	rmove = hom 
end)
far:AddSwitch('Spam T', function(hom)
	tmove = hom 
end)
far:AddSwitch('Spam Y', function(hom)
	ymove = hom 
end)
far:AddSwitch('Spam U', function(hom)
	umove = hom 
end)
far:AddSwitch('Spam G', function(hom)
	gmove = hom 
end)
far:AddSwitch('Spam H', function(hom)
	hmove = hom 
end)
far:AddSwitch('Spam J', function(hom)
	jmove = hom 
end)
far:AddSwitch('Spam K', function(hom)
	kmove = hom 
end)
far:AddSwitch('Spam L', function(hom)
	lmove = hom 
end)
far:AddSwitch('Spam Z', function(hom)
	zmove = hom 
end)
far:AddSwitch('Spam X', function(hom)
	xmove = hom 
end)
far:AddSwitch('Spam C', function(hom)
	cmove = hom 
end)
far:AddSwitch('Spam V', function(hom)
	vmove = hom 
end)
far:AddSwitch('Spam B', function(hom)
	bmove = hom 
end)
far:AddSwitch('Spam N', function(hom)
	nmove = hom 
end)
far:AddSwitch('Spam M', function(hom)
	mmove = hom 
end)

--// Quest Page
que:AddLabel("NPC Quests")
local quethu = false
que:AddSwitch('Thugs', function(hom)
	quethu = hom 
end)
local quecor = false
que:AddSwitch('Corrupt Police', function(hom)
	quecor = hom 
end)
local quealp = false
que:AddSwitch('Alpha Thugs', function(hom)
	quealp = hom 
end)
local quezom = false
que:AddSwitch('Zombie Henchmans', function(hom)
	quezom = hom 
end)
local quevam = false
que:AddSwitch('Vampires', function(hom)
	quevam = hom 
end)
que:AddLabel("Boss Quests")
local quedio = false
que:AddSwitch('Dio', function(hom)
	quedio = hom 
end)
local quejot = false
que:AddSwitch('Jotaro', function(hom)
	quejot = hom 
end)

--// Auto Quest
local questzombies = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quezom == true then
			local quest = "Take down 3 zombie henchmans"
			local npc = "Dracula"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue4"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end


			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questzombies()
local questthugs = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quethu == true then
			local quest = "Take down 5 thugs"
			local npc = "Officer Sam"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue5"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questthugs()
local questalpha = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quealp == true then
			local quest = "Take down 5 alpha thugs"
			local npc = "Lion Abbacho's Partner"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue7"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questalpha()
local questcorrupt = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quecor == true then
			local quest = "Take down 5 corrupt police"
			local npc = "Deputy Bertrude"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue5"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questcorrupt()
local questvamp = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quevam == true then
			local quest = "Take down 3 vampires"
			local npc = "Zeppelin"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue4"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questvamp()
local questdio = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quedio == true then
			local quest = "Kill Deo"
			local npc = "Dopey"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue5"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questdio()
local questjotaro = coroutine.wrap(function()
	runservice.Heartbeat:Connect(function()
		if quejot == true then
			local quest = "Defeat Joe"
			local npc = "Deo"

			local function startquest()
				local args = {
					[1] = "ReturnQuest",
					[2] = quest
				}

				char.RemoteFunction:InvokeServer(unpack(args))
			end
			local function enddialogue()
				local args = {
					[1] = "EndDialogue",
					[2] = {
						["NPC"] = npc,
						["Option"] = "Option1",
						["Dialogue"] = "Dialogue4"
					}
				}

				char.RemoteEvent:FireServer(unpack(args))
			end

			if not plr.PlayerGui.HUD.Main.Frames.Quest.Quests:FindFirstChild(quest) then
				print("Firing Auto Quest")
				startquest()
				enddialogue()
				local args = {
					[1] = "ReturnData"
				}

				game:GetService("Players").LocalPlayer.QuestsRemoteFunction:InvokeServer(unpack(args))
			else
			end
		end
	end)
end)
questjotaro()

--// Auto Moves
local farm = coroutine.wrap(function()
	while wait() do
		if ono == true then
			if char:WaitForChild("SummonedStand").Value == false then
				local args = {[1] = "InputEnded",[2] = {["Input"] = Enum.KeyCode.Q}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if ymove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.Y}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if emove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.E}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if rmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.R}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if tmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.T}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if umove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.U}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if gmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.G}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if hmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.H}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if jmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.J}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if kmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.K}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if lmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.L}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if zmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.Z}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if xmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.X}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if cmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.C}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if vmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.V}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if bmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.B}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if nmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.N}}
				char.RemoteEvent:FireServer(unpack(args))
			end
			if mmove == true then
				local args = {[1] = "InputBegan",[2] = {["Input"] = Enum.KeyCode.M}}
				char.RemoteEvent:FireServer(unpack(args))
			end
		end
	end
end)
farm()
