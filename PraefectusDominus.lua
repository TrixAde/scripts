-- Synapse Decompiler
-- Purchase Here: https://brack4712.xyz/synapse/purchase/

wait(0.2)
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound", Character)
sick.SoundId = "rbxassetid://859912308"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
Player_Size = 1
Animation_Speed = 3
Frame_Speed = 0.016666666666666666
local Speed = 16
local Effects2 = {}
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {
	"263032172",
	"263032182",
	"263032200",
	"263032221",
	"263032252",
	"263033191"
}
local HITARMORSOUNDS = {
	"199149321",
	"199149338",
	"199149367",
	"199149409",
	"199149452"
}
local HITWEAPONSOUNDS = {
	"199148971",
	"199149025",
	"199149072",
	"199149109",
	"199149119"
}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local SKILLTEXTCOLOR = C3(0.0196078431372549, 0.09803921568627451, 0.0196078431372549)
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
	wave.Color = COLOR
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function MagicSphere(SIZE, WAIT, CFRAME, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1, 1, 1), true)
	wave.Color = COLOR
	local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0, 0, 0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + 1 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function Slice(KIND, SIZE, WAIT, CFRAME, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1, 1, 1), true)
	local mesh
	if KIND == "Base" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0, SIZE / 10, SIZE / 10), VT(0, 0, 0))
	elseif KIND == "Thin" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662586858", "", VT(SIZE / 10, 0, SIZE / 10), VT(0, 0, 0))
	elseif KIND == "Round" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662585058", "", VT(SIZE / 10, 0, SIZE / 10), VT(0, 0, 0))
	end
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW / 10
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end
function CheckIntangible(Hit)
	local ProjectileNames = {
		"Water",
		"Arrow",
		"Projectile",
		"Effect",
		"Rail",
		"Lightning",
		"Bullet"
	}
	if Hit and Hit.Parent and (not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid") then
		return true
	end
	return false
end
Debris = game:GetService("Debris")
function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay(RayPos + Vec * 0.01, Vec, Length - (StartPos - RayPos).magnitude, Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end
function FireArc(Part, ToLocation, AmountOfTime, Height, DoesCourontine)
	if DoesCourontine == false then
		local Direction = CF(Part.Position, ToLocation)
		local Distance = (Part.Position - ToLocation).magnitude
		for i = 1, AmountOfTime do
			Swait()
			Part.CFrame = Direction * CF(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
			Direction = Part.CFrame
		end
		Part:remove()
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CF(Part.Position, ToLocation)
			local Distance = (Part.Position - ToLocation).magnitude
			for i = 1, AmountOfTime do
				Swait()
				Part.CFrame = Direction * CF(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
				Direction = Part.CFrame
			end
			Part:remove()
		end))
	end
end
function turnto(position)
	RootPart.CFrame = CFrame.new(RootPart.CFrame.p, VT(position.X, RootPart.Position.Y, position.Z)) * CFrame.new(0, 0, 0)
end
local naeeym2 = Instance.new("BillboardGui", Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5, 35, 2, 15)
naeeym2.StudsOffset = Vector3.new(0, 3, 0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel", naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Dominus Praefectus"
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = SKILLTEXTCOLOR
tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
tecks2.Size = UDim2.new(1, 0, 0.5, 0)
tecks2.Parent = naeeym2
function Transparency(TRANS)
	tecks2.TextTransparency = TRANS
	tecks2.TextStrokeTransparency = TRANS
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" and c ~= RootPart then
			c.Transparency = TRANS
			if c:FindFirstChildOfClass("Decal") then
				c:FindFirstChildOfClass("Decal").Transparency = TRANS
			end
		elseif c.ClassName == "Accessory" then
			c.Handle.Transparency = TRANS
		elseif c.ClassName == "Model" then
			for _, q in pairs(c:GetChildren()) do
				if q.ClassName == "Part" then
					q.Transparency = TRANS
					if q:FindFirstChildOfClass("Decal") then
						q:FindFirstChildOfClass("Decal").Transparency = TRANS
					end
				end
			end
		end
	end
end
Humanoid.Died:connect(function()
	Humanoid.Parent = nil
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	refit()
	Humanoid.Parent = Character
	CreateSound("907330011", Head, 10, 1)
end)
local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.23, 0, 0.8, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.5, 0, 0.8, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.1, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Governor Bomb", SKILLTEXTCOLOR, 7, "Fantasy", 0, 2, 0, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Command Rush", SKILLTEXTCOLOR, 7, "Fantasy", 0, 2, 0, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Ruler", SKILLTEXTCOLOR, 12, "Antique", 0, 2, 0, "Text 3")
local SKILLEFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.9, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill Warp Frame")
local SKILLETEXT = CreateLabel(SKILLEFRAME, "[Q] Monarch Hop", SKILLTEXTCOLOR, 7, "Antique", 0, 2, 0, "Text Warp")
function killnearest(position, range, maxstrength)
	for i, v in ipairs(workspace:GetChildren()) do
		local body = v:GetChildren()
		for part = 1, #body do
			if (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character and range > (body[part].Position - position).Magnitude then
				if v.ClassName == "Model" then
					v:BreakJoints()
				end
				local bv = Instance.new("BodyVelocity")
				bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
				bv.velocity = CF(position, body[part].Position).lookVector * maxstrength
				bv.Parent = body[part]
				Debris:AddItem(bv, 0.2)
			end
		end
		if v.ClassName == "Part" and v.Anchored == false and range > (v.Position - position).Magnitude then
			v.Velocity = CFrame.new(position, v.Position).lookVector * 5 * maxstrength
		end
	end
end
function Governor_Bomb()
	local CENTER = CreatePart(3, Effects, "SmoothPlastic", 0, 1, SKILLTEXTCOLOR, "CenterPart", VT(0, 0, 0))
	local RAY = CreatePart(3, Effects, "Neon", 0, 1, SKILLTEXTCOLOR, "Laser01", VT(25, 25, 25))
	RAY.Color = SKILLTEXTCOLOR
	MakeForm(RAY, "Ball")
	local ECH = Mouse.Hit.p
	CENTER.CFrame = CF(Mouse.Hit.p)
	RAY.CFrame = CENTER.CFrame
	CreateSound("814168787", CENTER, 10, 0.6)
	for i = 1, 80 do
		Swait()
		RAY.Size = RAY.Size * 0.98
		RAY.Transparency = RAY.Transparency - 0.016666666666666666
	end
	killnearest(ECH, 25, 250)
	MagicSphere(VT(1, 1, 1), 55, CF(ECH), SKILLTEXTCOLOR, VT(2, 2, 2))
	MagicSphere(VT(0, 0, 0), 45, CF(ECH), C3(0, 0, 0), VT(2, 2, 2))
	CreateSound("314970790", CENTER, 10, 1)
	Debris:AddItem(CENTER, 5)
	RAY:remove()
end
function Command_Rush()
	ATTACK = true
	Rooted = false
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(-15 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(140), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(25 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(140), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-25 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	Rooted = true
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 100
	GYRO.P = 2000
	GYRO.MaxTorque = VT(0, 4000000, 0)
	GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
	for i = 1, 15 do
		for i = 1, 15 do
			Swait()
			GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(-15 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(140), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(25 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(140), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-25 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			local EYE = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Eyeball", VT(0, 0, 0))
			CreateSound("814168787", EYE, 10, 1)
			EYE.CFrame = RootPart.CFrame * CF(MRANDOM(-15, 15), MRANDOM(8, 20), MRANDOM(-15, 15))
			local M = CreateMesh("SpecialMesh", EYE, "FileMesh", "82326541", "82327419", VT(0, 0, 0), VT(0, 0, 0))
			MagicSphere(VT(0, 0, 0), 15, CF(EYE.Position), SKILLTEXTCOLOR, VT(1, 1, 1))
			local ATTACKI = false
			local TORS
			for i = 1, 10 do
				Swait()
				M.Scale = M.Scale + VT(0.1, 0.1, 0.1) * 3
				EYE.CFrame = EYE.CFrame * CF(0, 0, -0.5)
			end
			for i = 1, 100 do
				Swait()
				for _, c in pairs(workspace:GetChildren()) do
					if c.ClassName == "Model" and c ~= Character and c:FindFirstChildOfClass("Humanoid") and (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")) then
						local HUMANOID = c:FindFirstChildOfClass("Humanoid")
						if 0 < HUMANOID.Health then
							local TORSO = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
							if (TORSO.Position - EYE.Position).Magnitude < 35 then
								ATTACKI = true
								TORS = TORSO
							end
						end
					end
				end
				if ATTACKI == true then
					break
				end
				EYE.CFrame = EYE.CFrame * CF(0, 0, -1)
			end
			if ATTACKI == false then
				for i = 1, 10 do
					Swait()
					M.Scale = M.Scale - VT(0.1, 0.1, 0.1) * 3
					EYE.CFrame = EYE.CFrame * CF(0, 0, -0.5)
				end
			else
				if TORS ~= nil then
					CreateSound("215395388", EYE, 10, 2)
					local DIST = (TORS.Position - EYE.Position).Magnitude
					MagicSphere(VT(0, 0, 0), 15, CF(EYE.Position), SKILLTEXTCOLOR, VT(1, 1, 1))
					MagicSphere(VT(1, 1, DIST), 15, CF(EYE.Position, TORS.Position) * CF(0, 0, -DIST / 2), SKILLTEXTCOLOR, VT(0, 0, 0))
					MagicSphere(VT(0, 0, 0), 15, CF(TORS.Position), SKILLTEXTCOLOR, VT(1, 1, 1))
					EYE.CFrame = CF(EYE.Position, TORS.Position)
					TORS.Parent:BreakJoints()
					Swait(35)
				end
				for i = 1, 10 do
					Swait()
					M.Scale = M.Scale - VT(0.1, 0.1, 0.1) * 3
				end
			end
			EYE:remove()
		end))
	end
	GYRO:remove()
	ATTACK = false
	Rooted = false
end
function Ruler()
	local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 7 * Player_Size, Character)
	if HITFLOOR ~= nil then
		do
			local HITBODIES = {}
			ATTACK = true
			Rooted = true
			local ABSOLUTE = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "SuperNova", VT(0, 0, 0))
			ABSOLUTE.Color = SKILLTEXTCOLOR
			MakeForm(ABSOLUTE, "Ball")
			CreateSound("814168787", ABSOLUTE, 10, 0.3)
			for i = 0, 4, 0.1 / Animation_Speed do
				Swait()
				ABSOLUTE.Size = ABSOLUTE.Size + VT(0.2, 0.2, 0.2)
				ABSOLUTE.CFrame = RootPart.CFrame * CF(0, 5 + ABSOLUTE.Size.Y / 2, 0)
				ABSOLUTE.Transparency = ABSOLUTE.Transparency - 0.01
				local CHARGE = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Star", VT(1, 1, 1))
				MakeForm(CHARGE, "Ball")
				CHARGE.Color = C3(0, 0, 0)
				CHARGE.CFrame = CF(RootPart.Position) * CF(MRANDOM(-15, 15), -6, MRANDOM(-15, 15))
				FireArc(CHARGE, ABSOLUTE.Position, 45, 45, true)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			CreateSound("907333406", Head, 10, 1)
			for i = 0, 2, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			coroutine.resume(coroutine.create(function()
				local PITS = {}
				CreateSound("178452217", ABSOLUTE, 10, 0.7)
				for i = 1, 6 do
					for i = 1, 10 do
						Swait()
						Slice("Thin", ABSOLUTE.Size.X / 20, 15, ABSOLUTE.CFrame * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180))), "Really black", VT(-0.01, 0, -0.01))
						ABSOLUTE.Size = ABSOLUTE.Size * 0.9
					end
					for i = 1, 10 do
						Swait()
						ABSOLUTE.Size = ABSOLUTE.Size * 1.12
					end
				end
				CreateSound("215395388", ABSOLUTE, 10, 0.6)
				CreateSound("215395388", ABSOLUTE, 10, 0.65)
				CreateSound("215395388", ABSOLUTE, 10, 0.7)
				for i = 1, 75 do
					Swait()
					local ICICLE = IT("CornerWedgePart", Effects)
					ICICLE.Locked = true
					ICICLE.CanCollide = false
					ICICLE.Anchored = true
					ICICLE.Color = C3(0, 0, 0)
					ICICLE.Material = "Neon"
					ICICLE.Size = VT(i / 3, i * 2, i / 3)
					ICICLE.CFrame = CF(HITPOS) * CF(MRANDOM(-ABSOLUTE.Size.X, ABSOLUTE.Size.X), 0, MRANDOM(-ABSOLUTE.Size.X / 1.5, ABSOLUTE.Size.X / 1.5)) * ANGLES(RAD(MRANDOM(-25, 25)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-25, 25)))
					table.insert(PITS, ICICLE)
					killnearest(ICICLE.Position, ICICLE.Size.Y / 1.5, -100)
					ABSOLUTE.Size = ABSOLUTE.Size * 1.03
					killnearest(ABSOLUTE.Position, ABSOLUTE.Size.X / 1.9, -100)
					for i = 1, 3 do
						Slice("Thin", ABSOLUTE.Size.X / 20, 5, ABSOLUTE.CFrame * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180))), "Really black", VT(-0.01, 0, -0.01))
					end
					CreateWave(VT(ABSOLUTE.Size.X / 1.5, 35, ABSOLUTE.Size.X / 1.5), 25, CF(HITPOS) * ANGLES(RAD(0), RAD(i * 5), RAD(0)), false, 0, C3(0, 0, 0), VT(i / 3, 0, i / 3))
				end
				ABSOLUTE.Transparency = 0
				for i = 1, 10 do
					Swait()
					ABSOLUTE.Size = ABSOLUTE.Size * 0.9
					ABSOLUTE.Transparency = ABSOLUTE.Transparency + 0.1
				end
				Debris:AddItem(ABSOLUTE, 5)
				Swait(50)
				for i = 1, 10 do
					Swait()
					for e = 1, #PITS do
						if PITS[e] ~= nil then
							local E = PITS[e]
							E.Transparency = E.Transparency + 0.1
						end
					end
				end
				for e = 1, #PITS do
					if PITS[e] ~= nil then
						local E = PITS[e]
						E:remove()
					end
				end
			end))
			ATTACK = false
			Rooted = false
		end
	end
end
local Decal = IT("Decal")
function Monarch_Hop()
	ATTACK = true
	Rooted = false
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Warphole", VT(0, 0, 0))
	O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(0), RAD(0))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=332014171"
	local decal2 = Decal:Clone()
	decal2.Parent = O1
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=332014171"
	local O2 = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Warphole", VT(0, 0, 0))
	local POS = VT(RootPart.Position.X, Mouse.Hit.p.Y + 6, RootPart.Position.Z)
	O2.CFrame = CF(Mouse.Hit.p + VT(0, 6, 0), POS) * ANGLES(RAD(90), RAD(0), RAD(0))
	local ROOT = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Warphole", VT(0, 0, 0))
	ROOT.CFrame = CF(O2.Position, RootPart.Position)
	local decal = Decal:Clone()
	decal.Parent = O2
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=332014171"
	local decal2 = Decal:Clone()
	decal2.Parent = O2
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=332014171"
	CreateSound("84005018", O1, 10, 0.7)
	CreateSound("84005018", O2, 10, 0.7)
	for i = 1, 75 do
		Swait()
		O1.Size = O1.Size + VT(0.1, 0, 0.1)
		O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(i), RAD(0))
		O2.Size = O2.Size + VT(0.1, 0, 0.1)
		O2.CFrame = O2.CFrame * ANGLES(RAD(0), RAD(i), RAD(0))
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(90), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(5 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(90), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-5 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	Rooted = true
	UNANCHOR = false
	RootPart.Anchored = true
	VALUE1 = true
	for i = 1, 15 do
		Transparency(i / 15)
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, -0.13)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(16 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-15), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(5 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-15), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-5 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	RootPart.CFrame = ROOT.CFrame
	ROOT:remove()
	for i = 1, 15 do
		Transparency(1 - i / 15)
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, -0.5)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(16 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-15), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(5 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-15), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-5 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	VALUE1 = false
	coroutine.resume(coroutine.create(function()
		for i = 1, 75 do
			Swait()
			O1.Size = O1.Size - VT(0.1, 0, 0.1)
			O1.CFrame = O1.CFrame * ANGLES(RAD(0), RAD(i), RAD(0))
			O2.Size = O2.Size - VT(0.1, 0, 0.1)
			O2.CFrame = O2.CFrame * ANGLES(RAD(0), RAD(i), RAD(0))
		end
		O1:remove()
		O2:remove()
	end))
	UNANCHOR = true
	RootPart.Anchored = false
	ATTACK = false
	Rooted = false
end
function Roar()
	ATTACK = true
	Rooted = true
	local ROAR = CreateSound("131172215", Head, 10, 1)
	Swait()
	repeat
		Swait()
		ROAR.Parent = Head
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(-15 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(15 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-15 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-25 - 7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-15 - 7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	until ROAR.Playing == false
	ATTACK = false
	Rooted = false
end
function MouseDown(Mouse)
	if ATTACK == false then
	end
end
function MouseUp(Mouse)
	HOLD = false
end
function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		Governor_Bomb()
	end
	if Key == "b" and ATTACK == false then
		Command_Rush()
	end
	if Key == "c" and ATTACK == false then
		Ruler()
	end
	if Key == "q" and ATTACK == false then
		Monarch_Hop()
	end
	if Key == "t" and ATTACK == false then
		Roar()
	end
end
function KeyUp(Key)
	KEYHOLD = false
end
Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)
function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and Disable_Jump == true then
		Humanoid.Jump = false
	end
end)
Humanoid.HipHeight = 2
Head:ClearAllChildren()
local FF = IT("ForceField", Character)
FF.Visible = false
Speed = 35
function refit()
	RootJoint.Parent = RootPart
	Neck.Parent = Torso
	RightShoulder.Parent = Torso
	LeftShoulder.Parent = Torso
	RightHip.Parent = Torso
	LeftHip.Parent = Torso
	RootPart.Parent = Character
	LeftArm.Parent = Character
	RightArm.Parent = Character
	RightLeg.Parent = Character
	LeftLeg.Parent = Character
	Torso.Parent = Character
	Head.Parent = Character
end
local FOUNDFORGOTTEN = false
while true do
	Swait()
	ANIMATE.Parent = nil
	local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
	IDLEANIMATION:Play()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 7 * Player_Size, Character)
	if ATTACK == false then
		if TORSOVELOCITY < 1 then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(5 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-5 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif TORSOVELOCITY > 1 then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(25 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(0 - 2.5 * SIN(SINE / 12)), RAD(15 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(0 + 2.5 * SIN(SINE / 12)), RAD(-15 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 5.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" then
			c.Material = "Neon"
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			if c == Torso then
				c.Color = C3(0, 0, 0)
			elseif c == RightArm then
				c.Color = C3(0, 0.13, 0)
			elseif c == LeftArm then
				c.Color = C3(0, 0.13, 0)
			elseif c == RightLeg then
				c.Color = C3(0, 0.03, 0)
			elseif c == LeftLeg then
				c.Color = C3(0, 0.03, 0)
			elseif c == Head then
				if c:FindFirstChild("Dominus") == nil then
					local M = CreateMesh("SpecialMesh", c, "FileMesh", "527245069", "527244862", VT(1, 1, 1) * 1.1, VT(0, 0, 0))
					M.Name = "Dominus"
				end
				if c:FindFirstChild("face") then
					c.face:remove()
				end
			end
		elseif c.ClassName == "Shirt" or c.ClassName == "Pants" or c.ClassName == "CharacterMesh" or c.ClassName == "Accessory" or c.Name == "Body Colors" then
			c:remove()
		end
	end
	FF.Parent = Character
	sick.Parent = Character
	refit()
	script.Parent = WEAPONGUI
	Character.Parent = workspace
	Humanoid.PlatformStand = false
	Humanoid.Name = "Praefectus"
	for _, c in pairs(game.Players:GetChildren()) do
		if c.Character ~= nil and c.Character.Parent ~= workspace and c.Character.Parent ~= nil then
			c.Character:BreakJoints()
		end
	end
	FOUNDFORGOTTEN = false
	Humanoid.DisplayDistanceType = "None"
	for _, c in pairs(workspace:GetChildren()) do
		if c.ClassName == "Model" then
			for _, q in pairs(c:GetChildren()) do
				if q.Name == "Forgotten Dominus" then
					FOUNDFORGOTTEN = true
				end
			end
		end
	end
	if FOUNDFORGOTTEN == true then
		sick:Stop()
	else
		sick.Playing = true
	end
end
