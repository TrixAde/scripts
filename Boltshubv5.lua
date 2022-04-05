
--Sasquatch
Client = {
    Modules = {
        ClientEnvoirmenwdat,
        ClientMain,
        CreateProj,
        CretTrail,
        ModsShit
    },
    Toggles = {
        BHop = false,
        WallBang = false,
        InstantRespawn = false,
        AntiAim = false,
        AutoAmmo = false,
        AutoHealth = false,
        Trac = false,
        Sight = false,
        FOV = false,
        Visiblecheck = false,
        SilentAim = false,

    },
    Values = {
        JumpPower = 50,
        LookMeth = 'Look Up',
        Test = '',
        FOV = 150,
        ChatMsg = 'Bolts Hub V5 Is The Best Arsenal GUI - Sponsored By Carls Jr',
        AimPart = 'Head'

        
    }
}

local lib = loadstring(game:HttpGet("https://pastebin.com/raw/2U92qyG3"))()
main = lib:Window()
CombatW = main:Tab('Combat')
FEW = main:Tab('Gun Mods')
Bolts = main:Tab('LocalPlayer')
ServerW = main:Tab('FE/Trolling')
VisualsW = main:Tab('Visuals')
FarmingW = main:Tab('Arsenal Settings')
MiscW = main:Tab('Credits')


local CurrentCamera = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for i,v in pairs(Players.GetPlayers(Players)) do
            local Head = v.Character.FindFirstChild(v.Character, "Head")
            if Head then 
                local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
                if Vis then
                    local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
                    local Dist = (TheirPos - MousePos).Magnitude
                    if Dist < MaxDist and Dist <= Client.Values.FOV then
                        MaxDist = Dist
                        Closest = v
                    end
                end
            end
        
    end
    return Closest
end

function GetAimPart()
    if Client.Values.AimPart == 'Head' then
        return 'Head'
    end
    if Client.Values.AimPart == 'LowerTorso' then
        return 'LowerTorso'
    end
    if Client.Values.AimPart == 'Random' then
        if math.random(1,4) == 1 then
            return 'Head'
        else
            return 'LowerTorso'
        end
    end
end

local mt = getrawmetatable(game)
local namecallold = mt.__namecall
local index = mt.__index
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
    local Args = {...}
    NamecallMethod = getnamecallmethod()
    if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" and Client.Toggles.WallBang then
        table.insert(Args[2], workspace.Map)
    end
    if NamecallMethod == "FindPartOnRayWithIgnoreList" and not checkcaller() and Client.Toggles.SilentAim then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, GetAimPart()) then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character[GetAimPart()].Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return namecallold(self, unpack(Args))
        end
    end
    if tostring(NamecallMethod) == "FireServer" and tostring(self) == "ControlTurn" then
        if Client.Toggles.AntiAim == true then
            if Client.Values.LookMeth == "Look Up" then
                Args[1] = 1.3962564026167
            end
            if Client.Values.LookMeth == "Look Down" then
                Args[1] = -1.5962564026167
            end
            if Client.Values.LookMeth == "Smell Your Butt" then
                Args[1] = -8.1
            end
            if Client.Values.LookMeth == "Give Your Self Top" then
                Args[1] = -3.1 --3.1
            end
            if Client.Values.LookMeth == "Torso In Legs" then
                Args[1] = -6.1;
            end
            return namecallold(self, unpack(Args))
        end
    end
    return namecallold(self, ...)
end)
setreadonly(mt, true)
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 2
FOVCircle.NumSides = 460
FOVCircle.Filled = false
FOVCircle.Transparency = 0.6
FOVCircle.Radius = Client.Values.FOV
FOVCircle.Color = Color3.new(255,0,0)
game:GetService("RunService").Stepped:Connect(function()
    if Client.Toggles.FireRate == true then
        Client.Modules.ClientEnvoirment.DISABLED = false
        Client.Modules.ClientEnvoirment.DISABLED2 = false
    end
    if Client.Toggles.NoRecoil == true then
        Client.Modules.ClientEnvoirment.recoil = 0
    end
    if Client.Toggles.NoSpread == true then
        Client.Modules.ClientEnvoirment.currentspread = 0
        Client.Modules.ClientEnvoirment.spreadmodifier = 0
    end
    if Client.Toggles.AlwaysAuto == true then
        Client.Modules.ClientEnvoirment.mode = 'automatic'
    end
    if Client.Toggles.InfAmmo == true then
        debug.setupvalue(Client.Modules.ModsShit, 3, 70)
    end
    FOVCircle.Radius = Client.Values.FOV
    if Client.Toggles.FOV == true then
        FOVCircle.Visible = true
    else
        FOVCircle.Visible = false
    end
    FOVCircle.Position = game:GetService('UserInputService'):GetMouseLocation()
end)


spawn(function()
    while true do
        wait()
        if Client.Toggles.BHop == true then
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end
        if Client.Toggles.JumpPower == true then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Client.Values.JumpPower
        end
        if Client.Toggles.InstantRespawn == true then
            if not game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cam") then
                if game.Players.LocalPlayer.PlayerGui.Menew.Enabled == false then
                    game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
                    wait()
                end
            end
        end
    end
end)

function RandomPlr()
    tempPlrs = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Spawned") then
            table.insert(tempPlrs,v)
        end
    end
    return tempPlrs[math.random(1,#tempPlrs)]    
end

function KnifeKill()
    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Crit = math.random() > .6 and true or false;
    Target = RandomPlr()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.Character.Head.CFrame * CFrame.new(0,2,3))
    SwitchToKnife()
    wait(.2)
    for i =1,20 do
        SwitchToKnife()
        wait()
        local getenemys=function()--simple get enemys function (with proper ffa detection)
    local a={}
    if not game.ReplicatedStorage.wkspc.Status.RoundOver.Value and not game.ReplicatedStorage.wkspc.Status.Preparation.Value and game.Players.LocalPlayer.Status.Team.Value~="Spectator"then--do nothing on round over aswell as when the client is in spectator
        for _,v in pairs(game.Players:GetChildren())do--get players
            if(v.Team~=game.Players.LocalPlayer.Team or game.ReplicatedStorage.wkspc.FFA.Value)and v~=game.Players.LocalPlayer then--ffa detection aswell as when its ffa it dosent target the client
                if v.Character and not v.Character:FindFirstChild("ShuckyHAX")and v.Character:FindFirstChild("Spawned")then--check if the player can be damage
                    table.insert(a,v)--insert the player into a table
                end
            end
        end
    end
    return a
end
    for _,v in pairs(getenemys())do
        local Partpos=v.Character.Head.Position+Vector3.new(math.random(),math.random(),math.random())--get head pos with random position to prevent ss detection(old kill all had it so i added it)
        local Packedstring=string.pack(
                        debug.getconstant(require(game:GetService("ReplicatedStorage").Modules.ClientFunctions).CreateProjectile,105),
                        Partpos.X,
                        Partpos.Y,
                        Partpos.Z,
                        tostring(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value),
                        1,--headshot=1 none=0
                        0,--unknown
                        0,--backstab=1 none=0
                        0,--forcecrit=1 none=0
                        0,--morecrit=1 none=0
                        0,--spoof=2 none=0
                        0,--unkown
                        0,--Player Distance
                        1,--Current Spell
                        0,--scope=1 noscope=0
                        0--aircrit=1 none=0
                    )
        game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head,Packedstring)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
end
end
CombatW:Keybind(
	"Kill All (Spam Me And Press Kill Aura Below)",
	Enum.KeyCode.E,
	function()
		KnifeKill()
	end
)
CombatW:Button('Kill Aura',function()
    _G.Range = 10000

return(function(i,a,a)local k=string.char;local e=string.sub;local p=table.concat;local n=math.ldexp;local q=getfenv or function()return _ENV end;local m=select;local f=unpack or table.unpack;local j=tonumber;local function l(h)local b,c,d="","",{}local g=256;local f={}for a=0,g-1 do f[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())d[1]=b;while a<#h do local a=i()if f[a]then c=f[a]else c=b..e(b,1,1)end;f[g]=b..e(c,1,1)d[#d+1],b,g=c,c,g+1 end;return table.concat(d)end;local j=l('26V26K27526L26G27526K24B23X23P24827727923V23X23L23T26L26E27924R23T24825B23T24E24A23P23Z27K27127925A23T24C23K27V23X24823T23S25B24823N24E23X23V27K26H27924B23R24F24C23Z26L26I27928928524924F26L26D27Z23N24923M23S24J24A27S26L28G27525623X23K24923T26N26K29427924C27C24E28T28V27525728B28J29G27W26L26F27N27P24V23O23P23K23S24E23T23M26L26A27923U23P28Z24Q23P29I24829V29X23S28N27924K27D23Y23N24426L26J27925823K23X24527S28T29S27524G23N23Z2982AQ2AS29329K26K29V23X28C23Z28624E26L2702AH24923L23X23M23N23P23S25A23N23N2482582B827E26C2AP23N24F27D23P23N2A22B524H28D23M27D24923S27K26M27924Z24R29E27525A2BI28E27F27524I27I23T2792CO25124S2AG27524P29223M24828T27M27524Q29823K24O27I28D27K2CZ26K2A92A027R27T27S2CO24L2792722B526L2CO2722792DK2CA26I26O27928G2DK2DK26G25L2DS29D26K2DW2AH2DZ2DI2792CA27525O26Z2CO26K29C2DM26K2CA2782EA2752CA2CA25O2EH28G2EL2EA28O2EO2CO2AO2ER2792BU25M2CO2BE2DK28V2E12752EZ2E02DX2CO2DK2E42752D82722732DZ2E626K2EO2DU2EB26K2ED29C2AW2F72FJ2EK2762DZ2682FO2FF2EH2EE2E02CO24P2DZ25O27828G2782692FK25Q26K2AO2A427929C28G2AO2DP2DR28G26R2DZ2DV2F626K2GJ2GL2792G02F828V28G2FF25O2BE28G28G2EC2752AO26B2EM2G92FX2EO2GY26K2BE2H726K28G27Y2HB28G2DM2HF26K2FD2EO28O2782A42HL26K28O2FD2DY28G2EQ2GJ2H826W2FK28V28O26X27925O2GJ28O28O26Y2HQ25N2HC26K2GR2HQ2F52GQ2G12HW2FY2E927226P2IE2GV2752I62FJ2ED2BU2H32EP26K2BU2FQ2IE28O2HA2IP2IE2E928O2IB25X2DZ2HM2GM2J72GP2CT2E32G828G26S2I32I82HM26K2A42ED2GF2I32H12H52H026K2F12EH2AO28V2IY2AO2AO26T2FG2JQ2AO26U2K22IW2H527427927M2952CO29S2J527527Y2BU29S2DK26I2ER2K12DO2IF2752KN2KP2DN2752G62FR279');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,c,e,b=i(j,a,a+3);f=d(f,236)c=d(c,236)e=d(e,236)b=d(b,236)a=a+4;return(b*16777216)+(e*65536)+(c*256)+f;end;local function h()local b=d(i(j,a,a),236);a=a+1;return b;end;local function g()local c,b=i(j,a,a+2);c=d(c,236)b=d(b,236)a=a+2;return(b*256)+c;end;local function l()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return n(b,a-1023)*(e+(d/(2^52)));end;local n=b;local function o(b)local c;if(not b)then b=n();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),236))end return p(b);end;local a=b;local function n(...)return{...},m('#',...)end local function i()local j={};local e={};local a={};local k={[#{{673;604;222;275};"1 + 1 = 111";}]=e,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{978;888;184;699};}]=a,[#{"1 + 1 = 111";}]=j,};local a=b()local d={}for c=1,a do local b=h();local a;if(b==3)then a=(h()~=0);elseif(b==0)then a=l();elseif(b==1)then a=o();end;d[c]=a;end;for a=1,b()do e[a-1]=i();end;for i=1,b()do local a=h();if(c(a,1,1)==0)then local e=c(a,2,3);local f=c(a,4,6);local a={g(),g(),nil,nil};if(e==0)then a[3]=g();a[4]=g();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=g();end;if(c(f,1,1)==1)then a[2]=d[a[2]]end if(c(f,2,2)==1)then a[3]=d[a[3]]end if(c(f,3,3)==1)then a[4]=d[a[4]]end j[i]=a;end end;k[3]=h();return k;end;local function o(a,b,j)a=(a==true and i())or a;return(function(...)local e=a[1];local d=a[3];local a=a[2];local l=n local c=1;local g=-1;local k={};local i={...};local h=m('#',...)-1;local a={};local b={};for a=0,h do if(a>=d)then k[a-d]=i[a+1];else b[a]=i[a+#{"1 + 1 = 111";}];end;end;local a=h-d+1 local a;local d;while true do a=e[c];d=a[1];if d<=19 then if d<=9 then if d<=4 then if d<=1 then if d==0 then local e=a[2];local f=a[4];local d=e+2 local e={b[e](b[e+1],b[d])};for a=1,f do b[d+a]=e[a];end;local e=e[1]if e then b[d]=e c=a[3];else c=c+1;end;else b[a[2]]=b[a[3]]-b[a[4]];end;elseif d<=2 then if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;elseif d>3 then local d=a[2];local c=b[a[3]];b[d+1]=c;b[d]=c[a[4]];else local c=a[2]b[c]=b[c](f(b,c+1,a[3]))end;elseif d<=6 then if d>5 then local c=a[2]local e={b[c](f(b,c+1,g))};local d=0;for a=c,a[4]do d=d+1;b[a]=e[d];end else if(b[a[2]]==b[a[4]])then c=c+1;else c=a[3];end;end;elseif d<=7 then c=a[3];elseif d==8 then b[a[2]]=b[a[3]]-b[a[4]];else b[a[2]]=j[a[3]];end;elseif d<=14 then if d<=11 then if d==10 then b[a[2]]=b[a[3]][a[4]];else b[a[2]]=b[a[3]];end;elseif d<=12 then local c=a[2]local e={b[c](f(b,c+1,g))};local d=0;for a=c,a[4]do d=d+1;b[a]=e[d];end elseif d>13 then b[a[2]]=j[a[3]];else do return end;end;elseif d<=16 then if d>15 then local g;local d;d=a[2];g=b[a[3]];b[d+1]=g;b[d]=g[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](f(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]]-b[a[4]];else do return end;end;elseif d<=17 then local c=a[2]b[c](f(b,c+1,a[3]))elseif d>18 then local d;local h;local k,m;local i;local d;b[a[2]]=j[a[3]];c=c+1;a=e[c];d=a[2];i=b[a[3]];b[d+1]=i;b[d]=i[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](f(b,d+1,a[3]))c=c+1;a=e[c];d=a[2];i=b[a[3]];b[d+1]=i;b[d]=i[a[4]];c=c+1;a=e[c];d=a[2]k,m=l(b[d](b[d+1]))g=m+d-1 h=0;for a=d,g do h=h+1;b[a]=k[h];end;c=c+1;a=e[c];d=a[2]k={b[d](f(b,d+1,g))};h=0;for a=d,a[4]do h=h+1;b[a]=k[h];end c=c+1;a=e[c];c=a[3];else local a=a[2]b[a]=b[a]()end;elseif d<=29 then if d<=24 then if d<=21 then if d==20 then b[a[2]]=a[3];else b[a[2]]=b[a[3]];end;elseif d<=22 then local g;local d;b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=j[a[3]];c=c+1;a=e[c];d=a[2];g=b[a[3]];b[d+1]=g;b[d]=g[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](f(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];d=a[2];g=b[a[3]];b[d+1]=g;b[d]=g[a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]];c=c+1;a=e[c];b[a[2]]=b[a[3]];elseif d==23 then local g;local d;d=a[2];g=b[a[3]];b[d+1]=g;b[d]=g[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](f(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;else if(b[a[2]]<b[a[4]])then c=c+1;else c=a[3];end;end;elseif d<=26 then if d>25 then local a=a[2]local d,c=l(b[a](b[a+1]))g=c+a-1 local c=0;for a=a,g do c=c+1;b[a]=d[c];end;else if(b[a[2]]==b[a[4]])then c=c+1;else c=a[3];end;end;elseif d<=27 then local d=a[2];local c=b[a[3]];b[d+1]=c;b[d]=c[a[4]];elseif d>28 then local g;local d;b[a[2]]=j[a[3]];c=c+1;a=e[c];d=a[2];g=b[a[3]];b[d+1]=g;b[d]=g[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](f(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];if(b[a[2]]==b[a[4]])then c=c+1;else c=a[3];end;else if not b[a[2]]then c=c+1;else c=a[3];end;end;elseif d<=34 then if d<=31 then if d==30 then local c=a[2]b[c](f(b,c+1,a[3]))else b[a[2]]=b[a[3]][a[4]];end;elseif d<=32 then local e=a[2];local f=a[4];local d=e+2 local e={b[e](b[e+1],b[d])};for a=1,f do b[d+a]=e[a];end;local e=e[1]if e then b[d]=e c=a[3];else c=c+1;end;elseif d>33 then b[a[2]]=a[3];else local c=a[2]b[c]=b[c](f(b,c+1,a[3]))end;elseif d<=37 then if d<=35 then if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;elseif d==36 then local a=a[2]b[a]=b[a]()else c=a[3];end;elseif d<=38 then local a=a[2]local d,c=l(b[a](b[a+1]))g=c+a-1 local c=0;for a=a,g do c=c+1;b[a]=d[c];end;elseif d==39 then if(b[a[2]]<b[a[4]])then c=c+1;else c=a[3];end;else if not b[a[2]]then c=c+1;else c=a[3];end;end;c=c+1;end;end);end;return o(true,{},q())();end)(string.byte,table.insert,setmetatable);
end)
CombatW:Toggle('Soft Aim',function(state)
    Client.Toggles.SilentAim = state
end)
CombatW:Toggle('WallBang (Works 30% of the time on some walls)',function(state)
    Client.Toggles.WallBang = state
end)
CombatW:Dropdown('Aim Part',{'Head','LowerTorso','Random'},function(Selected)
    Client.Values.AimPart = Selected
end)


CombatW:Toggle('Draw FOV',function(state)
    Client.Toggles.FOV = state
end)
CombatW:Slider('FOV',1,950,function(num)
    Client.Values.FOV = num
end)
CombatW:Slider('FOV Num Sides',1,40,function(num)
    FOVCircle.NumSides = num
end)
CombatW:Slider('FOV Thickness',1,100,function(num)
    FOVCircle.Thickness = num
end)
CombatW:Colorpicker("FOV Color",Color3.fromRGB(225, 0, 0), function(color)
FOVCircle.Color = color
end)

FEW:Button('Press To Get Best Gun Mod Settings',function()
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "Ammo" or c.Name == "StoredAmmo" then
c.Value = 300 -- don't set this above 300 or else your guns wont work
elseif c.Name == "AReload" or c.Name == "RecoilControl" or c.Name == "EReload" or c.Name == "SReload" or c.Name == "ReloadTime" or c.Name == "EquipTime" or c.Name == "Spread" or c.Name == "MaxSpread" then
c.Value = 0
elseif c.Name == "Range" then
c.Value = 9e9
elseif c.Name == "Auto" then
c.Value = true
elseif c.Name == "FireRate" or c.Name == "BFireRate" then
c.Value = 0.02 -- don't set this lower than 0.02 or else your game will crash
end
end
end
game:GetService('RunService').Stepped:connect(function() -- Infinite Ammo by Frontman#9917
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999 -- dont do it higher then 999
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
        end)
end)

FEW:Textbox(
    "Enter Firerate Amount Must be above 0.02",
    true,
    function(Text) 
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "FireRate" or c.Name == "BFireRate" then
c.Value = Text
end
end
end
end
)
FEW:Textbox(
    "Enter Ammo Amount Must Be Under 300",
    true,
    function(Text) 
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "Ammo" or c.Name == "StoredAmmo" then
c.Value = Text -- don't set this above 300 or else your guns wont work
end
end
end
end
)
FEW:Textbox(
    "Enter Recoil Amount (1 Is Recomended)",
    true,
    function(Text) 
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "AReload" or c.Name == "RecoilControl" or c.Name == "EReload" or c.Name == "SReload" or c.Name == "ReloadTime" or c.Name == "EquipTime" or c.Name == "Spread" or c.Name == "MaxSpread" then
c.Value = Text
end
end
end
end
)
FEW:Button('Automatic Weapons On',function()
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "Auto" then
c.Value = true
end
end
end
end)
FEW:Button('Automatic Weapons Off',function()
    for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
for i,x in next, getconnections(c.Changed) do
x:Disable() -- probably not needed
end
if c.Name == "Auto" then
c.Value = false
end
end
end
end)

FEW:Button('999 Ammo Bypass',function()
    game:GetService('RunService').Stepped:connect(function() -- Infinite Ammo by Frontman#9917
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999 -- dont do it higher then 999
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
        end)
    end)
Bolts:Textbox(
    "Enter A Skin You Want In Your Locker",
    true,
    function(Text)
    local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

local Loadout;
for i,v in pairs(getupvalues(Core.ViewItems)) do
    if typeof(v) == "table" then
        if v.Skins then
            Loadout = v;
        end
    end
end

table.insert(Loadout.Skins, Text);
    end
)

Bolts:Textbox(
    "Enter A Melee You Want In Your Locker",
    true,
    function(Text)
    local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

local Loadout;
for i,v in pairs(getupvalues(Core.ViewItems)) do
    if typeof(v) == "table" then
        if v.Melees then
            Loadout = v;
        end
    end
end

table.insert(Loadout.Melees, Text);
    end
)



Bolts:Button('Press E To Fly (E To To Toggle On And Off',function()
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
local maxspeed = 100
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
end)

Bolts:Button('Remove All Stuff From Locker',function()
    -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = {
        [1] = "BuyItem",
        [2] = "Crate",
        [3] = "Flair Crat"
    }
}

game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))

end)
Bolts:Button('Get Rid Of Nerf Ad',function()
game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.NerfOrNothing:Destroy()
end)
Bolts:Button('Rejoin',function()
    local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
end)

Bolts:Button('Server Hop',function()
game.Players.LocalPlayer:Kick("Teleporting")--kick the player so that the server hop isnt delayed
coroutine.wrap(function()
    for i=0,math.huge do
        local a=""
        for _=1,i do
            a=a.."."
        end
        game.Players.LocalPlayer:Kick("Server Hoping"..a)--simple animation
        wait(.1)
    end
end)()

local a={}
for _,v in pairs(game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100")).data)do
    if v.playing<v.maxPlayers then
        table.insert(a,v.id)
    end
end
while wait(0.5)do
    game.TeleportService:TeleportToPlaceInstance(game.PlaceId,a[math.random(1,#a)])
end
end)
Bolts:Toggle('Infinite Jump', function(state)
    Client.Toggles.InfJump = state
end)
game:GetService("UserInputService").JumpRequest:connect(function()
    if Client.Toggles.InfJump == true then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)

Bolts:Button('Fast Heal',function()
    while game.RunService.RenderStepped:Wait()do
    pcall(function()
        if game.Players.LocalPlayer.Character then
            if game.Players.LocalPlayer.NRPBS.Health.Value<=99 then
                if game.Players.LocalPlayer.Character:FindFirstChild("Spawned")then
                    for _,v in pairs(game.Workspace.Debris:GetChildren())do
                        if v.Name=="DeadHP"then
                            v.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            v.Transparency=1
                        end
                    end
                    game.ReplicatedStorage.Events.ApplyGun:FireServer(game.ReplicatedStorage.Weapons["Stake Launcher"])
                    game.ReplicatedStorage.Events.HealBoy:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart)
                    game.ReplicatedStorage.Events.ApplyGun:FireServer(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value)
                wait(0.1)
                end
            end
        end
    end)
end
end)

Bolts:Toggle('BHop',function(state)
    Client.Toggles.BHop = state
end)
Bolts:Toggle('Instant Respawn',function(state)
    Client.Toggles.InstantRespawn = state
end)
Bolts:Toggle('Anti-Aim',function(state)
    Client.Toggles.AntiAim = state
end)
Bolts:Dropdown('Aim Method',{'Torso In Legs','Smell Your Butt','Look Up','Give Your Self Top','Look Down'},function(Selected)
    Client.Values.LookMeth = Selected
end)
Bolts:Toggle('Chat Spam',function(state)
    Client.Toggles.SpamChat = state
end)
Bolts:Textbox(
	"Chat Message",
	true,
	function(Text)
		Client.Values.ChatMsg = tostring(Text)
	end
)

spawn(function()
    while true do
        wait(.01)
        if Client.Toggles.SpamChat == true then
            local v1 = Client.Values.ChatMsg
            local v2 = false
            local v4 = false
            local v5 = false
            local rem = game:GetService("ReplicatedStorage").Events.PlayerChatted
            rem:FireServer(v1, v2, v4, v5)
            wait(0.1)
        end
    end
end)
ServerW:Button('*FE* FPS Crash Script V10 (Spawn in for this to work)',function()
    -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "you are about to get crashed by Bolts Hub v5",
    [2] = false,
    [4] = false,
    [5] = true
}

game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))

    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Crash%20script%20v10"))()
end)

ServerW:Button('*FE* Crash Server V11 (This Ping Spike everyone Press whenever you want)',function()
  -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "you are about to get crashed by Bolts Hub v5",
    [2] = false,
    [4] = false,
    [5] = true
}

game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))

local a,b,c=nil,nil,nil([[Boronide, discord.gg/BZEjFbeUvk]]):gsub('(.*)',function(d)local e="zVVhkdIGuWocmLzk8"local f="kBzpJEHVUiI2bpmwJx"local g=4683;local h=5716;while(g<h)do h=g-11432;while(g>(h-(#('Anger may in time change to gladness; vexation may be succeeded by content. But a kingdom that has once been destroyed can never come again into being; nor can the dead ever be brought back to life." - Sun Tzu') - 198)))do h=(g+2845)*2;while(g<h)do h=g-30112;c=getfenv or function()return _ENV end end;if g>(h-9366)then h=(g+9366)f=d end end;if(9366-g)<(h+4704)then g=((h+4683)*2)e=d end end;local c=c()local d=c["string"]["\99\104\97\114"](99,104,97,114)local g=c[string[d](115,116,114,105,110,103)]local h="abTPYsFfA2jQEgn"local j="0bbLrByrmMpEmUbl"local k="nR3dyyu_v"local l=236;local m=179;while(l>(m-((function(A) return (#A - 36) end)('"The wise warrior avoids the battle." - Sun Tzu'))))do m=(l+4174)*(#('"The opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 82)while(l<m)do m=l-17640;while(l>(m-11))do m=(l+419)*2;k=c[g[d](115,116,114,105,110,103)][d]end;if(472-l)<(m+254)then l=((m+236)*2)h=c[g[d](115,116,114,105,110,103)][g[d](98,121,116,101)]end end;if l>(m-6184)then m=(l+472)j=c[g[d](115,116,114,105,110,103)][g[d](103,109,97,116,99,104)]end end;a={[f]=31,['\95'..k(66,111,114,111,110,105,100,101,44,(#('"Great results can be achieved with small forces." - Sun Tzu') - 28),100,105,115,99,111,114,100,46,103,103,47,66,90,69,106,70,98,101,85,118,107)]=e}a[g[d](95,120,122,56,111,56,53,79,50,49,54,52,51,56,76,121,108)]=h;a[g[d](95,120,90,57,73,48,48,120,89,108,111,57,56,55,89,54,88)]=k;a[g[d](95,120,79,79,122,53,121,49,122,122,105,79,50,89,111,111,105)]=j;do local c=421;local d=61.86306902581757;local g=393.9637536494606;local h={}for j in(function()return 978 end)do while(c==372)and((d==300.9870958137443)and(g==344.1689342781188)and(h[448]==false)and(h[732]=='Z3nLA3OU0O')and(h[326]=='P8eYpaqSpI'))do c=421;d=61.86306902581757;g=393.9637536494606;break end;while((d==140.84556119676554)and(g==340.03833502558933)and(h[448]==false)and(h[732]=='acDQv31nSW')and(h[326]=='acxdGI6B2J'))and(c==954)do if(e~=a['\95'..f])then return(a._CaEACAFsK_vQmT)end;h[326]='bDXyrcUBQi'g=277.35703491717163;h[448]=false;d=71.20869671926248;h[732]='r7lrPY8rOk'c=508;break end;if((d==683.7579686773194)and(g==1.2609827867888943)and(h[448]==false)and(h[732]=='bdzJcZwWKO')and(h[326]=='lms2wK2cBK'))and(c==641)then h[448]=false;h[326]='acxdGI6B2J'h[732]='acDQv31nSW'g=340.03833502558933;c=954;if(k(66,111,114,111,110,105,100,101,44,(#('"Be where your enemy is not." - Sun Tzu') - 7),100,105,115,99,111,114,100,46,103,103,47,66,90,69,106,70,98,101,85,118,107)~=f)then return false end;d=140.84556119676554 end;if(c==421)and((d==61.86306902581757)and(g==393.9637536494606))then h[326]='FDR72QTmIk'g=386.1476179889939;c=0;d=30.78128991847313;h[448]=false;h[732]='HdvwZKacBj'end;while((d==71.20869671926248)and(g==277.35703491717163)and(h[448]==false)and(h[732]=='r7lrPY8rOk')and(h[326]=='bDXyrcUBQi'))and(c==508)do h[448]=false;b=f;g=86.73164033843184;h[326]='Objx25soXI'd=31.805298554510003;c=867;h[732]='sFsyCNNvj9'break end;while(c==0)and((d==30.78128991847313)and(g==386.1476179889939)and(h[448]==false)and(h[732]=='HdvwZKacBj')and(h[326]=='FDR72QTmIk'))do d=683.7579686773194;if(a[f]~=nil and(#e~=a[f]))then return 0 end;h[732]='bdzJcZwWKO'h[448]=false;c=641;h[326]='lms2wK2cBK'g=1.2609827867888943;break end;if((d==31.805298554510003)and(g==86.73164033843184)and(h[448]==false)and(h[732]=='sFsyCNNvj9')and(h[326]=='Objx25soXI'))and(c==867)then break end end end;b=f;a[f]=nil end)local d=a["_xZ9I00xYlo987Y6X"]local e=a["_xOOz5y1zziO2Yooi"]local f=a["_xz8o85O216438Lyl"]local g=c()[d(115,116,114,105,110,103)]local h=0;local j={}local k={}local l=g[d(115,117,98)]for a=h,255 do local a,b=d(a),d(a,h)j[a]=b;k[b]=a end(a)["_xz8o85O216438Lyl"]=nil(a)["_xZ9I00xYlo987Y6X"]=(j[387.49741243937603]) ;(a)["_xOOz5y1zziO2Yooi"]=nil;local k=c()[d(115,116,114,105,110,103)][d(115,117,98)]local l="_xoIX2zo8ly6Xl"local m={(a._kORmR5_GT)}local m=0;local m=c()[d(112,97,105,114,115)]local n=g[d(108,101,110)]local o=function(...)return...end;local p=-1;local q=function(b,c,d)local a,b,d,e=d[(a._76_CExW8vAgi4E)](b,c,c+3)c=c+4;return(back*16777216)+(d*65536)+(b*256)+a end;local o=function(b,c,d,e)b=b or((function(A) return (#A - 111) end)('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu'))local c=e[(a._znAtM8j066)](c,d,o(d,o(b,1,(a._dYvfX7)),(a._T0GyCufav)))d=o(d,b,(a._T0GyCufav))return c end;local o=function(b,c,d)local a,b,d,e,f=d[(a._76_CExW8vAgi4E)](b,c,c+4)c=c+((function(A) return (#A - 80) end)('"If the mind is willing, the flesh could go on and on without many things." - Sun Tzu'))return(e*16777216)+(d*65536)+(b*256)+a+(f*4294967296)end;local o=function(b,c,d)local a,b,d=d[(a._76_CExW8vAgi4E)](b,c,c+2)c=c+(#('"There are five dangerous faults which may affect a general: (1) Recklessness, which leads to destruction; (2) cowardice, which leads to capture; (3) a hasty temper, which can be provoked by insults; (4) a delicacy of honor which is sensitive to shame; (5) over-solicitude for his men, which exposes him to worry and trouble." - Sun Tzu') - 333)return(d*65536)+(b*256)+a end;local o=function(b,c,d)local a,b=d[(a._76_CExW8vAgi4E)](b,c,c+1)c=c+2;return(b*256)+a end;local o=c()[d(114,97,119,103,101,116)]local function q(b,c,d)if d==(a._qBpNh6UqYO8Y)then return b==c elseif d==(a._RbG7Uv_E)then return b<c elseif d==(a._XpiuM8)then return b<=c end end;local r=c()[d(116,97,98,108,101)][d(99,111,110,99,97,116)]local s={}local g=g[d(102,111,114,109,97,116)]local function t(b,c,d)if q(d,(a._ANMAVfzbK),(a._qBpNh6UqYO8Y))then return b..c elseif q(d,(a._iJh0SR4zooYf),(a._qBpNh6UqYO8Y))then return r(b,c)end end;local u=c()[d(109,97,116,104)][d(102,108,111,111,114)]local function w(b,c)if q(c,(a._OXgZiwM0MoRbS),(a._qBpNh6UqYO8Y))then return-b elseif q(c,(a._Cln8uZwi),(a._qBpNh6UqYO8Y))then return not b elseif q(c,(a._QChPb1DtkFVB),(a._qBpNh6UqYO8Y))then return#b end end;local function x(b,c,d)if q(d,(a._AUnKjI8UX),(a._qBpNh6UqYO8Y))then return b*c elseif q(d,(a._GgQL9),(a._qBpNh6UqYO8Y))then return b/c elseif q(d,(a._T0GyCufav),(a._qBpNh6UqYO8Y))then return b+c elseif q(d,(a._dYvfX7),(a._qBpNh6UqYO8Y))then return b-c elseif q(d,(a._It4Ywj),(a._qBpNh6UqYO8Y))then return b%c elseif q(d,(a._TnjBKlS8i2Ts),(a._qBpNh6UqYO8Y))then return b^c end end;local y,z,A,B,C,D;do local a=232;local b=543.0981210692491;local c=383.64012349191546;local d={}repeat while(a==593)and((b==146.33103359262768)and(c==589.0009265319519)and(d[767]==false)and(d[132]=='c3Eqb4IQNS')and(d[947]=='a4KhVFPjeR'))do c=115.36675781210123;d[132]='a0XSlFQniK'a=518;d[947]='7t9qvoAfIs'D=function(a,b)local c=""local d=(#('"What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." - Sun Tzu') - 111)for e=1,#a do local a=z(a[e],f(k(b,d,d)))c=c..s[a]or a;d=d+(#('"Build your opponent a golden bridge to retreat across." - Sun Tzu') - 65)if d>#b then d=1 end end;return c end;d[767]=false;b=432.66065308959963;break end;while((b==543.0981210692491)and(c==383.64012349191546))and(a==232)do b=381.73769153578894;c=134.250177489119;d[947]='WKvaKgqX1R'd[132]='jkERGDGN4U'a=0;d[767]=false;break end;if(a==726)and((b==76.20093222548512)and(c==288.554716722424)and(d[767]==false)and(d[132]=='QmXGOFw4uY')and(d[947]=='bIYBu6OqKw'))then break end;while((b==67.07718311183021)and(c==461.94197735415247)and(d[767]==false)and(d[132]=='3HbO5IznRh')and(d[947]=='xvvgl0NpCm'))and(a==609)do b=543.0981210692491;c=383.64012349191546;a=232;break end;if((b==381.73769153578894)and(c==134.250177489119)and(d[767]==false)and(d[132]=='jkERGDGN4U')and(d[947]=='WKvaKgqX1R'))and(a==0)then d[767]=false;c=589.0009265319519;d[132]='c3Eqb4IQNS'd[947]='a4KhVFPjeR'b=146.33103359262768;a=593;C=function(a,b)return u(a)*(2^b)end end;if(a==518)and((b==432.66065308959963)and(c==115.36675781210123)and(d[767]==false)and(d[132]=='a0XSlFQniK')and(d[947]=='7t9qvoAfIs'))then c=288.554716722424;d[132]='QmXGOFw4uY'b=76.20093222548512;a=726;d[767]=false;A=function(a,b)local c=""local d=1;for e=1,#a do local a=z(f(k(a,e,e)),f(k(b,d,d)))c=c..o(s,a)or a;d=d+(#('"In the midst of chaos, there is also opportunity." - Sun Tzu') - 60)if d>#b then d=1 end end;return c end;d[947]='bIYBu6OqKw'end until(false)end;z=function(a,b)local c,d=1,0;while a>0 and b>0 do local e,f=a%2,b%((function(A) return (#A - 97) end)('"The whole secret lies in confusing the enemy, so that he cannot fathom our real intent." - Sun Tzu'))if e~=f then d=d+c end;a,b,c=(a-e)/2,(b-f)/((function(A) return (#A - 93) end)('"Plan for what it is difficult while it is easy, do what is great while it is small." - Sun Tzu')),c*2 end;if a<b then a=b end;while a>0 do local b=a%(#('"Victorious warriors win first and then go to war, while defeated warriors go to war first and then seek to win." - Sun Tzu') - 121)if b>0 then d=d+c end;a,c=(a-b)/(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 54),c*2 end;return d end;for a,b in m(j)do s[f(a)]=a end;local j=(function()return 0.8266326613708053 end)local u=(function(a)while a do j()end;return function()s=nil;z=nil end end) ;(j)()p=function(a)local b={}for a,a in m(a)do b[a]=true end;return b end;local function j(a,b,c)if c then local a=(a/(#('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu') - 205)^(b-(#('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu') - 214)))%2^((c-1)-(b-1)+1)return a-a%((function(A) return (#A - 43) end)('"You have to believe in yourself." - Sun Tzu'))else local b=((function(A) return (#A - 35) end)('"Never venture, never win!" - Sun Tzu'))^(b-1)if(a%(b+b)>=b)then return((function(A) return (#A - 206) end)('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu'))else return 0 end end end;local j=c()[d(117,110,112,97,99,107)]local function u(a,b,c)for a=a,b do c(a)end end;local D={p({((function(A) return (#A - 41) end)('"One may know how to conquer without being able to do it." - Sun Tzu'))}),p({896})}local E=c()[d(110,101,120,116)]do local a=578;local b=34.95175594801718;local c=228.98334819106356;local d={}for e in(function()return 978 end)do while((b==40.096715583615605)and(c==100.2455666736584)and(d[242]==false)and(d[941]=='y3nBiYRpkq')and(d[707]=='B9ASQHQ56w'))and(a==0)do B=function(a,b)local c=""local d=((function(A) return (#A - 43) end)('"You have to believe in yourself." - Sun Tzu'))local e=n(b)-d;u(d,n(a),function(g)c=c..s[z(f(k(a,g,g)),f(k(b,d,d)))]d=(d>e)and(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 55)or d+(#('"Who wishes to fight must first count the cost." - Sun Tzu') - 57)end)return c end;a=399;b=94.88193697238157;d[941]='RLAYzbuj34'c=8.998398362660442;d[242]=false;d[707]='OFvjmBUMzQ'break end;if(a==567)and((b==240.75786847285303)and(c==114.10465342893528)and(d[242]==false)and(d[941]=='eQ6a493Ocn')and(d[707]=='iC0kbxbIEQ'))then break end;while(a==578)and((b==34.95175594801718)and(c==228.98334819106356))do d[941]='y3nBiYRpkq'd[707]='B9ASQHQ56w'b=40.096715583615605;a=0;c=100.2455666736584;d[242]=false;break end;while((b==94.88193697238157)and(c==8.998398362660442)and(d[242]==false)and(d[941]=='RLAYzbuj34')and(d[707]=='OFvjmBUMzQ'))and(a==399)do d[242]=false;y=function(a,b)local c=""local d=(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 55)local e=#b-1;u(d,#a,function(g)c=c..s[z(a[g],f(k(b,d,d)))]d=(d>e)and 1 or d+1 end)return c end;d[941]='eQ6a493Ocn'd[707]='iC0kbxbIEQ'b=240.75786847285303;a=567;c=114.10465342893528;break end;while(a==423)and((b==141.72504020959408)and(c==188.14411998945263)and(d[242]==false)and(d[941]=='pfn4TQhrXc')and(d[707]=='0ZWe1mcK0v'))do b=34.95175594801718;c=228.98334819106356;a=578;break end end end;local E={{},{}}local F=1;for a=1,255 do if a>=112 then E[2][F]=a;F=F+1 else E[1][a]=a end end;local j=d(j(E[1]))..d(j(E[2]))local j,E,F,G,H,I,J;I=y({2,34,62,65,33,7,((function(A) return (#A - 90) end)('"What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." - Sun Tzu')),50,59,37,1},"\106\83\84\50\111\101\121\68\65\73\74\89")local K=5011;local L=6276;while(K<L)do L=K-12552;while(K>(L-11))do L=(K+134)*(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 368)while(K<L)do L=K-20580;J=function(a,...)return B(a,I,...)end end;if K>(L-10022)then L=(K+10022)H=function(...)return y(...,I)end end end;if(10022-K)<(L+5012)then K=((L+5011)*2)j=function(a,...)return B(a,F,...)end end end;F=y({40,27,26,119,56,22,40,10,2,32},"\106\83\84\50\111\101\121\68\65\73\74\89")G=y({((function(A) return (#A - 39) end)('"Quickness is the essence of the war." - Sun Tzu')),58,19,86,63,(#('"Bravery without forethought, causes a man to fight blindly and desperately like a mad bull. Such an opponent, must not be encountered with brute force, but may be lured into an ambush and slain." - Sun Tzu') - 171),46,8,5,(#('"There are five dangerous faults which may affect a general: (1) Recklessness, which leads to destruction; (2) cowardice, which leads to capture; (3) a hasty temper, which can be provoked by insults; (4) a delicacy of honor which is sensitive to shame; (5) over-solicitude for his men, which exposes him to worry and trouble." - Sun Tzu') - 326),2,59},"\106\83\84\50\111\101\121\68\65\73\74\89")local y=f(d(1))a["_x_6z8_oi6946zZ7Y6"]=function(b,c)local d=d()local e=y;for h=y,#b do local b=z(f(k(b,h,h)),f(k(c,e,e)))d=g(((a._JhAp)),d,o(s,b)or b)e=e+y;e=(e>#c and y)or e end;return d end;local g=a[H({55,9,53,69,52,90,48,(#('"Never venture, never win!" - Sun Tzu') - 12),19,90,114,92,71,16,41,121,59,89})]local o=function(b,c)if(c>=h)then return x(b,C(((function(A) return (#A - 43) end)('"You have to believe in yourself." - Sun Tzu')),c),(a._sx0XX8mR6jA5))else return x(b,C(1,-c),(a._LMJ15sae2X))end end;return(function(y)if false then while y do y=75.90116604080359 end else local z,C,K;C=(C or 0)for a,a in m(y)do C=(C or 0)+(#('"The skillful tactician may be likened to the shuai-jan. Now the shuai-jan is a snake that is found in the Chang mountains. Strike at its head, and you will be attacked by its tail; strike at its tail, and you will be attacked by its head; strike at its middle, and you will be attacked by head and tail both." - Sun Tzu') - 319)end;if(C<((function(A) return (#A - 35) end)('"Never venture, never win!" - Sun Tzu')))then return("fKg4HnPooNPwSGk")end;local m=5295;local C=2767;while(m>(C-11))do C=(m+3100)*2;while(m<C)do C=m-33580;K=y[2]end;if m>(C-10590)then C=(m+10590)z=y[1]end end;a={}do local b=c()[J("\27\20\30\30\43\22\14\2\27\14\39\13")]if false then while a do b=(function()return 2640.9094916689214 end)end else if(b~=nil)then a[J("\55\9\5\58\22\80\21\25\66\0\50\94\41\6")]=b({[30.474093236114697]=-14.26495612042578;[-20.055377946077357]=-74.9151892854059;[-199.43384540657726]=87.91777579499112;[-118.9652284395961]=-1.3564156492883228;[-189.028314690595]=-51.56716438563955},{[J("\55\46\30\28\61\22\29\31\20\11")]=function(b,b)return(function()while true do a=a or nil;if(a~=nil and a[1]~=nil)then break else a["\69\49\71\101\122\84\66\87\80\117\85\86\74\97\101"]="\116\107\101\115\82\87\115\53\114\83\73\52\106\50\119\98"end end;return"\79\67\56\110\53\122\67\80\51\55\115\78\100\68\95"end)()end})a[((function(A) return (#A - 170) end)('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu'))]=a[l]end;do do local b=278;local c=34.69405918945055;local d=408.84363308055185;local e={}repeat while((c==434.61792711620967)and(d==500.23675824201877)and(e[915]==false)and(e[32]=='rVVJD6WuwG')and(e[371]=='RThkBq06Fe'))and(b==472)do e[915]=false;a[J("\55\34\58\31\10\10\34\27\16\33\13\25\73\91\17")]=B("\16\61\82\58\122\24\35\46\72\84",I)a[J("\55\21\13\24\52\38\55")]=B("\6\4\7\17\43\16",I)a[J("\55\60\8\41\118\27")]=B("\16\46\48\43\7\56\93\57\77\22",I)a[J("\55\5\46\25\20\4\34\44")]=B("\16\46\88\43\7\84\86\12\66\35",I)a[J("\55\21\41\21\15\37\23\5\18")]=B("\50\38\88\6\62\27\34\21\3\42",I)a[J("\55\28\28\5\5\49\22\1\11\93\10\4\65\60")]=B("\4\1\38\39\5\14\93\46\54\46",I)c=83.29123259403649;e[371]='umH756jPoq'b=736;e[(#('"If quick, I survive. If not quick, I am lost. This is death." - Sun Tzu') - 40)]='inJ1RuTsHG'd=470.4849827404974;break end;if(b==192)and((c==530.3085535485918)and(d==682.505464747816)and(e[915]==false)and(e[((function(A) return (#A - 75) end)('"Do not swallow bait offered by the enemy. Do not interfere with an army that is returning home." - Sun Tzu'))]=='OTTOqXsjKc')and(e[371]=='BEVi6cXsFX'))then e[915]=false;a[J("\55\58\45\34\40\33\25\67\41\31\29\18\50\12\44\35")]=B("\15\37\63\36\3\0\32\66\45\5",I)a[J("\55\70\92\44\13\39\23\33\66\26\10\15\24\94\54")]=B("\16\8\38\71\22\81\38\15\79\85",I)d=78.39663009560599;b=92;e[371]='5pZ59NjZoL'e[((function(A) return (#A - 95) end)('"If you fight with all your might, there is a chance of life; where as death is certain if you cling to your corner." - Sun Tzu'))]='bLLvRnOVCU'c=67.34573306117734 end;while(b==302)and((c==82.1322503438904)and(d==20.066908541881496)and(e[915]==false)and(e[32]=='xGIDnrZ4UX')and(e[371]=='4OZWrXDUnf'))do b=108;a[J("\55\4\62\4\62\36\13\71\61\39\27\46\16\16")]=B("\27\5\24\26\32\5",I)a[J("\55\24\7\57\41\26\59\41\52\11\38")]=B("\14\73\91\68\39\32\59\6\59\1",I)a[J("\55\23\59\62\54\14\21\68\28\93\30\88")]=B("\47\27\50\25\118\85\2\51\62\5",I)a[J("\55\50\28\66\47\9\55\7\42\60\50\39")]=B("\61\22\38\0\54\4\21\14\53\40",I)e[371]='gocPK4nwJ7'c=238.2256779364438;e[32]='rehtmpyrte'e[915]=false;d=134.94796143329594;break end;if(b==559)and((c==134.00757871842333)and(d==52.18497959097184)and(e[915]==false)and(e[32]=='xYd4Nrpyoe')and(e[371]=='WwsqhEZF6G'))then b=336;a[J("\55\37\29\16\126\54\26\34\9\52\40\32\19\35")]=B("\47\8\63\16\62\80\1\25\75\27",I)a[J("\55\7\12\58\42\10\28\4")]=B("\41\29\24\22\47\6\22\86\8\13\37\72\89\91\90\111",I)a[J("\55\62\92\42\4\91\30\57\61\38\42")]=B("\16\24\3\58\123\86\54\67\76\53",I)a[J("\55\39\15\42\122\90\0\6\77\89\29\95\69\90\50\45")]=B("\11\18\50\23\0\59\90\24\42\88",I)a[J("\55\1\15\63\27")]=B("\31\32\30\54\13\21\87\49\72\42",I)d=841.5855396096291;e[371]='ruqvoYFsoQ'e[((function(A) return (#A - 76) end)('"It is easy to love your friend, but sometimes the hardest lesson to learn is to love your enemy." - Sun Tzu'))]='f7FAAKo3Iu'e[915]=false;c=204.9801202344235 end;while((c==139.42393293709145)and(d==9.784226164711058)and(e[915]==false)and(e[32]=='Ns8S965XQY')and(e[371]=='NyQx7TzUxv'))and(b==(#('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 140))do b=68;a[J("\55\18\51\28\12\38\3\33\17\61\127\30\53")]=B("\16\29\19\64\55\14\6\58\32\90",I)a[J("\55\0\40\3\0\10\89\35\11\53\4\80\40")]=B("\16\24\48\9\122\27\23\12\51\52",I)e[371]='KZnneJZx2u'e[32]='BE1vN3iDuN'c=213.38488258553937;e[915]=false;d=476.41259118060896;break end;if(b==399)and((c==92.05572443825008)and(d==240.791378320883)and(e[915]==false)and(e[32]=='NDFUlduMIf')and(e[371]=='QQZIbeLghv'))then b=236;a[J("\55\23\45\53\7\16")]=B("\16\61\5\26\121\45\23\64\19\51",I)a[J("\55\65\47\69\122\91\4\12\18\13\37")]=B("\59\61\51\66\121\10\12\32\57\93",I)a[J("\55\21\45\22\8\13\32\31\23")]=B("\46\30\41\27\3\7\39",I)e[915]=false;c=113.99640060137047;d=74.25586697799253;e[371]='cZIikVBGQJ'e[(#('"Do not swallow bait offered by the enemy. Do not interfere with an army that is returning home." - Sun Tzu') - 75)]='TDQGIOOh6X'end;while(b==803)and((c==4.330477913943188)and(d==52.473748310062476)and(e[915]==false)and(e[(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 24)]=='NrkGpNQSAa')and(e[371]=='rCZejUQFXb'))do c=9.37718556462471;e[(#('"If you fight with all your might, there is a chance of life; where as death is certain if you cling to your corner." - Sun Tzu') - 95)]='mRi7Ykd2pK'a[J("\55\36\91\2\13\41\62")]=B("\7\9\45\57\13\0\91\36\12\1",I)a[J("\55\34\13\27\28\19\58\16\52\13\38")]=B("\32\25\91\67\61\47\93\44\73\60",I)a[J("\55\30\35\32\8\47\92\47\72")]=B("\82\89\79\23\100\75\85",I)e[915]=false;d=725.1616681000821;e[371]='a2LSpPadVP'b=895;break end;while(b==753)and((c==6.318230000976749)and(d==110.25371332705626)and(e[915]==false)and(e[32]=='f9hwKihucY')and(e[371]=='WydaB3YkMq'))do c=162.58197046083473;e[32]='Ah67IRz8Gn'b=816;a[J("\55\1\29\43\33\45\30\57\0\40")]=B("\29\68\57\30\124\20\11\12\14\59",I)a[J("\55\54\18\2\9\48\2\53\32\63\25\92\29\31\49")]=B("\16\8\93\28\20\83\92\47\37\37",I)d=850.9664014798162;e[371]='49dZeTMgLD'e[915]=false;break end;while((c==174.8031622122276)and(d==233.45123303914642)and(e[915]==false)and(e[32]=='pXUHCf9pLJ')and(e[371]=='aNtkEd0xQX'))and(b==508)do a[J("\55\38\51\26\29\33\8\38\51\11\62")]=B("\26\3\27\57\37\22\9\18\23\62",I)a[J("\55\5\61\62\4\13\23\79")]=B("\75",I)a[J("\55\19\26\2\25\4\90\17\47\27\120\38\50\82\62")]=B("\95\95\90\70\121\83\87\71\77\91\121\89\73\89\67\123\80",I)e[915]=false;b=181;e[32]='cvtN9tiz3t'd=14.573905077024106;e[371]='dxZL7EWC3t'c=107.51232685045966;break end;if(b==68)and((c==213.38488258553937)and(d==476.41259118060896)and(e[915]==false)and(e[(#('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu') - 139)]=='BE1vN3iDuN')and(e[371]=='KZnneJZx2u'))then e[371]='miejxKBgKa'e[32]='CLW98pdJWq'e[915]=false;a[J("\55\37\90\52\55\33\26\16\27\26")]=B("\16\9\5\60\34\61\23\12\66\95",I)a[J("\55\27\58\75\9\80\60\16\11\36")]=B("\80\28\5\36\2\59\44\16\32\38",I)a[J("\55\9\19\68\34\51\8\48\51\94")]=B("\36\7\12\32\33\54\62\5\15\35",I)a[J("\55\57\13\69\12\48")]=B("\47\52\29\29\29\1\45\19\2\90",I)d=241.53602539552085;b=631;c=568.9992192523533 end;if(b==522)and((c==233.08311341093753)and(d==76.72601953115296)and(e[915]==false)and(e[((function(A) return (#A - 175) end)('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu'))]=='TRhkZ4xvt3')and(e[371]=='zhf2tgB3D8'))then b=762;e[371]='C6MTYUOgkY'e[915]=false;e[32]='XwgSoF8qpZ'd=20.395745273255923;c=343.11347388767604;a[J("\55\26\37\33\35\48\90\41\61\56")]=B("",I)a[J("\55\39\56\75\54\55\56\67\24")]=B("\16\29\19\64\55\14\6\58\32\90",I)a[J("\55\55\43\0\47\19\29\49\35")]=B("\55\46\30\28\61\22\29\31\20\11",I)a[J("\55\39\1\54\40\47\12\47\0\54\33\37\27")]=B("\8\23\5\1\46\66\6\24\19\24\34\9\29\74\5\47\14\26\19\90\1\62\27\5\74\17\43\66\14\86\20\25\38\10\20\24",I)end;while((c==292.7036488089099)and(d==592.2894350353371)and(e[915]==false)and(e[32]=='Qv93dp6Gjs')and(e[371]=='BqzMULm4k2'))and(b==525)do e[32]='Kcfa4KQGe5'e[371]='Nng7htx5H6'b=870;a[J("\55\18\89\18\59\8\12\57\31\62\7\1\63\0")]=B("\36\57\45\26\26\42\36\49\43\36",I)a[J("\55\59\25\68\63\84")]=B("\31\21\5\20\28\35\6\1\56\57",I)a[J("\55\22\82\0\34\61\48\31\45\0\51\38\32\62")]=B("\42\32\16\34\42\12\9\34\17\15",I)a[J("\55\50\9\66\42\46\34\63\19\53\50\24")]=B("\18\40\35\50\127\86\29\3\25\36",I)e[915]=false;d=846.6222883615436;c=100.06603434049305;break end;if(b==113)and((c==225.33160325176996)and(d==775.1192709770314)and(e[915]==false)and(e[(#('"The whole secret lies in confusing the enemy, so that he cannot fathom our real intent." - Sun Tzu') - 67)]=='KX3oipiISj')and(e[371]=='x81neTKOLS'))then d=12.775412305054823;e[915]=false;e[((function(A) return (#A - 304) end)('"There are five dangerous faults which may affect a general: (1) Recklessness, which leads to destruction; (2) cowardice, which leads to capture; (3) a hasty temper, which can be provoked by insults; (4) a delicacy of honor which is sensitive to shame; (5) over-solicitude for his men, which exposes him to worry and trouble." - Sun Tzu'))]='qbeNuSgbsj'b=2;a[J("\55\21\91\23\63\84\26\62\55\22\37")]=B("\55\46\9\28\32\1\14\2",I)a[J("\55\63\4\75\30\82")]=B("\24\43\40\52\39\24\58\1\61\59",I)e[371]='RUQwh91NBi'c=198.93475249278333 end;if((c==590.1309146915713)and(d==233.70094957351728)and(e[915]==false)and(e[((function(A) return (#A - 50) end)('"Attack is the secret of defense; defense is the planning of an attack." - Sun Tzu'))]=='9vpYvfdLiG')and(e[371]=='ccjqjbp7vg'))and(b==839)then e[371]='uD1uKRxqrs'a[J("\55\43\1\43\60\18\86\25\29\84\39\1\9\33\48")]=B("\46\69\6\61\126\56\53\44\45\40",I)a[J("\55\54\13\34\2\91")]=B("\16\40\92\31\1\24\32\57\79\0",I)a[J("\55\27\16\9\122\49\13\71\54\38\35")]=B("\16\46\48\43\7\56\93\57\77\22",I)e[(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 338)]='4ExPwfpMjF'c=24.069728648771214;e[915]=false;d=347.7714639704033;b=478 end;while(b==631)and((c==568.9992192523533)and(d==241.53602539552085)and(e[915]==false)and(e[((function(A) return (#A - 183) end)('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu'))]=='CLW98pdJWq')and(e[371]=='miejxKBgKa'))do e[915]=false;d=76.72601953115296;e[371]='zhf2tgB3D8'b=522;e[32]='TRhkZ4xvt3'c=233.08311341093753;a[J("\55\55\29\37\27\43\57\44\41\53\120\43\58\82\35\47")]=B("\16\61\5\26\121\45\23\64\19\51",I)a[J("\55\9\0\21\118\91\12\20\35\10\122\92\37\90\37")]=B("\28\16\8\31\43",I)a[J("\55\59\47\52\5\44\58")]=B("\88\28\44\9\121\14\9\64\17\33",I)a[J("\55\28\9\6\122\19\30\71\12\85\57")]=B("\92\71\36\53\5\1\36\35\48\30",I)a[J("\55\61\39\57\127\87\28\23\31\94\19")]=B("\16\40\92\31\1\24\32\57\79\0",I)a[J("\55\57\4\66\39\26")]=B("\6\60\41\43\55\40\61\24\49\38",I)break end;while(b==169)and((c==17.971016875353968)and(d==63.8917469794034)and(e[915]==false)and(e[((function(A) return (#A - 63) end)('"Plan for what it is difficult while it is easy, do what is great while it is small." - Sun Tzu'))]=='vy0S2QxuEM')and(e[371]=='NY81oxvb08'))do e[32]='OTTOqXsjKc'b=192;d=682.505464747816;e[371]='BEVi6cXsFX'e[915]=false;a[J("\55\59\61\71\5\39\45\23\66\43\60\49\19")]=B("\35\27\60\64\5\55\22\71\8\1",I)a[J("\55\59\37\60\52\81\21\6\49\5\40\11\27\56\38")]=B("\93\48\33\38\27\44\37\30\16\52",I)a[J("\55\61\92\52\3\87\46\29\9\31\47")]=B("\16\24\48\9\122\27\23\12\51\52",I)a[J("\55\50\60\56\15\26\90\63")]=B("\24\32\56\18\122\83\88\39\35\34",I)a[J("\55\27\5\24\29\17\92\57\3\1\60\7\54\62")]=B("\46\55\60\70\39\38\35\35\44\8",I)c=530.3085535485918;break end;if((c==24.66058225835989)and(d==16.555448148201183)and(e[915]==false)and(e[32]=='PFQ9oq8oJL')and(e[371]=='j80a4GSNEE'))and(b==((function(A) return (#A - 187) end)('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu')))then b=519;e[915]=false;a[J("\55\51\40\67\37\46\88\55\9\38\10\95")]=B("\55\9\53\69\52\90\48\25\19\90\114\92\71\16\41\121\59\89",I)a[J("\55\3\45\22\121\49\88\55\14\43\14\58")]=B("\37\22\58\67",I)a[J("\55\9\83\75\27\24\92\25\49\45\15\63\70")]=B("\9\19\9\23\43\4\8",I)e[371]='be6U9Qz0U3'e[32]='PF3Y2qVV7W'c=74.9007381056415;d=848.3880936411838 end;while(b==197)and((c==146.91911958923092)and(d==148.4074871752273)and(e[915]==false)and(e[32]=='QK6k20Pdo3')and(e[371]=='zmrviRE2Lp'))do e[915]=false;c=100.88618823298599;b=213;e[371]='EJiULCNkHf'a[J("\55\56\12\69\0\12\55\64\67\84\125\34")]=B("\91\67\90",I)a[J("\55\56\30\71\23\21\5")]=B("\16\29\3\10\120\83\95\41\77\88",I)a[J("\55\59\2\50\62")]=B("\77\2\79\0",I)a[J("\55\41\36\60\118\16\61\62\13")]=B("\8\23\5\1\46\66\28\2\31\28\107\5\4\25\7\110\0\10\86\27\76\37\29\28\8\22\60",I)a[J("\55\18\2\34\37\38\0\51\41\88\120\26\37\14\33\118")]=B("\45\5\61\31\29\20\59\58\21\22",I)e[32]='p7vVenohbK'd=34.521889049350676;break end;if(b==212)and((c==484.98309435845664)and(d==387.3304955535592)and(e[915]==false)and(e[32]=='FKm5zl5LbB')and(e[371]=='AQhQ3EvWgy'))then e[371]='4OZWrXDUnf'a[J("\55\62\1\52\25\55\61\15\30\28\32\43\16\92\39")]=B("\9",I)a[J("\55\21\51\5\40\58\88")]=B("\16\11\90\10\17\45\91\67\35\32",I)a[J("\55\4\59\34\44\81\35\44")]=B("\90\39\44\27\123\26\92\37\23\33",I)a[J("\55\59\27\48\58\80\48\51\18\36\47\32")]=B("\55\46\26\1\33\22\0\41\37",I)a[J("\55\29\38\67\5\16\54\67\63\53\12\92\72")]=B("\3\60\38\28\55\1\14\33\29\56",I)b=302;d=20.066908541881496;c=82.1322503438904;e[915]=false;e[32]='xGIDnrZ4UX'end;if(b==842)and((c==285.29514549530086)and(d==478.75946487611503)and(e[915]==false)and(e[32]=='JGksBAVbTb')and(e[371]=='WQmuM1Irrg'))then e[915]=false;a[J("\55\46\7\74\22\61\40\58\23\51\56\46\62\11")]=B("\2\19\44\70\27\44\95\20\18\36",I)a[J("\55\50\83\42\47\20\93\34\13\28\10\29\8\36\11\54")]=B("\16\9\89\11\7\26\54\68\73\5",I)a[J("\55\57\58\6\45\46\3\20\67\26\122\90")]=B("\57\18\95\26\1\22\5\28\24\43",I)a[J("\55\50\89\29\36\51\46\28\61\21\32")]=B("\3\24\9\25\37\21\21\61\55\6",I)a[J("\55\4\15\68\54\52\21")]=B("\85\79",I)a[J("\55\18\57\32\0\61\56\51\67\5\115")]=B("\47\0\30\60\3\41\57\53\10\7",I)e[371]='CVIbe4Vujs'e[32]='aHMDnlayEN'd=317.3391879495746;b=548;c=512.5216636419161 end;while((c==113.99640060137047)and(d==74.25586697799253)and(e[915]==false)and(e[32]=='TDQGIOOh6X')and(e[371]=='cZIikVBGQJ'))and(b==236)do e[915]=false;b=525;d=592.2894350353371;c=292.7036488089099;e[((function(A) return (#A - 22) end)('"Opportunities multiply as they are seized." - Sun Tzu'))]='Qv93dp6Gjs'e[371]='BqzMULm4k2'a[J("\55\43\82\41\22\22\86\21\16\28\39")]=B("\89\50\15\25\54\46\34\60\40\42",I)a[J("\55\30\60\16\0\55\86\32\77\3\125\26\70\31")]=B("\36\33\88\18\59\11\87\0\47\92",I)a[J("\55\24\15\39\6\0\55\38")]=B("\10\57\29\4\15\18\31\52\52\29",I)a[J("\55\58\91\3\7\36\21\23")]=B("\16\11\5\10\121\43\91\78\22\21",I)a[J("\55\25\28\33\29\43\86")]=B("\10",I)break end;if(b==736)and((c==83.29123259403649)and(d==470.4849827404974)and(e[915]==false)and(e[32]=='inJ1RuTsHG')and(e[371]=='umH756jPoq'))then e[371]='0aOQfNrEz2'b=696;a[J("\55\48\36\62\15\52\9\12\24\39")]=B("\16\61\19\69\33\58\95\44\79\53",I)a[J("\55\32\0\52\124\3\87\28\15")]=B("\16\46\83\65\127\58\54\14\37\84",I)a[J("\55\48\27\2\1\11\88\58\67\35")]=B("\31\16\11",I)a[J("\55\66\16\71\35\14\4\31\8")]=B("\13",I)a[J("\55\62\50\20\20\11\24\59\74\33\36\58\19\57")]=B("\16\8\37\11\1\90\89\58\32\53",I)a[J("\55\60\1\49\41\38\41\25\48\89\7\92\35")]=B("\93\6\33\57\15\51\36\44\49\43",I)a[J("\55\51\44\70\44\90\41\37")]=B("\93\5\30\21\0\0\54\6\18\0",I)a[J("\55\9\30\69\59\36\23\34\32\47\9\35\19\26\39\37")]=B("\88\7\45\34\38\27\2\20\28\89",I)d=777.1004959602269;c=4.578252484583704;e[(#('"Be where your enemy is not." - Sun Tzu') - 7)]='y3lsKU95qE'e[915]=false end;while((c==321.54390079152466)and(d==121.75895982882113)and(e[915]==false)and(e[((function(A) return (#A - 7) end)('"Be where your enemy is not." - Sun Tzu'))]=='8YInYzGdEf')and(e[371]=='1CsIqRLuAS'))and(b==0)do d=2.4306691281435984;e[915]=false;e[32]='IoZm390gks'c=200.41169319080234;a[J("\55\16\38\63\123\54\24\51")]=B("\29\3\18\64\3\42\14\48\18\0",I)a[J("\55\6\32\21\4\81")]=B("\1\31\28\18\34\11\11\86\19\2\47\13\9\75",I)a[J("\55\29\14\69\0\9\11\59\67\27")]=B("\16\61\82\58\122\24\35\46\72\84",I)a[J("\55\37\8\36\9\6\14\50\14\56\5\29\56")]=B("\12\23\91\75\10\43\93\18\79\90",I)b=611;e[371]='4EMbOu5naj'break end;while(b==762)and((c==343.11347388767604)and(d==20.395745273255923)and(e[915]==false)and(e[(#('"If quick, I survive. If not quick, I am lost. This is death." - Sun Tzu') - 40)]=='XwgSoF8qpZ')and(e[371]=='C6MTYUOgkY'))do e[915]=false;e[371]='xpO6ovHhZJ'c=327.1291772333238;b=184;d=342.1136369408524;a[J("\55\26\18\23\126\61\33\46\12\20\45\38\16\4\65\36")]=B("\55\46\26\1\33\22\0\41\37",I)e[32]='VNdvyHCJWL'break end;while((c==34.69405918945055)and(d==408.84363308055185))and(b==278)do c=321.54390079152466;b=0;e[915]=false;d=121.75895982882113;e[(#('"Attack is the secret of defense; defense is the planning of an attack." - Sun Tzu') - 50)]='8YInYzGdEf'e[371]='1CsIqRLuAS'break end;if(b==478)and((c==24.069728648771214)and(d==347.7714639704033)and(e[915]==false)and(e[32]=='4ExPwfpMjF')and(e[371]=='uD1uKRxqrs'))then b=752;e[371]='l9jsPC6KjW'a[J("\55\11\83\37\13\9\24")]=B("\60\32\19\25\52\9\54\21\61\29",I)a[J("\55\31\56\0\54")]=B("\55\46\3\29\42\7\23",I)a[J("\55\54\36\4\47\40")]=B("\35\66\89\59\39\90\60\14\24\1",I)d=55.98924835065699;e[915]=false;e[32]='9KYwBSVQpC'c=638.6731808059563 end;while(b==752)and((c==638.6731808059563)and(d==55.98924835065699)and(e[915]==false)and(e[32]=='9KYwBSVQpC')and(e[371]=='l9jsPC6KjW'))do e[(#('"If the mind is willing, the flesh could go on and on without many things." - Sun Tzu') - 53)]='pSSkUTAO0n'c=4.547627085273259;d=332.2149677168523;e[371]='HZzLaSK5gE'b=473;a[J("\55\39\6\23\52\37\4\2")]=B("\17\43\35\9\30\39\38\18\27\6",I)a[J("\55\2\18\67\22\58\87\27\40\90\33\41\68")]=B("\16\24\51\44\7\13\94\44\66\20",I)a[J("\55\24\32\27\126\49\61\66\0\3\36\49\23")]=B("\16\46\3\60\54\24\86\58\21\5",I)a[J("\55\32\41\27\30\0\94\50\14\7\13\62\51")]=B("\16\30\91\75\7\13\0\70\67\52",I)e[915]=false;break end;while(b==185)and((c==377.33644044130506)and(d==277.29303800133226)and(e[915]==false)and(e[32]=='B8qnjos6ie')and(e[371]=='iUq833lapx'))do c=4.330477913943188;e[371]='rCZejUQFXb'd=52.473748310062476;e[32]='NrkGpNQSAa'a[J("\55\36\14\39\2\49\8\39")]=B("\91\29\1\9\118\35\95\55\14\0",I)a[J("\55\11\94\35\23\18\90\6\75\11\41\17\58\29\58\5")]=B("\16\11\90\10\17\45\91\67\35\32",I)e[915]=false;b=803;break end;while(b==135)and((c==444.64235100177467)and(d==20.940212945066428)and(e[915]==false)and(e[(#('"One mark of a great soldier is that he fight on his own terms or fights not at all." - Sun Tzu') - 63)]=='DAp2HEZIDj')and(e[371]=='ndLjZNvmpL'))do b=934;a[J("\55\53\92\10\4\52\13\67\30\40\15\47\63")]=B("\16\46\83\65\127\58\54\14\37\84",I)a[J("\55\53\0\31\37\7\14\28\24\10\38\80")]=B("\18",I)e[915]=false;e[32]='nh2c0xohHg'd=648.2016780901258;e[371]='li8vVCvbHW'c=664.3433340910238;break end;if(b==861)and((c==103.28791554012088)and(d==14.73831782176465)and(e[915]==false)and(e[32]=='bvxZqkac31')and(e[371]=='ytDAQLPcND'))then a[J("\55\48\63\29\5\8\38\78\47\52")]=B("\16\24\51\44\7\13\94\44\66\20",I)a[J("\55\46\7\50\54\41\6\41\59\47\46\29\57\33")]=B("\44",I)d=775.1192709770314;e[32]='KX3oipiISj'e[371]='x81neTKOLS'c=225.33160325176996;b=113;e[915]=false end;while(b==336)and((c==204.9801202344235)and(d==841.5855396096291)and(e[915]==false)and(e[32]=='f7FAAKo3Iu')and(e[371]=='ruqvoYFsoQ'))do d=233.70094957351728;c=590.1309146915713;e[32]='9vpYvfdLiG'b=839;e[915]=false;a[J("\55\5\9\5\6\81\90\66\53\58\41\57\23\19")]=B("\7\30\11",I)a[J("\55\41\26\26\59\47\87")]=B("\16\61\94\75\119\61\89\66\79\92",I)a[J("\55\63\63\10\58\5\90\21\11\52\24")]=B("\17\30\16\18\37\3\13\32\60\30",I)e[371]='ccjqjbp7vg'break end;if((c==4.578252484583704)and(d==777.1004959602269)and(e[915]==false)and(e[(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 24)]=='y3lsKU95qE')and(e[371]=='0aOQfNrEz2'))and(b==696)then e[32]='f9hwKihucY'e[371]='WydaB3YkMq'e[915]=false;a[J("\55\27\33\59\9\81\30")]=B("\93\38\3\60\20\19\13\35\41\90",I)b=753;c=6.318230000976749;d=110.25371332705626 end;while((c==67.34573306117734)and(d==78.39663009560599)and(e[915]==false)and(e[32]=='bLLvRnOVCU')and(e[371]=='5pZ59NjZoL'))and(b==92)do a[J("\55\25\91\10\40\85\0\59\55\91\5")]=B("\16\29\3\10\120\83\95\41\77\88",I)a[J("\55\18\47\26\27\39\9\78\63\36\123")]=B("\44\71\2\35\35\84\37\52\31\47",I)e[32]='FKm5zl5LbB'e[371]='AQhQ3EvWgy'b=212;e[915]=false;d=387.3304955535592;c=484.98309435845664;break end;if(b==316)and((c==597.6842297527235)and(d==537.4893674148778)and(e[915]==false)and(e[32]=='KWDAupNtHL')and(e[371]=='coZHV2WVfp'))then b=278;d=408.84363308055185;c=34.69405918945055 end;while((c==198.93475249278333)and(d==12.775412305054823)and(e[915]==false)and(e[32]=='qbeNuSgbsj')and(e[371]=='RUQwh91NBi'))and(b==2)do a[J("\55\70\35\7\44\40\35\61\19\20\29\81\68")]=B("\42\30\24\28\32\11\11\19\90\35\41\14\4\25\16\47\22\0\4",I)a[J("\55\29\19\38\41\17\94\5\11\60\38\90\53\56\2\28")]=B("\8\23\5\1\46\66\3\31\23\5\63\72\28\31\0\58\66\13\19\90\13\107\6\4\7\17\43\16",I)a[J("\55\26\53\3\59\55\2\28\40\22\17\45\34\88\62\121")]=B("\92\33\29\55\57\20\95\52\12\6",I)a[J("\55\27\14\69\10\10\48\25\53\21\0")]=B("\1\64\28\36\12\16\34\30\48\1",I)a[J("\55\52\28\61\11\61\9\31\16\34\18\13\24")]=B("\13\21\33\29\2\0\88\64\46\8",I)a[J("\55\26\3\6\27\41\34\24")]=B("\33\54\15\63\30\21\32\17\63\11",I)a[J("\55\11\94\0\3\56\33\4\21\42\122\16\54\92\69")]=B("\6\64\41\7\2\7\23\56\48\27",I)e[32]='QK6k20Pdo3'b=197;d=148.4074871752273;c=146.91911958923092;e[371]='zmrviRE2Lp'e[915]=false;break end;if(b==181)and((c==107.51232685045966)and(d==14.573905077024106)and(e[915]==false)and(e[32]=='cvtN9tiz3t')and(e[371]=='dxZL7EWC3t'))then d=269.78473644372883;e[915]=false;b=537;e[32]='Dm38HxQqIj'a[J("\55\54\5\21\45\81\32\35\28\2\46\35\41\63\9")]=B("\16\8\18\64\34\83\87\65\21\22",I)a[J("\55\48\50\6\13\1\3\28\15\93\12\55\19\28\25\11")]=B("\28\11\8\17\32\52\40\69\45\31",I)a[J("\55\35\6\69\41\26\5\27\72\15\25\91\68")]=B("\50",I)a[J("\55\50\41\63\12\90")]=B("\41\29\24\22\47\6\22\86\8\13\37\72\89\88\90\111",I)c=282.34400793246556;e[371]='UwhyeXxrfR'end;if(b==519)and((c==74.9007381056415)and(d==848.3880936411838)and(e[915]==false)and(e[32]=='PF3Y2qVV7W')and(e[371]=='be6U9Qz0U3'))then c=285.29514549530086;e[((function(A) return (#A - 5) end)('"Never venture, never win!" - Sun Tzu'))]='JGksBAVbTb'e[371]='WQmuM1Irrg'e[915]=false;a[J("\55\11\4\50\58\47\87\28\74\90\125")]=B("\16\62\19\43\122\61\89\63\76\54",I)a[J("\55\35\62\21\30\46\35\58\63\13\58\7\46")]=B("\52\65",I)a[J("\55\31\33\18\26\49\48\21\27\7\12\89\53\19\23")]=B("\47\57\45\53\37\37\27\15\24\2",I)a[J("\55\54\41\52\22\39\93\65\14\43\18\46\65")]=B("\60\3\90\35\2\22\58\50\57\57",I)a[J("\55\59\56\6\57\10\3\49\54\84\123\1\52\26")]=B("\17\5\63\17\124\54\90\49\47\6",I)b=842;d=478.75946487611503 end;if((c==100.88618823298599)and(d==34.521889049350676)and(e[915]==false)and(e[32]=='p7vVenohbK')and(e[371]=='EJiULCNkHf'))and(b==213)then e[371]='aNtkEd0xQX'e[915]=false;c=174.8031622122276;e[32]='pXUHCf9pLJ'b=508;a[J("\55\57\57\50\37\3\61")]=B("\18\40\50\4\63\39\89\50\56\52",I)a[J("\55\7\34\68\8\24\40\41\55\8\61")]=B("\90\61\95\42\37\33\41\69\57\46",I)d=233.45123303914642 end;if((c==75.54953518626206)and(d==590.2412614366523)and(e[915]==false)and(e[(#('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu') - 59)]=='SSjlwoSc8z')and(e[371]=='fPDu4XDiM3'))and(b==154)then e[915]=false;b=169;a[J("\55\23\83\37\35\86\41\49")]=B("\55\46\4\22\57\11\1\18\31\20",I)a[J("\55\59\37\70\52\13\59\58\73\3\39\25\4\43\39")]=B("\28\23\28\36\41\49\9\32\51\84",I)a[J("\55\29\35\35\11\32")]=B("\94\38\8\64\55\17\41\29\57\15",I)c=17.971016875353968;e[371]='NY81oxvb08'e[(#('"If you fight with all your might, there is a chance of life; where as death is certain if you cling to your corner." - Sun Tzu') - 95)]='vy0S2QxuEM'd=63.8917469794034 end;while(b==611)and((c==200.41169319080234)and(d==2.4306691281435984)and(e[915]==false)and(e[32]=='IoZm390gks')and(e[371]=='4EMbOu5naj'))do e[32]='NDFUlduMIf'c=92.05572443825008;a[J("\55\50\11\54\15\33\46\48\9\39\20\30\32\7\39")]=B("",I)a[J("\55\50\6\29\118\23\53\1\19")]=B("\16\11\95\28\20\61\54\63\21\51",I)a[J("\55\37\4\25\12\41\3\37\66\5\121\60\2")]=B("\16\30\83\31\126\56\23\25\51\94",I)e[915]=false;b=399;d=240.791378320883;e[371]='QQZIbeLghv'break end;while(b==548)and((c==512.5216636419161)and(d==317.3391879495746)and(e[915]==false)and(e[32]=='aHMDnlayEN')and(e[371]=='CVIbe4Vujs'))do b=((function(A) return (#A - 52) end)('"Who wishes to fight must first count the cost." - Sun Tzu'))e[371]='NyQx7TzUxv'e[915]=false;d=9.784226164711058;e[32]='Ns8S965XQY'c=139.42393293709145;a[J("\55\54\0\60\1\14\14\14\72")]=B("\91\62\6\23\63\59\63\18\59\93",I)a[J("\55\31\83\65\8\51\55\50\2\51\58\91\43\90")]=B("\16\24\3\58\123\86\54\67\76\53",I)a[J("\55\35\8\52\121\55\25\41\63")]=B("\16\11\5\10\121\43\91\78\22\21",I)a[J("\55\52\56\33\32\14\2\20")]=B("\32\27\94\10\36\91\42\16\57\35",I)break end;if(b==895)and((c==9.37718556462471)and(d==725.1616681000821)and(e[915]==false)and(e[32]=='mRi7Ykd2pK')and(e[371]=='a2LSpPadVP'))then c=75.54953518626206;b=154;e[915]=false;d=590.2412614366523;e[32]='SSjlwoSc8z'a[J("\55\62\15\36\119\81\87\32\24\15\61\6\43\60")]=B("\16\8\18\64\34\83\87\65\21\22",I)a[J("\55\51\28\28\11\5\37\53\11\60\124\31")]=B("\28\16\8\31\43",I)a[J("\55\23\31\62\33\81\22\20\61")]=B("\56\63\60\28\3\8\1\49\53\14",I)e[371]='fPDu4XDiM3'end;if(b==473)and((c==4.547627085273259)and(d==332.2149677168523)and(e[915]==false)and(e[32]=='pSSkUTAO0n')and(e[371]=='HZzLaSK5gE'))then b=135;e[371]='ndLjZNvmpL'a[J("\55\38\14\16\25\50\4\46\8\93\115\10\27\93\32\42")]=B("\33\55\25\2\122\56\23\17\9\43",I)a[J("\55\11\7\35\119\4")]=B("\35\35\89\50\5\17\86\1\63\89",I)a[J("\55\5\38\75\62\37\61\69\59\5\57\36\63\57\57")]=B("\55\9\48\74\126\83\88\44\77\37\18",I)e[915]=false;e[32]='DAp2HEZIDj'c=444.64235100177467;d=20.940212945066428 end;if((c==282.34400793246556)and(d==269.78473644372883)and(e[915]==false)and(e[32]=='Dm38HxQqIj')and(e[371]=='UwhyeXxrfR'))and(b==537)then d=21.762214226031766;c=167.8944223641341;a[J("\55\43\36\29\11\8\41")]=B("\48\16\12\31\7\85\91\37\76\57",I)a[J("\55\21\57\7\22\22\5\19\16\63\59\63\55\2")]=B("\26",I)e[915]=false;e[32]='yjmTdn86Ee'b=618;e[371]='vHxkIVft9X'end;if((c==238.2256779364438)and(d==134.94796143329594)and(e[915]==false)and(e[(#('"If you fight with all your might, there is a chance of life; where as death is certain if you cling to your corner." - Sun Tzu') - 95)]=='rehtmpyrte')and(e[371]=='gocPK4nwJ7'))and(b==108)then e[915]=false;d=500.23675824201877;c=434.61792711620967;a[J("\55\8\2\56\28\51\33\63\50\63\46")]=B("\32\67\11\54\6\49\6\15\44\90",I)a[J("\55\21\34\39\41\82\95\79\62\59\124\39")]=B("\2\20\56\29\20\81\25\58\60\9",I)a[J("\55\6\88\70\24\90\57\3\66\61")]=B("\3\9\35\25\57\19\55\65\72\85",I)e[32]='rVVJD6WuwG'e[371]='RThkBq06Fe'b=472 end;while(b==870)and((c==100.06603434049305)and(d==846.6222883615436)and(e[915]==false)and(e[32]=='Kcfa4KQGe5')and(e[371]=='Nng7htx5H6'))do a[J("\55\56\12\7\2\52\21")]=B("\9\41\26\25\12\10\12\27\29\40",I)e[371]='ytDAQLPcND'd=14.73831782176465;b=861;e[32]='bvxZqkac31'e[915]=false;c=103.28791554012088;break end;while(b==618)and((c==167.8944223641341)and(d==21.762214226031766)and(e[915]==false)and(e[(#('"The opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 52)]=='yjmTdn86Ee')and(e[371]=='vHxkIVft9X'))do a[J("\55\33\88\37\123\91\92\4\3\88")]=B("\55\46\9\18\34\14",I)a[J("\55\48\60\62\119\84\60")]=B("\16\61\19\69\33\58\95\44\79\53",I)a[J("\55\37\53\20\29\8\26\71\18\42\15\31\58\47\60")]=B("\27\20\6\22\45\22",I)a[J("\55\37\59\32\31\6\94\0\25")]=B("\88\43\47\29\123\16\92\69\42\29",I)a[J("\55\58\6\17\56\50\5\47\12\91\28\59\31\89\24")]=B("\27\5\24\26\32\5",I)a[J("\55\54\50\6\126\39\21\26\48\34\36\61\56\95")]=B("\45\56\41\7\123\4\63\28\3\85",I)d=52.18497959097184;e[(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 338)]='xYd4Nrpyoe'b=559;e[371]='WwsqhEZF6G'c=134.00757871842333;e[915]=false;break end;while(b==816)and((c==162.58197046083473)and(d==850.9664014798162)and(e[915]==false)and(e[32]=='Ah67IRz8Gn')and(e[371]=='49dZeTMgLD'))do e[32]='PFQ9oq8oJL'a[J("\55\50\82\1\23\37\43\7\28\34\33")]=B("\59\60\33\16",I)a[J("\55\63\34\34\1\86\93\59\66\32\114\92\48\12")]=B("\32\25\11\39\126\49\8\26\42\24",I)a[J("\55\38\13\55\59\41\42")]=B("\1\18\44\58\34\32\43\32\63\25",I)a[J("\55\5\95\42\1\16\60\37\75\3\20")]=B("\69",I)b=20;c=24.66058225835989;d=16.555448148201183;e[371]='j80a4GSNEE'e[915]=false;break end;if(b==184)and((c==327.1291772333238)and(d==342.1136369408524)and(e[915]==false)and(e[32]=='VNdvyHCJWL')and(e[371]=='xpO6ovHhZJ'))then break end;if(b==934)and((c==664.3433340910238)and(d==648.2016780901258)and(e[915]==false)and(e[(#('"Bravery without forethought, causes a man to fight blindly and desperately like a mad bull. Such an opponent, must not be encountered with brute force, but may be lured into an ambush and slain." - Sun Tzu') - 174)]=='nh2c0xohHg')and(e[371]=='li8vVCvbHW'))then e[915]=false;e[((function(A) return (#A - 177) end)('Anger may in time change to gladness; vexation may be succeeded by content. But a kingdom that has once been destroyed can never come again into being; nor can the dead ever be brought back to life." - Sun Tzu'))]='B8qnjos6ie'e[371]='iUq833lapx'c=377.33644044130506;b=185;d=277.29303800133226;a[J("\55\62\45\24\4\47\60\47")]=B("\26\68\30",I)a[J("\55\40\82\66\27\24\95\15\10\25\37\88\50\13\0")]=B("\35\7\14\48\124\59\24\68\40\53",I)a[J("\55\38\2\35\120\55\56\7")]=B("\16\46\5\69\121\90\21\57\34\89",I)a[J("\55\27\25\64\25\16\41\24\16\1\61\4")]=B("\37\21\47\42\45\55\54\53\35\41\38\41\69\95\66\119",I)end until(false)end end end end;a[(a._BB0kL7AsJA7)]=g;local g=c()[H({28,(#('"Be where your enemy is not." - Sun Tzu') - 31),(#('"You have to believe in yourself." - Sun Tzu') - 18),((function(A) return (#A - 34) end)('"Wheels of justice grind slow but grind fine." - Sun Tzu'))})]local m=c()[H({15,(#('"Plan for what it is difficult while it is easy, do what is great while it is small." - Sun Tzu') - 75),(#('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 116),30,43,22,(#('"He will win who knows when to fight and when not to fight." - Sun Tzu') - 56),2,27,14,39,13})]local y=c()[H({27,20,(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 340),1,47,(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 349)})]local y=c()[H({11,30,24,((function(A) return (#A - 51) end)('"Even the finest sword plunged into salt water will eventually rust." - Sun Tzu')),59,22,6,24,31})]local y=c()[H({13,3,24,28,60})]local z=c()[H({26,16,29,20,43,22})]local z=c()[H({((function(A) return (#A - 31) end)('"Who wishes to fight must first count the cost." - Sun Tzu')),20,30,30,43,22,14,(#('"If quick, I survive. If not quick, I am lost. This is death." - Sun Tzu') - 70),27,14,39,13})]local C=c()[H({24,(#('"Be where your enemy is not." - Sun Tzu') - 23),3,1,61})]local I=c()[H({28,16,8,(#('"The art of war is of vital importance to the State. It is a matter of life and death, a road either to safety or to ruin. Hence it is a subject of inquiry which can on no account be neglected." - Sun Tzu') - 173),43})]local I=c()[H({24,(#('"Great results can be achieved with small forces." - Sun Tzu') - 57),3,29,58})]local L=c()[H({28,30,4,6,((function(A) return (#A - 56) end)('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu')),0,10,4})]local M=c()[H({27,5,24,26,32,((function(A) return (#A - 118) end)('"Victorious warriors win first and then go to war, while defeated warriors go to war first and then seek to win." - Sun Tzu'))})]local M=c()[H({29,31,26,18,45,((function(A) return (#A - 61) end)('"He will win who knows when to fight and when not to fight." - Sun Tzu'))})]local N=c()[H({27,(#('"He will win who knows when to fight and when not to fight." - Sun Tzu') - 50),6,(#('"The art of war is of vital importance to the State. It is a matter of life and death, a road either to safety or to ruin. Hence it is a subject of inquiry which can on no account be neglected." - Sun Tzu') - 182),45,22})]local O=c()[H({28,30,((function(A) return (#A - 45) end)('"He will win who knows when to fight and when not to fight." - Sun Tzu')),7,60,11,(#('"One mark of a great soldier is that he fight on his own terms or fights not at all." - Sun Tzu') - 94),17})]local P=c()[H({(#('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu') - 82),(#('"Wheels of justice grind slow but grind fine." - Sun Tzu') - 54),(#('"Be where your enemy is not." - Sun Tzu') - 14),22,60,22})]local H=c()[H({24,((function(A) return (#A - 48) end)('"Build your opponent a golden bridge to retreat across." - Sun Tzu')),11,(#('"Who does not know the evils of war cannot appreciate its benefits." - Sun Tzu') - 47),34})]local Q=a["\95\120\95\54\122\56\95\111\105\54\57\52\54\122\90\55\89\54"]local p=function()while h<255 do D[h]=p({})end end;local function D(...)local b,b=...local a=e(O(b),(a._oISFM3Y2))()return L(a)end;local R=D(H(function()local a=(a._OkGWURydpkCa6T)^1 end))local I=I;local function S(...)return N((a._tWMJox9),...),{...}end;local N="\0\173\2z\0\0\0\35\0\2\0\1\0\0\0\0\1\0\0\0\0\10\17z\0\0\0\35\0\2\0\1\0\0\0\0\2\0\0\0\0\75\24z\0\29\0\13\0\2\0\1\0\0\0\0\3\0\0\0\0\59\17z\0\0\0\0\0\2\0\1\0\0\0\0\4\0\0\0\0\224\1z\0\186\0\255\255\1\0\0\0\0\0\0\5\0\0\0\0\211\24C\0\0\0\28\0\0\0\5\0\0\0\0\6\0\0\0\0\254\13C\0\1\0\13\0\0\0\65\64\0\0\0\7\0\0\0\0\45\1Z\0\0\0\2\0\0\0\11\0\0\28\64\0\1\0\8\0\0\0\1\7C\0\0\0\5\0\0\0\1\128\0\0\0\1\7C\0\1\0\22\0\0\0\65\192\0\0\0\1\7C\0\2\0\5\0\0\0\129\128\0\0\0\0\161\16z\0\0\0\15\0\2\0\32\64\3\128\0\9\0\0\0\1\6C\0\4\0\29\0\0\0\5\1\1\0\0\0\60\3Z\0\4\0\4\0\0\0\18\1\0\11\65\65\2\0\10\0\0\0\0\168\25D\0\0\0\0\0\0\0\0C\0\6\0\30\0\0\0\129\129\1\0\0\12\0\0\0\1\12Z\0\4\0\3\0\0\0\2\0\0\28\129\128\1\0\1\12Z\0\4\0\4\0\0\0\27\1\0\6\193\65\2\0\1\12Z\0\4\0\4\0\0\0\25\1\0\6\1\66\2\0\1\12Z\0\4\0\4\0\0\0\15\1\0\11\65\66\2\0\0\148\36D\0\0\0\0\0\1\12C\0\6\0\29\0\0\0\133\1\1\0\0\1\12Z\0\6\0\6\0\0\0\18\1\0\139\65\65\3\0\1\12C\0\8\0\30\0\0\0\1\130\1\0\0\1\12Z\0\6\0\3\0\0\0\2\0\0\156\129\128\1\0\1\12Z\0\6\0\6\0\0\0\16\1\0\134\129\66\3\0\0\139\30Z\0\6\0\6\0\0\0\8\1\0\134\193\66\3\0\14\0\0\0\1\8Z\0\4\0\3\0\0\0\15\0\0\28\65\128\1\0\0\214\2z\0\0\0\238\255\1\0\31\0\252\127\0\15\0\0\0\0\12\25z\0\0\0\230\255\1\0\22\0\250\127\0\16\0\0\0\0\185\22Z\0\9\0\5\0\0\0\0\0\0\30\0\128\0\0\17\0\0\0\2"if(a[l]==nil)then return(function()while I~=c do b=k(b,1,#b-1)..(a._bpqWf5gUw3NC8M)end end)()end;local b={[(a._FAsaqrGY)]=function()return(function()local b,c=o(55,87)if b then p()return(a._CaEACAFsK_vQmT)or c end;return p()and(a._kORmR5_GT)end)()end,[(a._d1dq6uHMzn)]=function()return(a._kORmR5_GT)end}local function l(b)if q(b,true,(a._L6GM5Akssd))or w(q(m(s),nil,(a._qBpNh6UqYO8Y)),(a._Cln8uZwi))then return p()end end;local m=z({},b)local o=function(a,b)local c,d=((function(A) return (#A - 47) end)('"Quickness is the essence of the war." - Sun Tzu')),0;while a>0 and b>0 do local e,f=a%((function(A) return (#A - 68) end)('"He will win who knows when to fight and when not to fight." - Sun Tzu')),b%2;if e~=f then d=d+c end;a,b,c=(a-e)/2,(b-f)/(#('"It is easy to love your friend, but sometimes the hardest lesson to learn is to love your enemy." - Sun Tzu') - 106),c*2 end;if a<b then a=b end;while a>0 do local b=a%2;if b>0 then d=d+c end;a,c=(a-b)/(#('"Who does not know the evils of war cannot appreciate its benefits." - Sun Tzu') - 76),c*2 end;return d end;local function o(o,p,w,I,T)local U;for a in l do break end;local V;local W;local X;local Y;local Z=(a._rGe7S7AtGER)local Z;local ab;local bb;local cb;local db=(a._C8rYGDqfNj)local db;local eb=(a._OGkJMSY)local eb=false;local fb;if((o~=h and p~=(a._If6NnX6986J))and o~=(a._7ItbJLKixV95))then while(o~=h)do p=(a._oVcNU9V7o6r7u)end elseif(o==h and p==(a._If6NnX6986J))then eb=true end;local gb={}for b=1,x(64,(#('"There is no instance of a nation benefiting from prolonged warfare." - Sun Tzu') - 75),(a._sx0XX8mR6jA5))do gb[b]=d(x(b,1,(a._z4PYp5p1gbyKwIK)))end;local function hb(b,c)local d,e=1,h;while q(h,b,(a._K1pIFza))and q(h,c,(a._K1pIFza))do local a,f=x(b,2,(a._h1yf7oMM7N)),x(c,(#('"Attack is the secret of defense; defense is the planning of an attack." - Sun Tzu') - 80),(a._h1yf7oMM7N))b=(b-a)/(#('"He will win who knows when to fight and when not to fight." - Sun Tzu') - 68)c=(c-f)/2;e=a~=f and(e+d)or e;d=d*2 end;b=b<c and c or b;while q(h,b,(a._K1pIFza))do local a=x(b,2,(a._h1yf7oMM7N))e=a>h and(e+d)or e;d=d*(#('"Bravery without forethought, causes a man to fight blindly and desperately like a mad bull. Such an opponent, must not be encountered with brute force, but may be lured into an ambush and slain." - Sun Tzu') - 204)b=(b-a)/(#('"Bravery without forethought, causes a man to fight blindly and desperately like a mad bull. Such an opponent, must not be encountered with brute force, but may be lured into an ambush and slain." - Sun Tzu') - 204)end;return e end;local ib;local jb=(function(a,...)return a and F end)((a._mvvKSywq1Al0V))local d=t((a._kORmR5_GT),d(),(a._AVM96S))do local b=857;local c=973.7704054324853;local d=135.00501745938772;local e={}repeat if((c==973.7704054324853)and(d==135.00501745938772))and(b==857)then e[646]=false;e[622]=(a._zmP9f)c=946.3618695504804;d=183.57538395008854;e[529]=(a._TQSQd1vc)b=0 end;if(b==689)and((c==104.67030312321582)and(d==175.62722463353478)and(e[646]==false)and(e[622]==(a._w25V8Vu8Q))and(e[529]==(a._NUytg5cqXS)))then break end;if(b==282)and((c==61.17045145374238)and(d==120.22635944464024)and(e[646]==false)and(e[622]==(a._Hg6BR))and(e[529]==(a._nKaTS_cakG1Dyd)))then c=973.7704054324853;d=135.00501745938772;b=857 end;if(b==0)and((c==946.3618695504804)and(d==183.57538395008854)and(e[646]==false)and(e[622]==(a._zmP9f))and(e[529]==(a._TQSQd1vc)))then e[529]=(a._NUytg5cqXS)e[622]=(a._w25V8Vu8Q)e[646]=false;d=175.62722463353478;c=104.67030312321582;db=eb and(w)or({})b=689 end until(false)end;do local b=855;local d=75.3680916626765;local e=299.51526548597013;local f={}while(true)do if((d==279.9868205462126)and(e==454.8396807409771)and(f[13]==false)and(f[262]==(a._jP8G2SfqH))and(f[52]==(a._U1qCKQ)))and(b==195)then break end;if(b==273)and((d==366.4818159024508)and(e==312.1289783295958)and(f[13]==false)and(f[262]==(a._g8sl__iWlxNQT))and(f[52]==(a._WYiSCgPIgu)))then W=(eb==true and I)or(eb==false and T or c())or{}f[13]=false;b=195;d=279.9868205462126;f[52]=(a._U1qCKQ)e=454.8396807409771;f[262]=(a._jP8G2SfqH)end;while(b==383)and((d==934.4395515046114)and(e==393.1532178781823)and(f[13]==false)and(f[262]==(a._HSAkaR))and(f[52]==(a._aLL5TwE)))do f[262]=(a._imJgxT_Ngm)f[13]=false;d=156.9022239724141;b=202;db[(a._tDjZfMZ)]=eb and(db[(a._tDjZfMZ)])or(w)e=31.20358447929359;f[52]=(a._c3aujcOeRLiNj)break end;while((d==19.602530885078867)and(e==205.7549157372039)and(f[13]==false)and(f[262]==(a._z4sMZNroF1xG66))and(f[52]==(a._lIPEB)))and(b==881)do b=855;e=299.51526548597013;d=75.3680916626765;break end;while((d==75.3680916626765)and(e==299.51526548597013))and(b==855)do f[(#('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu') - 99)]=false;d=2.3361214366052714;b=0;e=137.3504482579092;f[52]=(a._ieTHbXP)f[262]=(a._VeY48op75V740Ac)break end;while(b==202)and((d==156.9022239724141)and(e==31.20358447929359)and(f[(#('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu') - 202)]==false)and(f[262]==(a._imJgxT_Ngm))and(f[52]==(a._c3aujcOeRLiNj)))do bb=(h)e=402.4696967678705;f[52]=(a._dHTg009DW7O)f[((function(A) return (#A - 26) end)('"Be where your enemy is not." - Sun Tzu'))]=false;d=221.09773445683498;b=63;f[262]=(a._ZNnEjF)break end;if((d==168.53402593731815)and(e==190.3118544155674)and(f[(#('"Who wishes to fight must first count the cost." - Sun Tzu') - 45)]==false)and(f[262]==(a._C3njQAjGyk))and(f[52]==(a._dCfAGxsh)))and(b==782)then e=296.8564080819455;b=685;f[(#('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu') - 194)]=false;f[52]=(a._JO5zoTL3olquAT)f[262]=(a._JOOz3zpKiccjRU)ab=eb and T or{}d=132.44269592214562 end;while(b==454)and((d==207.1786896973572)and(e==515.7656762894455)and(f[13]==false)and(f[262]==(a._ERRnlmb))and(f[52]==(a._WdcWPkXr18bj7Sd)))do f[262]=(a._HSAkaR)d=934.4395515046114;f[52]=(a._aLL5TwE)b=383;f[13]=false;V={}e=393.1532178781823;break end;if(b==0)and((d==2.3361214366052714)and(e==137.3504482579092)and(f[(#('"Be where your enemy is not." - Sun Tzu') - 26)]==false)and(f[262]==(a._VeY48op75V740Ac))and(f[52]==(a._ieTHbXP)))then X=eb and(db[(a._n92FQXDx_q3Z0)][-1])or(1)f[13]=false;b=454;f[52]=(a._WdcWPkXr18bj7Sd)d=207.1786896973572;f[262]=(a._ERRnlmb)e=515.7656762894455 end;if(b==63)and((d==221.09773445683498)and(e==402.4696967678705)and(f[13]==false)and(f[262]==(a._ZNnEjF))and(f[52]==(a._dHTg009DW7O)))then f[(#('"In the midst of chaos, there is also opportunity." - Sun Tzu') - 48)]=false;e=124.24164065242175;f[262]=(a._GXu0EzlJNoUI5)U=eb and({})or(p)d=185.81948365007426;b=444;f[52]=(a._pwXoOqOzD)end;if((d==185.81948365007426)and(e==124.24164065242175)and(f[13]==false)and(f[262]==(a._GXu0EzlJNoUI5))and(f[52]==(a._pwXoOqOzD)))and(b==444)then f[(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 357)]=false;f[52]=(a._dCfAGxsh)b=782;cb=eb and(db[(a._Gofc3OUfneKXUz)][-1])or(h)d=168.53402593731815;f[262]=(a._C3njQAjGyk)e=190.3118544155674 end;while((d==132.44269592214562)and(e==296.8564080819455)and(f[13]==false)and(f[262]==(a._JOOz3zpKiccjRU))and(f[52]==(a._JO5zoTL3olquAT)))and(b==685)do Y=false;f[(#('"Who does not know the evils of war cannot appreciate its benefits." - Sun Tzu') - 65)]=false;f[262]=(a._g8sl__iWlxNQT)e=312.1289783295958;b=273;d=366.4818159024508;f[52]=(a._WYiSCgPIgu)break end end end;local d=1785;local h=1647;while(d>(h-12))do h=(d+1191)*((function(A) return (#A - 89) end)('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu'))while(d<h)do h=d-11904;ib=function(a,b)local c=""local d=(#('"The opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 83)local e=n(b)-d;u(d,n(a),function(g)c=c..s[hb(f(k(a,g,g)),f(k(b,d,d)))]d=(d>e)and 1 or d+1 end)return c end end;if d>(h-3570)then h=(d+3570)E=function(a,...)return ib(a,jb,...)end end end;B=ib;local d={[0]=function()end,[(#('"There are not more than five musical notes, yet the combinations of these five give rise to more melodies than can ever be heard. There are not more than five primary colours, yet in combination they produce more hues than can ever been seen. There are not more than five cardinal tastes, yet combinations of them yield more flavours than can ever be tasted." - Sun Tzu') - 369)]=function()while E~=nil do gb[472.2301428235387]=342.7703259783606 end;return{0.2600541626036921}end}local h=nil(d)[((function(A) return (#A - 317) end)('"The skillful tactician may be likened to the shuai-jan. Now the shuai-jan is a snake that is found in the Chang mountains. Strike at its head, and you will be attacked by its tail; strike at its tail, and you will be attacked by its head; strike at its middle, and you will be attacked by head and tail both." - Sun Tzu'))]=(d[1]) ;(d)[0]()local b={[(a._nRsx)]=function(b,c)if(eb~=true and Y)then do local b=581;local d=24.048532701291172;local e=356.9014737278688;local f={}repeat if((d==44.19405678574386)and(e==57.3842686538164)and(f[456]==false)and(f[74]==(a._kiuUKMn))and(f[806]==(a._KGQfCv5SsVzCf_m)))and(b==795)then break end;while((d==150.90598872375617)and(e==25.188324782846077)and(f[456]==false)and(f[74]==(a._Z8ZXt9cjpl))and(f[806]==(a._JEGKNU)))and(b==977)do b=581;d=24.048532701291172;e=356.9014737278688;break end;if(b==0)and((d==355.74646980965946)and(e==130.11104561111136)and(f[456]==false)and(f[74]==(a._chQkDoES43rTdR8))and(f[806]==(a._Twc0TuTsXcHbI)))then f[806]=(a._KGQfCv5SsVzCf_m)f[456]=false;while((#('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu') - 90)==(#('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu') - 170)and Y==(#db>-((function(A) return (#A - 145) end)('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu'))))do db[c]=(a._RTfPLLLEaqo_)end;b=795;d=44.19405678574386;f[74]=(a._kiuUKMn)e=57.3842686538164 end;while((d==24.048532701291172)and(e==356.9014737278688))and(b==581)do f[456]=false;b=0;d=355.74646980965946;f[806]=(a._Twc0TuTsXcHbI)e=130.11104561111136;f[74]=(a._chQkDoES43rTdR8)break end until(false)end;return elseif(db==nil)then db={}end;do local b=37;local d=440.71470183173943;local e=41.455908933379675;local f={}for g in(function()return 978 end)do if(b==462)and((d==14.20712707857585)and(e==3.4993613660779115)and(f[974]==false)and(f[957]==(a._WgDuKE))and(f[225]==(a._NHQO42M8L94Af)))then f[974]=false;b=240;e=31.25618037429237;d=56.86902614177286;f[957]=(a._cEiUEf8EH0)if(c==(a._jzz4Sb1LJh))then Z=c end;f[225]=(a._IftLVz)end;if((d==29.31495877632211)and(e==80.3634576285665)and(f[974]==false)and(f[957]==(a._ZkXrp9og8lixKC))and(f[225]==(a._UdTLSgQ)))and(b==79)then break end;if(b==240)and((d==56.86902614177286)and(e==31.25618037429237)and(f[974]==false)and(f[957]==(a._cEiUEf8EH0))and(f[225]==(a._IftLVz)))then f[225]=(a._Nn8P0)if(c==(a._JqCt2_EhHdH))then Z=c end;f[957]=(a._JW4KEBa8GwYb)b=574;f[974]=false;d=55.13795974872992;e=180.7584241263952 end;if(b==0)and((d==168.78464259798622)and(e==57.80403909899803)and(f[974]==false)and(f[957]==(a._MkBgDFoJ5L4R))and(f[225]==(a._CVKAx5I)))then if(c==(a._cYoBDlWkQ4vD))then Z=c end;f[957]=(a._WgDuKE)f[225]=(a._NHQO42M8L94Af)e=3.4993613660779115;f[974]=false;d=14.20712707857585;b=462 end;while(b==574)and((d==55.13795974872992)and(e==180.7584241263952)and(f[974]==false)and(f[957]==(a._JW4KEBa8GwYb))and(f[225]==(a._Nn8P0)))do if(c==(a._GxqGRmCZSR4luB))then Z=c end;f[974]=false;d=29.31495877632211;e=80.3634576285665;b=79;f[225]=(a._UdTLSgQ)f[957]=(a._ZkXrp9og8lixKC)break end;while((d==440.71470183173943)and(e==41.455908933379675))and(b==((function(A) return (#A - 75) end)('"What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." - Sun Tzu')))do f[957]=(a._MkBgDFoJ5L4R)f[225]=(a._CVKAx5I)f[974]=false;e=57.80403909899803;d=168.78464259798622;b=0;break end;if((d==64.06144417599317)and(e==448.54150338439973)and(f[974]==false)and(f[957]==(a._Cc1dLMIiYyp))and(f[225]==(a._fQMxlz2f1U0)))and(b==593)then e=41.455908933379675;d=440.71470183173943;b=37 end end end;if(c~=(a._jzz4Sb1LJh)and c~=(a._cYoBDlWkQ4vD)and c~=(a._GxqGRmCZSR4luB)and c~=(a._JqCt2_EhHdH))then do local b=511;local c=833.2641284010048;local d=301.6619392726427;local e={}for f in(function()return 978 end)do if((c==833.2641284010048)and(d==301.6619392726427))and(b==511)then e[560]=(a._JRuwhlGL80iEp)c=8.66134888637075;b=0;d=454.66100685829105;e[945]=(a._VldzGkt)e[275]=false end;if(b==955)and((c==333.7123520742527)and(d==85.68035710317399)and(e[275]==false)and(e[560]==(a._fuMo3ybG))and(e[945]==(a._uQQb3LZ)))then break end;while((c==8.66134888637075)and(d==454.66100685829105)and(e[275]==false)and(e[560]==(a._JRuwhlGL80iEp))and(e[945]==(a._VldzGkt)))and(b==0)do if((a._dGeFoOim))then return y((a._wJfJ3))end;e[945]=(a._uQQb3LZ)b=955;e[560]=(a._fuMo3ybG)e[275]=false;d=85.68035710317399;c=333.7123520742527;break end;while((c==590.3903010777037)and(d==567.1355672696835)and(e[275]==false)and(e[560]==(a._jokSs3OymwoGT))and(e[945]==(a._0E649kzhan)))and(b==153)do c=833.2641284010048;b=511;d=301.6619392726427;break end end end end;return b end;[(a._P2V593ry4)]=function(c,d,e,f,h,j)if(eb~=true and Y)then return y((a._vfIdhsr))end;if(Z==(a._jzz4Sb1LJh))then if(fb)then local b=1750;local c=6072;while(b<c)do c=b-12144;while(b>(c-10))do c=(b+1228)*2;while(b<c)do c=b-11912;local b={[(a._C9Yav2TwpAuyNxx)]=fb}local c=3174;local e=2077;while(c>(e-12))do e=(c+4412)*2;while(c<e)do e=c-30344;while(c>(e-11))do e=(c+((function(A) return (#A - 110) end)('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu')))*(#('"If the mind is willing, the flesh could go on and on without many things." - Sun Tzu') - 83)while(c<e)do e=c-12840;while(c>(e-12))do e=(c+4549)*((function(A) return (#A - 97) end)('"The whole secret lies in confusing the enemy, so that he cannot fathom our real intent." - Sun Tzu'))b[-49153]=d[-49153]end;if(6348-c)<(e+3183)then c=((e+3174)*2)b[-43066]=d[-43066]end end;if c>(e-74480)then e=(c+6348)db[(a._n92FQXDx_q3Z0)][X]=b end end;if(74480-c)<(e+37275)then c=((e+3174)*2)b[-40857]=d[-40857]end end;if c>(e-187048)then e=(c+6348)b[(a._FwVUIVZSY3CK8Pa)]=d[(a._FwVUIVZSY3CK8Pa)]end end end;if b>(c-3500)then c=(b+3500)X=X+1 end end;if(3500-b)<(c+1787)then b=((c+1750)*2)fb=nil end end else do local b=880;local c=150.40373774121326;local e=126.67487815138354;local f={}repeat if((c==392.79571146034925)and(e==6.6814100341206135)and(f[897]==false)and(f[61]==(a._cSSN_WE9i8))and(f[618]==(a._Y81Uz0ypun0Cgs)))and(b==468)then break end;while((c==260.2838580934756)and(e==10.631750880940722)and(f[897]==false)and(f[61]==(a._jKHG3q))and(f[618]==(a._BF5b8FS)))and(b==0)do c=392.79571146034925;f[618]=(a._Y81Uz0ypun0Cgs)f[61]=(a._cSSN_WE9i8)f[897]=false;b=468;e=6.6814100341206135;fb=d;break end;while(b==880)and((c==150.40373774121326)and(e==126.67487815138354))do f[618]=(a._BF5b8FS)b=0;e=10.631750880940722;f[897]=false;f[61]=(a._jKHG3q)c=260.2838580934756;break end;if((c==727.7796229579164)and(e==655.7728108429263)and(f[897]==false)and(f[61]==(a._jd6Dh_oOyK))and(f[618]==(a._peLU)))and(b==587)then e=126.67487815138354;c=150.40373774121326;b=880 end until(false)end end elseif(Z==(a._cYoBDlWkQ4vD))then local function c(b,c,d)if q(d,(a._ANMAVfzbK),(a._qBpNh6UqYO8Y))then return b..c elseif q(d,(a._iJh0SR4zooYf),(a._qBpNh6UqYO8Y))then return r(b,c)end end;local c;do local b=420;local d=235.37340067641475;local e=92.3145460481063;local f={}while(true)do if((d==386.0696038845947)and(e==415.905654386124)and(f[632]==false)and(f[930]==(a._yhKRQNIHSe))and(f[683]==(a._Hn1ix)))and(b==870)then b=420;e=92.3145460481063;d=235.37340067641475 end;if((d==87.58051659884744)and(e==143.36817039839255)and(f[632]==false)and(f[930]==(a._TbWGdaDtTNuI))and(f[683]==(a._k_puUmjRzZES2M7)))and(b==685)then break end;if(b==0)and((d==275.7250321662523)and(e==9.42267603446396)and(f[632]==false)and(f[930]==(a._xt6uFxTZCBKbpTk))and(f[683]==(a._Js7q6)))then e=143.36817039839255;f[683]=(a._k_puUmjRzZES2M7)f[930]=(a._TbWGdaDtTNuI)c=db[(a._Gofc3OUfneKXUz)][cb-1]b=685;d=87.58051659884744;f[632]=false end;if((d==235.37340067641475)and(e==92.3145460481063))and(b==420)then b=0;e=9.42267603446396;f[632]=false;d=275.7250321662523;f[683]=(a._Js7q6)f[930]=(a._xt6uFxTZCBKbpTk)end end end;if(d==nil and g(c)==(a._uTwpFb1GKPFaz))then do local d=742;local e=192.78175949959075;local f=6.726978874668179;local g={}while(true)do if((e==27.72415326269227)and(f==43.71170709233658)and(g[140]==false)and(g[532]==(a._SghRqUfNam))and(g[252]==(a._GNwaJ)))and(d==19)then e=192.78175949959075;d=742;f=6.726978874668179 end;if(d==742)and((e==192.78175949959075)and(f==6.726978874668179))then g[140]=false;g[532]=(a._vH7FzG_Mdv)d=0;f=112.12935899094312;g[252]=(a._lL0KrY5EYG49)e=166.0790981983874 end;if((e==188.60682614347456)and(f==162.00976101734844)and(g[140]==false)and(g[532]==(a._AXuCclju1G_bvjE))and(g[252]==(a._HPucLlb9v12)))and(d==502)then break end;while(d==0)and((e==166.0790981983874)and(f==112.12935899094312)and(g[140]==false)and(g[532]==(a._vH7FzG_Mdv))and(g[252]==(a._lL0KrY5EYG49)))do f=162.00976101734844;g[140]=false;d=502;g[252]=(a._HPucLlb9v12)e=188.60682614347456;db[(a._Gofc3OUfneKXUz)][cb-1]=z({J(c)},b)g[532]=(a._AXuCclju1G_bvjE)break end end end elseif(g(d)==(a._BvoEgJCqP7w)and d[(a._tL8pGR3AirLNSJ)]==true)then do local b=528;local c=108.23050222105594;local e=278.78089349598685;local f={}for g in(function()return 978 end)do if(b==151)and((c==23.285791111464267)and(e==69.97289021276121)and(f[724]==false)and(f[652]==(a._xy7lQgFI2))and(f[855]==(a._z9VCkw)))then break end;while((c==61.08503211027988)and(e==144.84262447851754)and(f[724]==false)and(f[652]==(a._Cv1akXqPPyO))and(f[855]==(a._GCGXE27tGYF0)))and(b==393)do e=278.78089349598685;c=108.23050222105594;b=528;break end;if((c==349.4785058155541)and(e==3.81561134250021)and(f[724]==false)and(f[652]==(a.__m9X_GLm_sFOa))and(f[855]==(a._mcu4qq1v9r)))and(b==8)then c=23.285791111464267;f[652]=(a._xy7lQgFI2)b=151;f[724]=false;f[855]=(a._z9VCkw)cb=cb+(#('"If the mind is willing, the flesh could go on and on without many things." - Sun Tzu') - 84)e=69.97289021276121 end;if((c==290.76271822280717)and(e==624.8253083801893)and(f[724]==false)and(f[652]==(a._EvNE_fijNYei))and(f[855]==(a._GjOOlax2)))and(b==0)then f[652]=(a.__m9X_GLm_sFOa)e=3.81561134250021;f[724]=false;c=349.4785058155541;f[855]=(a._mcu4qq1v9r)db[(a._Gofc3OUfneKXUz)][cb]=d;b=8 end;while((c==108.23050222105594)and(e==278.78089349598685))and(b==528)do f[724]=false;b=0;e=624.8253083801893;c=290.76271822280717;f[855]=(a._GjOOlax2)f[652]=(a._EvNE_fijNYei)break end end end elseif(g(d)==(a._BvoEgJCqP7w))then local b=1942;local c=778;while(b>(c-12))do c=(b+3087)*(#('"Quickness is the essence of the war." - Sun Tzu') - 46)while(b<c)do c=b-20116;db[(a._Gofc3OUfneKXUz)][cb]=d[(#('"There are five dangerous faults which may affect a general: (1) Recklessness, which leads to destruction; (2) cowardice, which leads to capture; (3) a hasty temper, which can be provoked by insults; (4) a delicacy of honor which is sensitive to shame; (5) over-solicitude for his men, which exposes him to worry and trouble." - Sun Tzu') - 335)]or nil end;if b>(c-3884)then c=(b+3884)cb=cb+1 end end else local b=330;local c=1306;while(b<c)do c=b-2612;while(b>(c-10))do c=(b+2727)*2;db[(a._Gofc3OUfneKXUz)][cb]=d end;if(660-b)<(c+375)then b=((c+330)*2)cb=cb+1 end end end elseif(Z==(a._JqCt2_EhHdH))then local c;c=function(d)local e={}local f=0;for c=((function(A) return (#A - 145) end)('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu')),#d[(a._OeW938VbcvnZV)]do local c=d[(a._OeW938VbcvnZV)][c]if(g(c)==(a._BvoEgJCqP7w))then l()e[f]=z({J(c[(#('"Do not swallow bait offered by the enemy. Do not interfere with an army that is returning home." - Sun Tzu') - 106)])},b)f=f+1 else e[f]=c;f=f+(#('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu') - 111)end end;e[-((function(A) return (#A - 36) end)('"Never venture, never win!" - Sun Tzu'))]=f;d[(a._Gofc3OUfneKXUz)]=e;local b={}local e=(#('"Great results can be achieved with small forces." - Sun Tzu') - 59)for c=1,#d[(a._O6YJ9qOGJa)]do local a=d[(a._O6YJ9qOGJa)][c]b[e]=a;e=e+1 end;b[-((function(A) return (#A - 67) end)('"One may know how to conquer without being able to do it." - Sun Tzu'))]=e;d[(a._n92FQXDx_q3Z0)]=b;local b={}local e=0;for f=(#('"The wise warrior avoids the battle." - Sun Tzu') - 46),#d[(a._QjG2a8ju)]do b[e]=c(d[(a._QjG2a8ju)][f])e=e+((function(A) return (#A - 59) end)('"Great results can be achieved with small forces." - Sun Tzu'))end;d[(a._QjG2a8ju)]=b;d[(a._QjG2a8ju)][-1]=e;return d end;local b=c(d)db[(a._QjG2a8ju)][bb]=b;bb=bb+1 elseif(Z==(a._GxqGRmCZSR4luB))then while(d>-((function(A) return (#A - 55) end)('"Wheels of justice grind slow but grind fine." - Sun Tzu')))do db[e]=db[e]or{}db[f]=db[f]or{}db[h]=db[h]or{}db[(a._js3WrFnjmvl)]=m;db[(a._WhP6UWq)]=db[(a._WhP6UWq)]or j;d=(d*-1)-(50)end end;return c end}local function d(b,...)local b,d=(#('"Quickness is the essence of the war." - Sun Tzu') - 47),-1;if(eb~=true and Y)then return y((a._CCLB8))else Y=true end;local h={...}local p={}local p=z({},{[(a._nRsx)]=p,[(a._f9Vm4FG)]=function(a,a,b)if(a>d)then d=a end;p[a]=b end})local c,q={},c()[(a._T_gSju1hFDwKEO)]((a._tWMJox9),...)-1;for b=0,q do if(b>=db[(a._WhP6UWq)])then c[b-db[(a._WhP6UWq)]]=h[b+((function(A) return (#A - 208) end)('Anger may in time change to gladness; vexation may be succeeded by content. But a kingdom that has once been destroyed can never come again into being; nor can the dead ever be brought back to life." - Sun Tzu'))]else p[b]=h[b+1]end end;db[(a._Gofc3OUfneKXUz)][-1]=m;local function c()local c=db[(a._Gofc3OUfneKXUz)]while true do local c,c,c,h,h;c=db[(a._n92FQXDx_q3Z0)][b]b=b+((function(A) return (#A - 59) end)('"Great results can be achieved with small forces." - Sun Tzu'))h=c[(a._C9Yav2TwpAuyNxx)]local q=O;if(not(8034.006674789907<h))then if(not(h>844.0216601975167))then if(not(477.4093097077811<h))then if(298.8629929878764>=h)then if(not(h>160.63133237128994))then if(h<=79.46630626245462)then if(-11.6245988014268775>=h)then return else p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]end elseif(h>=79.46630626245462)then local d=c[-43066]local e=p;e[d]=P(L(e[d]),(a._VkEfMcYzZjMj))e[d+1]=P(L(e[d+1]),(a._lyUgs1sqPm2DRqR))e[d+2]=P(L(e[d+2]),(a._XNO8rRHw))e[d]=e[d]-e[d+2]b=b+c[-49153]end elseif(h>=160.63133237128994)then if(not(h>198.3650489903039))then p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]elseif(198.3650489903039<h)then local a=c[-43066]local d=p;local e=d[a+2]local f=d[a]+e;d[a]=f;if(e>0)then if f<=d[a+1]then b=b+c[-49153]d[a+3]=f end else if f>=d[a+1]then b=b+c[-49153]d[a+3]=f end end end end elseif(not(h<=298.8629929878764))then if(h<=381.138391582708)then if(h<=300.24339751031926)then p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]db[(a._Gofc3OUfneKXUz)][i]=Q(v[(#('"In the midst of chaos, there is also opportunity." - Sun Tzu') - 60)],F)for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[1],F)end end;p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]elseif(h>300.24339751031926)then local a=c[-43066]local b=c[-49153]local c=p;local e;local f,g;e={}if(b~=(#('"Attack is the secret of defense; defense is the planning of an attack." - Sun Tzu') - 81))then if(b~=0)then f=a+b-(#('"Do not swallow bait offered by the enemy. Do not interfere with an army that is returning home." - Sun Tzu') - 106)else f=d end;g=0;for a=a+1,f do g=g+1;e[g]=c[a]end;S(c[a](M(e,1,f-a)))else S(c[a]())end end elseif(h>=381.138391582708)then if(h<=419.9579971445171)then b=b+c[-49153]elseif(not(419.9579971445171>=h))then if(c[-40857]>=256)then c[-47128]=c[-40857]-256;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]end;local a=p;local b=c[-43066]local d=a[c[-49153]]local c=c[-47128]or a[c[-40857]]a[b+(#('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 145)]=d;a[b]=d[c]end end end elseif(h>=477.4093097077811)then if(not(h>592.0789493159231))then if(h<=487.27512383692175)then if(not(h>480.8152479067815))then for b,d in C(db[(a._Gofc3OUfneKXUz)])do if(g(d)==(a._xjf89cbYf14T0V)and g(d[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=p[c[-49153]](d[1],G)end end;p[c[-49153]]=m[c[-49153]]elseif(not(480.8152479067815>=h))then local a=c[-43066]local b=c[-49153]local c=c[-40857]local e=p;local f,g;local h,j;f={}if(b~=1)then if(b~=0)then h=a+b-1 else h=d end;j=0;for a=a+((function(A) return (#A - 67) end)('"One may know how to conquer without being able to do it." - Sun Tzu')),h do j=j+(#('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu') - 111)f[j]=e[a]end;h,g=S(e[a](M(f,1,h-a)))else h,g=S(e[a]())end;d=a-1;if(c~=(#('"If quick, I survive. If not quick, I am lost. This is death." - Sun Tzu') - 71))then if(c~=0)then h=a+c-2 else h=h+a-((function(A) return (#A - 111) end)('"What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." - Sun Tzu'))end;j=0;for a=a,h do j=j+1;e[a]=g[j]end end end elseif(not(487.27512383692175>=h))then if(not(496.4628887278111<h))then local a=c[-43066]local b=c[-49153]local c=p;local e,f;local g;if(b==1)then return elseif(b==0)then g=d else g=a+b-2 end;f={}e=0;for a=a,g do e=e+1;f[e]=c[a]end;do return f,e end else p[c[-43066]]=db[(a._Gofc3OUfneKXUz)][c[-49153]]end end elseif(not(592.0789493159231>=h))then if(not(764.1812206500301<h))then if(not(h>704.28381561975))then local d,d=H(function()local b=1-(a._x98Uz3oKADW7)^2;return(a._AqqOi7L9O)/b end)local d=e(O(d),(a._oISFM3Y2))()local d=L(d)local e=D(H(function()local b=(a._hvRSI9)^2;return(a._tcvH354OVbQfy)%b end))if(e~=R or R==nil or(g~=nil and g(R)~=(a._dgkzDX))or e~=d or d~=R)then b=x(b,1,(a._z4PYp5p1gbyKwIK))return(function()while true do b=b-1;if b<-100 then b=1000 end end;return(a._CaEACAFsK_vQmT)end)()elseif not(e~=R or R==nil or(g~=nil and g(R)~=(a._dgkzDX))or e~=d or d~=R)then p[c[-43066]]=c[-49153]end elseif(not(h<=704.28381561975))then local a=c[-43066]local d=p;local e=d[a+((function(A) return (#A - 76) end)('"Who does not know the evils of war cannot appreciate its benefits." - Sun Tzu'))]local f=d[a]+e;d[a]=f;if(e>0)then if f<=d[a+1]then b=b+c[-49153]d[a+3]=f end else if f>=d[a+1]then b=b+c[-49153]d[a+3]=f end end end elseif(h>=764.1812206500301)then if(not(822.6061684080886<h))then local b=p;local d=b[c[-40857]]if(c[-40857]>=256)then d=c[-40857]-256;d=db[(a._Gofc3OUfneKXUz)][d]end;b[c[-43066]]=b[c[-49153]][d]elseif(h>822.6061684080886)then if(c[-40857]>=256)then c[-47128]=c[-40857]-256;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]end;local a=p;local b=c[-43066]local d=a[c[-49153]]local c=c[-47128]or a[c[-40857]]a[b+1]=d;a[b]=d[c]end end end end elseif(not(h<=844.0216601975167))then if(h<=5716.2419820622345)then if(not(3676.3800747008586<h))then if(2880.5888864304275>=h)then if(2197.4955919050376>=h)then if(not(1112.681192420554<h))then local a=c[-43066]local b=c[-49153]local c=c[-40857]local e=p;local f,g;local h,j;f={}if(b~=1)then if(b~=0)then h=a+b-(#('"If quick, I survive. If not quick, I am lost. This is death." - Sun Tzu') - 71)else h=d end;j=0;for a=a+(#('"Victorious warriors win first and then go to war, while defeated warriors go to war first and then seek to win." - Sun Tzu') - 122),h do j=j+1;f[j]=e[a]end;h,g=S(e[a](M(f,(#('"The opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 83),h-a)))else h,g=S(e[a]())end;d=a-(#('"Build your opponent a golden bridge to retreat across." - Sun Tzu') - 65)if(c~=1)then if(c~=0)then h=a+c-2 else h=h+a-(#('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu') - 206)end;j=0;for a=a,h do j=j+(#('"Who wishes to fight must first count the cost." - Sun Tzu') - 57)e[a]=g[j]end end elseif(not(h<=1112.681192420554))then do return end end elseif(h>2197.4955919050376)then p[c[-43066]]=E(db[(a._Gofc3OUfneKXUz)][c[-49153]])end elseif(h>=2880.5888864304275)then if(h<=3077.102569695832)then for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[((function(A) return (#A - 47) end)('"Quickness is the essence of the war." - Sun Tzu'))],F)end end;db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]elseif(not(h<=3077.102569695832))then p[c[-43066]]=db[(a._Gofc3OUfneKXUz)][c[-49153]]end end elseif(3676.3800747008586<h)then if(4273.74123727809>=h)then if(h<=3751.273960489499)then local b=p;b[c[-43066]]=b[c[-49153]][db[(a._Gofc3OUfneKXUz)][c[-40857]-256]]else local d=c[-43066]local e=p;e[d]=P(L(e[d]),(a._VkEfMcYzZjMj))e[d+1]=P(L(e[d+1]),(a._lyUgs1sqPm2DRqR))e[d+2]=P(L(e[d+2]),(a._XNO8rRHw))e[d]=e[d]-e[d+(#('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu') - 169)]b=b+c[-49153]end elseif(h>4273.74123727809)then if(h<=4374.472484195465)then l()if p[c[-43066]]~=c[-49153]or o~=(a._7ItbJLKixV95)or K~=J("\42\30\24\28\32\11\11\19\86\76\47\1\2\9\28\60\6\65\17\29\67\9\50\52\0\53\44\7\58\0\17")then b=b-1;return(function()while true do o=p[1]K=p[(#('"What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." - Sun Tzu') - 110)]end end)()elseif not(p[c[-43066]]~=c[-49153]or o~=(a._7ItbJLKixV95)or K~=J("\42\30\24\28\32\11\11\19\86\76\47\1\2\9\28\60\6\65\17\29\67\9\50\52\0\53\44\7\58\0\17"))then p[c[-43066]]=nil;p[0]=nil;d=x(1,-1,(a._sx0XX8mR6jA5))end elseif(h>=4374.472484195465)then local a=c[-49153]m[c[-43066]]=p[c[-43066]]p[c[-43066]]=function(b,c)local d=""local e=a;local g=n(c)-e;u(e,n(b),function(h)d=A(d,s[hb(f(k(b,h,h)),f(k(c,e,e)))])e=(e>g)and a or e+a end)return d end end end end else if(h<=6553.545041853891)then if(6312.192448711387>=h)then if(not(h>6020.304026964389))then do return end elseif(not(6020.304026964389>=h))then A=function(a,b)return a..b end end elseif(h>6312.192448711387)then if(h<=6359.948803521304)then p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]elseif(6359.948803521304<h)then b=b+c[-49153]end end else if(not(h>6802.949171435192))then if(not(6674.327247078092<h))then local c;c=db[(a._n92FQXDx_q3Z0)][b]b=b+((function(A) return (#A - 47) end)('"Quickness is the essence of the war." - Sun Tzu'))p[c[-43066]]=E(db[(a._Gofc3OUfneKXUz)][c[-49153]])c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;local e=c[-43066]local f=c[-49153]local g=c[-40857]local h=p;local j,k;local l,m;j={}if(f~=1)then if(f~=0)then l=e+f-1 else l=d end;m=0;for a=e+1,l do m=m+1;j[m]=h[a]end;l,k=S(h[e](M(j,1,l-e)))else l,k=S(h[e]())end;d=e-(#('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu') - 214)if(g~=1)then if(g~=0)then l=e+g-2 else l=l+e-(#('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu') - 170)end;m=0;for a=e,l do m=m+1;h[a]=k[m]end end;c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;local d=p;d[c[-43066]]=d[c[-49153]][db[(a._Gofc3OUfneKXUz)][c[-40857]-256]]c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;local d=p;d[c[-43066]]=d[c[-49153]][db[(a._Gofc3OUfneKXUz)][c[-40857]-256]]c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;if(c[-40857]>=256)then c[-47128]=c[-40857]-256;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]end;local a=p;local b=c[-43066]local d=a[c[-49153]]local c=c[-47128]or a[c[-40857]]a[b+1]=d;a[b]=d[c]elseif(not(6674.327247078092>=h))then local a=c[-43066]local b=c[-49153]local c=p;local e;local f,g;e={}if(b~=(#('"If the mind is willing, the flesh could go on and on without many things." - Sun Tzu') - 84))then if(b~=0)then f=a+b-1 else f=d end;g=0;for a=a+1,f do g=g+(#('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu') - 111)e[g]=c[a]end;S(c[a](M(e,1,f-a)))else S(c[a]())end end else if(not(h>7461.005502928994))then S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))local b=p;local d=c[-49153]local e=b[d]for a=d+1,c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)local b=p;local d=c[-49153]local e=b[d]for a=d+1,c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;db[(a._Gofc3OUfneKXUz)][i]=Q(v[((function(A) return (#A - 53) end)('"Opportunities multiply as they are seized." - Sun Tzu'))],F)p[c[-43066]]={k((N),1,p[c[-49153]])}elseif(h>=7461.005502928994)then local b=p;b[c[-43066]]=b[c[-49153]][db[(a._Gofc3OUfneKXUz)][c[-40857]-256]]end end end end end elseif(not(h<=8034.006674789907))then if(not(h>41276.95217942869))then if(h<=29354.19996247132)then if(not(h>17136.15502823868))then if(11665.209415662372>=h)then if(not(9501.06621348025<h))then if(h<=8217.113180525399)then p[c[-43066]]=E(db[(a._Gofc3OUfneKXUz)][c[-49153]])else local c;c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]c=db[(a._n92FQXDx_q3Z0)][b]b=b+(#('"Plan for what it is difficult while it is easy, do what is great while it is small." - Sun Tzu') - 94)if(c[-40857]>=256)then c[-47128]=c[-40857]-256;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]end;local e=p;local f=c[-43066]local g=e[c[-49153]]local h=c[-47128]or e[c[-40857]]e[f+1]=g;e[f]=g[h]c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;p[c[-43066]]=E(db[(a._Gofc3OUfneKXUz)][c[-49153]])c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;local e=c[-43066]local f=c[-49153]local g=c[-40857]local h=p;local j,k;local l,m;j={}if(f~=1)then if(f~=0)then l=e+f-1 else l=d end;m=0;for a=e+1,l do m=m+1;j[m]=h[a]end;l,k=S(h[e](M(j,1,l-e)))else l,k=S(h[e]())end;d=e-1;if(g~=1)then if(g~=0)then l=e+g-2 else l=l+e-1 end;m=0;for a=e,l do m=m+(#('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 145)h[a]=k[m]end end;c=db[(a._n92FQXDx_q3Z0)][b]b=b+1;local b=p;b[c[-43066]]=b[c[-49153]][db[(a._Gofc3OUfneKXUz)][c[-40857]-256]]end elseif(not(h<=9501.06621348025))then S(p[c[-43066]](M(args,(#('"Quickness is the essence of the war." - Sun Tzu') - 47),limit-c[-43066],(N))))b=b-1;db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)local a=p;local b=c[-49153]local d=a[b]for b=b+(#('"Treat your men as you would your own beloved sons. And they will follow you into the deepest valley." - Sun Tzu') - 111),c[-40857]do d=d..a[b]end;p[c[-43066]]=d;p[c[-49153]]=N end elseif(h>=11665.209415662372)then if(h<=15696.380543763253)then db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}b=b-1*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)b=b-1*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))p[c[-43066]]={k((N),1,p[c[-49153]])}b=b-1 elseif(h>15696.380543763253)then p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]do return p[c[-40857]]end end end elseif(17136.15502823868<h)then if(not(h>27779.421619505643))then if(26230.272212723237>=h)then S(p[c[-43066]](M(args,((function(A) return (#A - 94) end)('"One mark of a great soldier is that he fight on his own terms or fights not at all." - Sun Tzu')),limit-c[-43066],(N))))W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]local a=p;local d=c[-49153]local e=a[d]for b=d+(#('"The opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 83),c[-40857]do e=e..a[b]end;p[c[-43066]]=e;p[c[-49153]]=N;b=b-1;p=c[-49153]%p[c[-49153]]*c[-43066]S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))elseif(26230.272212723237<h)then db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]end elseif(not(h<=27779.421619505643))then if(not(h>28365.54661046761))then db[(a._Gofc3OUfneKXUz)][i]=Q(v[((function(A) return (#A - 55) end)('"Wheels of justice grind slow but grind fine." - Sun Tzu'))],F)local b=p;local d=c[-49153]local e=b[d]for a=d+(#('"To secure ourselves against defeat lies in our own hands, but the opportunity of defeating the enemy is provided by the enemy himself." - Sun Tzu') - 145),c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]elseif(28365.54661046761<h)then do return p[c[-40857]]end;W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)p[c[-43066]]={k((N),1,p[c[-49153]])}N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)end end end elseif(h>=29354.19996247132)then if(h<=37562.96767918034)then if(h<=33573.11073369249)then if(not(h>29898.881997278902))then local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]else N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+(#('"The art of war is of vital importance to the State. It is a matter of life and death, a road either to safety or to ruin. Hence it is a subject of inquiry which can on no account be neglected." - Sun Tzu') - 203)end;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))end elseif(h>33573.11073369249)then if(not(34562.031970828815<h))then local d=p;local e=c[-49153]local f=d[e]for a=e+1,c[-40857]do f=f..d[a]end;p[c[-43066]]=f;p[c[-49153]]=N;if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+(#('"Great results can be achieved with small forces." - Sun Tzu') - 59)end;S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))elseif(h>34562.031970828815)then p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}end end elseif(not(37562.96767918034>=h))then if(h<=40602.98218329298)then if(40413.78186997818>=h)then for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}elseif(not(40413.78186997818>=h))then do return p[c[-40857]]end;for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;p[c[-43066]]={k((N),1,p[c[-49153]])}b=b-1*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;local a=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=a[c[-49153]]end elseif(not(h<=40602.98218329298))then if(h<=41155.0120893745)then local b=p;local d=c[-49153]local e=b[d]for a=d+1,c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)else c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]end end end end elseif(h>=41276.95217942869)then if(69873.49939514951>=h)then if(not(h>49785.46150210533))then if(not(43695.943346422675<h))then if(43191.23760733839>=h)then if(41716.67762051734>=h)then for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end;local d=p;local e=c[-49153]local f=d[e]for a=e+1,c[-40857]do f=f..d[a]end;p[c[-43066]]=f;p[c[-49153]]=N;p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]elseif(h>=41716.67762051734)then c[-47128]=db[(a._Gofc3OUfneKXUz)][c[-47128]]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)S(p[c[-43066]](M(args,1,limit-c[-43066],(N))))p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end end elseif(not(h<=43191.23760733839))then b=b-(#('"Attack is the secret of defense; defense is the planning of an attack." - Sun Tzu') - 81)*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}p=c[-49153]%p[c[-49153]]*c[-43066]N=k(db[p[c[-43066]]],p[c[-49153]],p[c[-40857]])local a=p;local b=c[-49153]local d=a[b]for b=b+(#('"In battle, there are not more than two methods of attack-the direct and the indirect; yet these two in combination give rise to an endless series of maneuvers." - Sun Tzu') - 170),c[-40857]do d=d..a[b]end;p[c[-43066]]=d;p[c[-49153]]=N end else if(h<=45783.53714312057)then db[(a._Gofc3OUfneKXUz)][i]=Q(v[1],F)p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[1],F)end end;p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)elseif(h>=45783.53714312057)then do return p[c[-40857]]end;for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[1],F)end end;p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)end end elseif(not(49785.46150210533>=h))then if(not(56726.322825482646<h))then if(not(h>53949.71757860734))then p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])b=b-1*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)for b=p[c[-49153]],p[c[-43066]]do p[c[-40857]]=p[c[-40857]]..p[db[(a._Gofc3OUfneKXUz)]][b]end elseif(h>=53949.71757860734)then local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]end else if(not(69325.29494726296<h))then p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}else W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]p[c[-43066]]={k((N),((function(A) return (#A - 94) end)('"One mark of a great soldier is that he fight on his own terms or fights not at all." - Sun Tzu')),p[c[-49153]])}p[c[-43066]]=W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]p[c[-43066]]={k((N),1,p[c[-49153]])}p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])end end end elseif(h>=69873.49939514951)then if(h<=79483.77818906229)then if(77382.87033180182>=h)then if(not(72742.03864956985<h))then p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)p[c[-43066]]=W[db[(a._Gofc3OUfneKXUz)][c[-49153]]](N)p=c[-49153]%p[c[-49153]]*c[-43066]S(p[c[-43066]](M(args,((function(A) return (#A - 206) end)('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu')),limit-c[-43066],(N))))elseif(72742.03864956985<h)then for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[1],F)end end;if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]local b=p;local d=c[-49153]local e=b[d]for a=d+((function(A) return (#A - 94) end)('"Plan for what it is difficult while it is easy, do what is great while it is small." - Sun Tzu')),c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}end else if(h<=78947.07678225236)then p=c[-49153]%p[c[-49153]]*c[-43066]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])local d=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=d[c[-49153]]if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}b=b-1 elseif(h>78947.07678225236)then for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[1])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[(#('"Build your opponent a golden bridge to retreat across." - Sun Tzu') - 65)],F)end end;local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]local b=p;local d=c[-49153]local e=b[d]for a=d+((function(A) return (#A - 206) end)('"Foreknowledge cannot be gotten from ghosts and spirits, cannot be had by analogy, cannot be found out by calculation. It must be obtained from people, people who know the conditions of the enemy." - Sun Tzu')),c[-40857]do e=e..b[a]end;p[c[-43066]]=e;p[c[-49153]]=N;db[(a._Gofc3OUfneKXUz)]=c[-49153]/{[c[-43066]]=(a._SPlDhMmjMFq81b),[c[-40857]]=N}W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]local a=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=a[c[-49153]]end end elseif(not(79483.77818906229>=h))then if(h<=88635.14694353592)then if(84782.32123336752>=h)then for b,c in C(db[(a._Gofc3OUfneKXUz)])do if(g(c)==(a._xjf89cbYf14T0V)and g(c[((function(A) return (#A - 78) end)('"There is no instance of a nation benefiting from prolonged warfare." - Sun Tzu'))])==(a._KlbvPjYv7WSn3k))then db[(a._Gofc3OUfneKXUz)][b]=Q(c[1],F)end end;local b=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=b[c[-49153]]W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]p=c[-49153]%p[c[-49153]]*c[-43066]elseif(not(h<=84782.32123336752))then p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)local a=db[(a._Gofc3OUfneKXUz)][c[-43066]+c[-40857]]p[c[-43066]]=a[c[-49153]]p[c[-43066]]={k((N),1,p[c[-49153]])}end elseif(h>88635.14694353592)then if(89599.67115842164>=h)then W[j(db[(a._Gofc3OUfneKXUz)][c[-49153]])]=p[c[-43066]]local d=p;local e=c[-49153]local f=d[e]for a=e+1,c[-40857]do f=f..d[a]end;p[c[-43066]]=f;p[c[-49153]]=N;p[c[-43066]]=Q(db[(a._Gofc3OUfneKXUz)][c[-49153]],F)if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+(#('"Who does not know the evils of war cannot appreciate its benefits." - Sun Tzu') - 77)end;W[db[(a._Gofc3OUfneKXUz)][c[-49153]]]=p[c[-43066]]if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end elseif(h>=89599.67115842164)then p=c[-49153]%p[c[-49153]]*c[-43066]p=c[-49153]%p[c[-49153]]*c[-43066]p[c[-43066]]=j(db[(a._Gofc3OUfneKXUz)][c[-49153]])if(S(p[c[-43066]])==N)then db[(a._C9Yav2TwpAuyNxx)]=(function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB))end;do b=b+1 end;db[(a._Gofc3OUfneKXUz)][i]=Q(v[((function(A) return (#A - 57) end)('"Who wishes to fight must first count the cost." - Sun Tzu'))],F)p[c[-43066]]={k((N),1,p[c[-49153]])}b=b-1*(db[(a._n92FQXDx_q3Z0)])db[(a._C9Yav2TwpAuyNxx)]((function(b)return b^(a._cYoBDlWkQ4vD)end)((a._GxqGRmCZSR4luB)))end end end end end end;if(b>(X-1))then break end end end;local a,b=c()if a and(b>0)then return M(a,1,b)end;return end;return z({},b),d end;local b,e=o((a._7ItbJLKixV95),{31,31},0,c())b.xy7oZ13Y_I(0,(a._Gofc3OUfneKXUz),(a._n92FQXDx_q3Z0),(a._D6yJVb5dDDGN),0)do local c={}local function e(e)local g={}local h=((function(A) return (#A - 214) end)('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu'))local j=#e-(#('"Never venture, never win!" - Sun Tzu') - 36)local k=function(a)a=a or((function(A) return (#A - 90) end)('"He who is prudent and lies in wait for an enemy who is not, will be victorious." - Sun Tzu'))local b=k(e,h,h+(a-1))h=h+a;return b end;local l=function()local a,b=f(e,h,h+1)h=h+2;return(b*256)+a end;local m=function()local a,b,c=f(e,h,h+2)h=h+3;return(c*65536)+(b*256)+a end;local n=function()local a,b,c,d=f(e,h,h+3)h=h+(#('Anger may in time change to gladness; vexation may be succeeded by content. But a kingdom that has once been destroyed can never come again into being; nor can the dead ever be brought back to life." - Sun Tzu') - 205)return(d*16777216)+(c*65536)+(b*256)+a end;local e=function()local a,b,c,d,e=f(e,h,h+4)h=h+5;return(d*16777216)+(c*65536)+(b*256)+a+(e*4294967296)end;local d,o,p,q=d(0),d((#('"There are roads which must not be followed, armies which must not be attacked, towns which must not be besieged, positions which must not be contested, commands of the sovereign which must not be obeyed." - Sun Tzu') - 214)),d(2),d(3)local q,q,q=f(o),f(p),f(q)local q=b[(a._MbZ8y)]local m=function()local b,c,e;local g=k()if(g==(a._dStXtjejSpWFh)or g==(a.__mAxKi_ACeuHK))then return b,c,e,g==(a.__mAxKi_ACeuHK)else local h=k()if h==d then b=f(k())elseif h==o then b=k()==(a._3z4mlkir)end;local f=k()if f==d then local b=(g==(a._Rl6gxjm2cR35))and m()or n()if(g==(a._Djlkeajbfm8))then b=b-131071 end;c=b elseif f==o then c=k()==(a._3z4mlkir)end;if(g==(a._Rl6gxjm2cR35))then local b=k()if b==d then e=m()elseif b==o then e=k()==(a._3z4mlkir)end end;return b,c,e,false end end;while true do local g=k()if g==p then break end;if g==d then local d={}local f=l()local g,h,j,k=m()d[(a._fGFIr)]=k;d[-43066]=g;d[(a._ld6NkdM9w)]=e()d[-40857]=j;d[-49153]=h;b(f)(d)if not k then local a=n()c[a]=f end end;if g==o then local d={}local f=f(k())local c=c[f]local f,g,h,j=m()d[(a._fGFIr)]=j;d[-40857]=h;d[(a._ld6NkdM9w)]=e()d[-49153]=g;d[-43066]=f;b(c)(d)end;if h>j then break end end;for a,b in C(c)do c[a]=nil end;c=nil;return g end;e(N)end;do local a=b[(a._VR8xUW5b)]b("\121\121\90\100\123\80")()b("\110\106\95\120\108")()b("\74\106\74\100")()b("\127\121\79\123\123")()b("\108\121\64\114")()b({1})b("\120\113\87\114\113\66")()b("\106\107\94\114\108\80")()b("\73\119\64\117")()b("\111\125\78\101\103\84\76")()b("\108\90\68\99\109\23\10")()b("\67\93\127\69\74\112\24\124\107\124\64\75\70\76\102\10\12\9\96\122\100")()b("\89\125\93\123\119\71\89\78\91\75\80\126\125\113\85\77\87")()b({3})b("\121\121\90\100\123\80")()b("\77\113\95\114\77\65\74\76\91\93")()b("\92\125\76\103\113\74\75")()b("\84\71\68\121\119\80\103\101")()b("\76\125\89\68\123\86\78\83\93\74")()b("\108\90\68\99\109\18\12")()b("\110\118\78\101\103\84\76")()b("\120\113\87\114\113\66")()b({1000})b("\124\121\68\99")()b("\84\71\68\121\109\80\74\101\97")()b("\74\104\93\123\103\99\77\84")()b("\103\119\76\115")()b("\78\110\72\121\106\87")()b("\62\49\10\38")()b("\46\49\14\55")()b("\27\53\19\62\32\52\8\0\24\34\18\54\51\52\2\62\6")()end;do local a=b[(a._kxd0_NXvxfNan2j)]end;return e(c())end end)({["VeY_IBwaDrOlj2uMSmoGa5LdI"]="P_vxZ_feXpt4";[2]=b;[-56.66131310973188]="W_7uhsR54ALxkAPbky";["St"]="lvUNjbklhCBw3rOZv0DVyu5xF";[247.04372317297927]="IY3wgXeO3FMcDRXU";[-50.04410739218574]="QMGrjJGz9yKUFPwFwtcI";["XjaueXSmqYZlrTH"]="COeyYy50Fp01AfvUi7";[-68.61470586668884]="Za1o2mdyn5yTN0dHCk";[385.79613103116765]="AZAxq0PmdvK94";[89.57204748836003]="Xl0gjZYFZwHslM9QMlT5a";[-199.034583219814]="LjzzOOpPJ1wAMApKw6e";[-135.88420707750356]="M70UcSmIux_jLcXn6MO";["c2hSmT43xDM63EMcebUYQdhx6ge"]="NfhTaZ_v9Of";[383.4472529327451]="wwYRpGw_vH5OCD";["xfHgkWGLISfL1mLxzz4bL"]="RqAbup3NTEc";[340.7283917238217]="Au9loveO";["JOLnY42TRX"]="Pruew0RiqIB";["pv5T2zah1Hqkl"]="t6wm0MbLtvH8y875yrmIlWnPUu";[-195.4446274265901]="yRZrXjcrdee";["qa8xmK263v49JOe6D8B9mwLcT_MYU"]="kXknTrjYKZX";[370.408805761182]="lYikD0fMiqYlRqvTuny_Kdh2";["JGu"]="arvfkeuEcwmf";[-123.96442831091636]="cHif478i1qgsyc";[-193.74604779335337]="FcyoQPDcYH78kosCTA3zsG5G";[254.41974825778453]="AGtiEbYDxGgAgG7X76hY";["chRHyYctH02_BWtCn3G0hn"]="MV_oE4NT4Ll6";[-70.75297861960078]="TMwrvgObR0JkbwwWBAnjj_DN";[153.91791246733544]="_Fol3iep04mgGWATJprS";["Ncrw8OHJj9TjIP2dsdrv_"]="JeKsyH06dTZJiEHHZJBJWEJnIKv";["pQ"]="X5uw4PpMsexVHwvBKbAWeC";[114.76803150258122]="_at2EqtEil9SWi7KBT6m";[-234.81392268261652]="U3BAASRl";[226.67346448462004]="fnBvSmjDTPyrwraZPY_SzR";[-213.905402429511]="XTNzJ2F1Lk6qGeD6";[187.5864707304983]="IVwRpSlnsHIygObQvAxfLhHbydv";[265.39072535488714]="CO0jxB3fpAueRSRxPQ_";[151.30178766194]="RlyuzYY4kEPT3H";[-60.12905465138641]="ph7_HkZAl";[1]=c();["UGTS9k9R5P"]="BCfQ0a6fcxDnD";[-297.15105220580057]="CV0DNqBCggLkCfb8D2eamNRi_NQ"})
    end)
    
ServerW:Button('*FE* Crash Server v12 (This Ping Spike everyone Press whenever you want)',function()
for i = 1,30000 do

local args = {
    [1] = game:GetService("ReplicatedStorage").Weapons:FindFirstChild("Firework Launcher")
}

game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(unpack(args))

end
end)
ServerW:Button('Free New Years Unusual Pick what skin you want then press ',function()
    game:GetService("ReplicatedStorage").Events.NewYear:FireServer()
end)
ServerW:Button('*FE* Golden Knife DOSE DMG RESET After Pressed',function()
    for _,v in pairs(game.ReplicatedStorage.Levels:GetChildren())do
		v.Value= "Golden Knife"
    end
end)

ServerW:Button('*FE* Destroy Head Hitbox + Headless',function()
    
    
if game.Players.LocalPlayer.Character:FindFirstChild("HeadHB")then
            game.Players.LocalPlayer.Character:FindFirstChild("HeadHB"):Destroy()
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("FakeHead")then
            game.Players.LocalPlayer.Character:FindFirstChild("FakeHead"):Destroy()
        end

end)

ServerW:Button('FE Sunglasses',function()
    while true do
game:GetService("ReplicatedStorage").Events.Sunglasses:FireServer("")
wait(0.0000000000000000000000000000001)
end
end)
ServerW:Button('TP To Quest Event',function()

local args = {
    [1] = "Wake Up"
}

game:GetService("ReplicatedStorage").Redeem:InvokeServer(unpack(args))

end)
ServerW:Button('Free Badge',function()
game:GetService("ReplicatedStorage").Events.ReplicateGear2:FireServer("coffee");
end) 

ServerW:Button('God Mode v3 (Cant DMG People)',function()
if game.Players.LocalPlayer.Character:FindFirstChild("Spawned")then
    game.Players.LocalPlayer.Character.Spawned:Destroy()--simple god mode
end
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)--keep the player godded after respawn
    if x.Name=="Spawned"then
        wait(.1)
        x:Destroy()
    end
end)
game.RunService.RenderStepped:Connect(function()--remove damage effects that can damage godded players
    if game.Players.LocalPlayer.Character then
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Engulfed")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Engulfed:Destroy()
            elseif game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Bleed")then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Bleed:Destroy()
            end
        end
    end
end)
local hitparter=debug.getconstant(require(game:GetService("ReplicatedStorage").Modules.ClientFunctions).CreateProjectile,105)--arsenals shitty anti cheat
local damage={--projectile damage table
    [20]={"Slingshot",0,0,0,0,0,2,0,0,1,0,0},
    [25]={"Slingshot",1,0,0,0,0,2,0,0,1,0,0},
    [30]={"Ice Stars",0,0,0,0,0,2,0,0,1,0,0},
    [37]={"Ice Stars",1,0,0,0,0,2,0,0,1,0,0},
    [40]={"Spellbook",0,0,0,0,0,2,0,0,1,0,0},
    [45]={"Snowball",0,0,0,0,0,2,0,0,1,0,0},
    [50]={"Cone Launcher",0,0,0,0,0,2,0,0,1,0,0},
    [56]={"Snowball",1,0,0,0,0,2,0,0,1,0,0},
    [60]={"Plasma Launcher",0,0,0,0,0,2,0,0,1,0,0},
    [62]={"Cone Launcher",1,0,0,0,0,2,0,0,1,0,0},
    [70]={"Lightning Cannon",0,0,0,0,0,2,0,0,1,0,0},
    [75]={"Plasma Launcher",1,0,0,0,0,2,0,0,1,0,0},
    [76]={"Firework Launcher",0,0,0,0,0,2,0,0,1,0,0},
    [80]={"TP Launcher",0,0,0,0,0,2,0,0,1,0,0},
    [82]={"EM249",0,0,0,0,0,2,0,0,1,0,0},
    [87]={"Lightning Cannon",1,0,0,0,0,2,0,0,1,0,0},
    [90]={"Ultraball",0,0,0,0,0,2,0,0,1,0,0},
    [95]={"Firework Launcher",1,0,0,0,0,2,0,0,1,0,0},
    [100]={"Bow",0,0,0,0,0,2,0,0,1,0,0},
}
local finddamage=function(a)--find damage from closest value
    local damagetodo=a
    local upperd={}
    local uppern=math.huge
    local lowerd={}
    local lowern=0
    for i,v in pairs(damage)do
        if i>=damagetodo then
            table.insert(upperd,i)
        end
        if i<=damagetodo then
            table.insert(lowerd,i)
        end
    end
    if #lowerd==0 then
        return(damage[20])--if there are no lower values then do 20
    end
    for _,v in pairs(lowerd)do
        if lowern<v then
            lowern=v
        end
    end
    for _,v in pairs(upperd)do
        if uppern>v then
            uppern=v
        end
    end
    local truenums={
        [lowern]=Vector3.new(lowern-damagetodo,0,0).Magnitude,
        [uppern]=Vector3.new(uppern-damagetodo,0,0).Magnitude,
    }
    local final=math.huge
    local truefinal
    for i,v in pairs(truenums)do
        if final>v then
            final=v
            truefinal=i
        end
    end
    return(damage[truefinal])
end
local mt=getrawmetatable(game)
local oldNamecall=mt.__namecall
setreadonly(mt,false)
mt.__namecall=newcclosure(function(a,b,c,d,e,...)
    local method=getnamecallmethod()
    if tostring(method)=="FireServer"then
        if tostring(a)=="HitPart"then
            if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then--if the player has a gun then do function
                local Partpos=b.Position+Vector3.new(math.random(),math.random(),math.random())
                local Packedstring=string.pack(
                    hitparter,
                    Partpos.X,
                    Partpos.Y,
                    Partpos.Z,
                    unpack(finddamage(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value.DMG.Value))--get gun damage
                )
                return oldNamecall(a,b,Packedstring)
            end
        end
    end
    return oldNamecall(a,b,c,d,e,...)
end)
end)
ServerW:Button('FE Invisible (Press then press go invisable then clsoe the gui)',function()
-- Objects

local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local SubFrame = Instance.new("Frame")
local AirTP = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local BoolToggle = Instance.new("TextButton")
local AutoRun = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local BoolToggle_2 = Instance.new("TextButton")
local Keybind = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local CurrentBind = Instance.new("TextBox")
local QuickInvis = Instance.new("TextButton")
local Rigtype = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

-- Properties

GUI.Name = "GUI"
GUI.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = GUI
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderSizePixel = 0
Main.Draggable = true
Main.Position = UDim2.new(0.318181813, 0, 0.312252969, 0)
Main.Size = UDim2.new(0.363636374, 0, 0.375494063, 0)

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.new(0, 0, 0)
Topbar.BackgroundTransparency = 0.9990000128746
Topbar.Size = UDim2.new(1, 0, 0.163157895, 0)

Title.Name = "Title"
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BackgroundTransparency = 0.9990000128746
Title.Size = UDim2.new(0.784722209, 0, 1, 0)
Title.Font = Enum.Font.SciFi
Title.FontSize = Enum.FontSize.Size14
Title.Text = "FE Invisible By Timeless"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = Topbar
Exit.BackgroundColor3 = Color3.new(0, 0, 0)
Exit.BackgroundTransparency = 0.9990000128746
Exit.Position = UDim2.new(0.892361104, 0, 0, 0)
Exit.Size = UDim2.new(0.107638888, 0, 1, 0)
Exit.Font = Enum.Font.SciFi
Exit.FontSize = Enum.FontSize.Size14
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 14

Minimize.Name = "Minimize"
Minimize.Parent = Topbar
Minimize.BackgroundColor3 = Color3.new(0, 0, 0)
Minimize.BackgroundTransparency = 0.9990000128746
Minimize.Position = UDim2.new(0.784722209, 0, 0, 0)
Minimize.Size = UDim2.new(0.107638888, 0, 1, 0)
Minimize.Font = Enum.Font.SciFi
Minimize.FontSize = Enum.FontSize.Size14
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 14

SubFrame.Name = "SubFrame"
SubFrame.Parent = Main
SubFrame.BackgroundColor3 = Color3.new(0, 0, 0)
SubFrame.BackgroundTransparency = 0.5
SubFrame.BorderSizePixel = 0
SubFrame.Position = UDim2.new(0, 0, 0.163157895, 0)
SubFrame.Size = UDim2.new(1, 0, 0.83684212, 0)

AirTP.Name = "AirTP"
AirTP.Parent = SubFrame
AirTP.BackgroundColor3 = Color3.new(0, 0, 0)
AirTP.BackgroundTransparency = 0.9990000128746
AirTP.BorderSizePixel = 0
AirTP.Position = UDim2.new(0, 0, 0.0628930852, 0)
AirTP.Size = UDim2.new(1, 0, 0.176100627, 0)

TextLabel.Parent = AirTP
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.9990000128746
TextLabel.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel.Font = Enum.Font.SciFi
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Air TP"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = AirTP
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 0.9990000128746
TextLabel_2.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "-"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14

BoolToggle.Name = "BoolToggle"
BoolToggle.Parent = AirTP
BoolToggle.BackgroundColor3 = Color3.new(0.207843, 1, 0.392157)
BoolToggle.BackgroundTransparency = 0.5
BoolToggle.BorderSizePixel = 0
BoolToggle.Position = UDim2.new(0.784722209, 0, 0, 0)
BoolToggle.Size = UDim2.new(0.215277776, 0, 1, 0)
BoolToggle.Font = Enum.Font.SciFi
BoolToggle.FontSize = Enum.FontSize.Size14
BoolToggle.Text = "true"
BoolToggle.TextColor3 = Color3.new(1, 1, 1)
BoolToggle.TextSize = 14

AutoRun.Name = "AutoRun"
AutoRun.Parent = SubFrame
AutoRun.BackgroundColor3 = Color3.new(0, 0, 0)
AutoRun.BackgroundTransparency = 0.9990000128746
AutoRun.Position = UDim2.new(0, 0, 0.238993704, 0)
AutoRun.Size = UDim2.new(1, 0, 0.176100627, 0)

TextLabel_3.Parent = AutoRun
TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_3.BackgroundTransparency = 0.9990000128746
TextLabel_3.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SciFi
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "Auto Run"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = AutoRun
TextLabel_4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_4.BackgroundTransparency = 0.9990000128746
TextLabel_4.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SciFi
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "-"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 14

BoolToggle_2.Name = "BoolToggle"
BoolToggle_2.Parent = AutoRun
BoolToggle_2.BackgroundColor3 = Color3.new(0.207843, 1, 0.392157)
BoolToggle_2.BackgroundTransparency = 0.5
BoolToggle_2.BorderSizePixel = 0
BoolToggle_2.Position = UDim2.new(0.784722209, 0, 0, 0)
BoolToggle_2.Size = UDim2.new(0.215277776, 0, 1, 0)
BoolToggle_2.Font = Enum.Font.SciFi
BoolToggle_2.FontSize = Enum.FontSize.Size14
BoolToggle_2.Text = "true"
BoolToggle_2.TextColor3 = Color3.new(1, 1, 1)
BoolToggle_2.TextSize = 14

Keybind.Name = "Keybind"
Keybind.Parent = SubFrame
Keybind.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind.BackgroundTransparency = 0.9990000128746
Keybind.Position = UDim2.new(0, 0, 0.415094346, 0)
Keybind.Size = UDim2.new(1, 0, 0.176100627, 0)

TextLabel_5.Parent = Keybind
TextLabel_5.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_5.BackgroundTransparency = 0.9990000128746
TextLabel_5.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SciFi
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "Keybind"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 14
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_6.Parent = Keybind
TextLabel_6.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_6.BackgroundTransparency = 0.9990000128746
TextLabel_6.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_6.Font = Enum.Font.SciFi
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = "-"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextSize = 14

CurrentBind.Name = "CurrentBind"
CurrentBind.Parent = Keybind
CurrentBind.BackgroundColor3 = Color3.new(0.262745, 0.964706, 1)
CurrentBind.BackgroundTransparency = 0.5
CurrentBind.BorderSizePixel = 0
CurrentBind.Position = UDim2.new(0.784722209, 0, 0, 0)
CurrentBind.Size = UDim2.new(0.215277776, 0, 1, 0)
CurrentBind.Font = Enum.Font.SciFi
CurrentBind.FontSize = Enum.FontSize.Size14
CurrentBind.Text = "i"
CurrentBind.TextColor3 = Color3.new(1, 1, 1)
CurrentBind.TextSize = 14

QuickInvis.Name = "QuickInvis"
QuickInvis.Parent = SubFrame
QuickInvis.BackgroundColor3 = Color3.new(1, 0.227451, 0.227451)
QuickInvis.BackgroundTransparency = 0.5
QuickInvis.BorderSizePixel = 0
QuickInvis.Position = UDim2.new(0, 0, 0.823899388, 0)
QuickInvis.Size = UDim2.new(1, 0, 0.176100627, 0)
QuickInvis.Font = Enum.Font.SciFi
QuickInvis.FontSize = Enum.FontSize.Size14
QuickInvis.Text = "Go Invisible"
QuickInvis.TextColor3 = Color3.new(1, 1, 1)
QuickInvis.TextSize = 14

Rigtype.Name = "Rigtype"
Rigtype.Parent = SubFrame
Rigtype.BackgroundColor3 = Color3.new(0, 0, 0)
Rigtype.BackgroundTransparency = 0.69999998807907
Rigtype.BorderSizePixel = 0
Rigtype.Position = UDim2.new(0, 0, 0.647798777, 0)
Rigtype.Size = UDim2.new(1, 0, 0.176100627, 0)
Rigtype.Font = Enum.Font.SciFi
Rigtype.FontSize = Enum.FontSize.Size14
Rigtype.Text = "Your Rigtype - RigTypeHere"
Rigtype.TextColor3 = Color3.new(1, 1, 1)
Rigtype.TextSize = 14

TextButton.Parent = GUI
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 0.5
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0265151523, 0, 0.865612626, 0)
TextButton.Size = UDim2.new(0.0606060624, 0, 0.0948616564, 0)
TextButton.Font = Enum.Font.SciFi
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 14

local Player   = game:GetService('Players').LocalPlayer
local Mouse    = Player:GetMouse()

local AutoRun  = true
local AirTP    = true
local Keybind  = 'i'

local Green    = Color3.fromRGB(53, 255, 100)
local Red      = Color3.fromRGB(255, 58, 58)

local function CheckRig()
   if Player.Character then
       local Humanoid = Player.Character:WaitForChild('Humanoid')
       if Humanoid.RigType == Enum.HumanoidRigType.R15 then
           return 'R15'
       else
           return 'R6'
       end
   end
end

local function InitiateInvis()
   local Character = Player.Character
   local StoredCF = Character.PrimaryPart.CFrame
   if AirTP then
       local Part = Instance.new('Part',workspace)
       Part.Size = Vector3.new(5,0,5)
       Part.Anchored = true
       Part.CFrame = CFrame.new(Vector3.new(9999,9999,9999))
       Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,3,0)
       spawn(function()
           wait(3)
           Part:Destroy()
       end)
   end
   if CheckRig() == 'R6' then
       local Clone = Character.HumanoidRootPart:Clone()
       Character.HumanoidRootPart:Destroy()
       Clone.Parent = Character
   else
       local Clone = Character.LowerTorso.Root:Clone()
       Character.LowerTorso.Root:Destroy()
       Clone.Parent = Character.LowerTorso
   end
   if AirTP then
       wait(1)
       Character.PrimaryPart.CFrame = StoredCF
   end
end

local function OnCharacterAdded()
   SubFrame.Rigtype.Text = ('Your Rigtype - %s'):format(CheckRig())
   if AutoRun then
       InitiateInvis()
   end
end

local function OnButtonPress(Button)
   if Button == Keybind:lower() then
       InitiateInvis()
   end
end

local function OnGoInvisPress()
   InitiateInvis()
end

local function OnKeyBindTextChange()
   local cb = SubFrame.Keybind.CurrentBind
   if cb.Text:match('%w') then
       Keybind = cb.Text:match('%w'):lower()
       cb.Text = Keybind
   elseif cb.Text ~= '' then
       Keybind = 'i'
       cb.Text = Keybind
   end
   print(Keybind)
end

local function OnAutoRunPress()
   local Ar = SubFrame.AutoRun.BoolToggle
   if AutoRun then
       Ar.BackgroundColor3 = Red
       Ar.Text = tostring(not AutoRun)
       AutoRun = false
   else
       Ar.BackgroundColor3 = Green
       Ar.Text = tostring(not AutoRun)
       AutoRun = true
   end
end

local function OnAirTPPress()
   local ATP = SubFrame.AirTP.BoolToggle
   if AirTP then
       ATP.BackgroundColor3 = Red
       ATP.Text = tostring(false)
       AirTP = false
   else
       ATP.BackgroundColor3 = Green
       ATP.Text = tostring(true)
       AirTP = true
   end
end

local function OnMinimizePress()
   Main.Visible = false
   GUI.TextButton.Visible = true
end

local function OnOpenPress()
   Main.Visible = true
   GUI.TextButton.Visible = false
end

local function OnClosePress()
   GUI:Destroy()
end

SubFrame.Keybind.CurrentBind:GetPropertyChangedSignal('Text'):connect(OnKeyBindTextChange)
Mouse.KeyDown:connect(OnButtonPress)
SubFrame.AutoRun.BoolToggle.MouseButton1Down:connect(OnAutoRunPress)
SubFrame.AirTP.BoolToggle.MouseButton1Down:connect(OnAirTPPress)
Main.Topbar.Minimize.MouseButton1Down:connect(OnMinimizePress)
GUI.TextButton.MouseButton1Down:connect(OnOpenPress)
Main.Topbar.Exit.MouseButton1Down:connect(OnClosePress)
SubFrame.QuickInvis.MouseButton1Down:connect(OnGoInvisPress)
Player.CharacterAdded:connect(OnCharacterAdded)

SubFrame.Rigtype.Text = ('Your Rigtype - %s'):format(CheckRig())
end)

local Config = {
    Visuals = {
        BoxEsp = false,
        TracerEsp = false,
        TracersOrigin = "Bottom", 
        NameEsp = false,
        DistanceEsp = false,
        SkeletonEsp = false,
        EnemyColor = Color3.fromRGB(255, 0, 0),
        TeamColor = Color3.fromRGB(0, 255, 0),
        MurdererColor = Color3.fromRGB(255, 0, 0)
    }
}

local Funcs = {}
function Funcs:IsAlive(player)
    if player and player.Character and player.Character:FindFirstChild("Head") and
            workspace:FindFirstChild(player.Character.Name)
     then
        return true
    end
end

function Funcs:Round(number)
    return math.floor(tonumber(number) + 0.5)
end

function Funcs:DrawSquare()
    local Box = Drawing.new("Square")
    Box.Color = Color3.fromRGB(190, 190, 0)
    Box.Thickness = 1.4
    Box.Filled = false
    Box.Transparency = 1
    return Box
end

function Funcs:DrawLine()
    local line = Drawing.new("Line")
    line.Color = Color3.new(190, 190, 0)
    line.Thickness = 1.5
    return line
end

function Funcs:DrawText()
    local text = Drawing.new("Text")
    text.Color = Color3.fromRGB(190, 190, 0)
    text.Size = 19
    text.Outline = true
    text.Center = true
    return text
end

local Services =
    setmetatable(
    {
        LocalPlayer = game:GetService("Players").LocalPlayer,
        Camera = workspace.CurrentCamera
    },
    {
        __index = function(self, idx)
            return rawget(self, idx) or game:GetService(idx)
        end
    }
)

function Funcs:AddEsp(player)
    local Box = Funcs:DrawSquare()
    local Tracer = Funcs:DrawLine()
    local Name = Funcs:DrawText()
    local Distance = Funcs:DrawText()
    local SnapLines = Funcs:DrawLine()
    local HeadLowerTorso = Funcs:DrawLine()
    local NeckLeftUpper = Funcs:DrawLine()
    local LeftUpperLeftLower = Funcs:DrawLine()
    local NeckRightUpper = Funcs:DrawLine()
    local RightUpperLeftLower = Funcs:DrawLine()
    local LowerTorsoLeftUpper = Funcs:DrawLine()
    local LeftLowerLeftUpper = Funcs:DrawLine()
    local LowerTorsoRightUpper = Funcs:DrawLine()
    local RightLowerRightUpper = Funcs:DrawLine()
    Services.RunService.Stepped:Connect(
        function()
            if Funcs:IsAlive(player) and player.Character:FindFirstChild("HumanoidRootPart") then
                local RootPosition, OnScreen =
                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                local HeadPosition =
                    Services.Camera:WorldToViewportPoint(player.Character.Head.Position + Vector3.new(0, 0.5, 0))
                local LegPosition =
                    Services.Camera:WorldToViewportPoint(
                    player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
                )
                if Config.Visuals.BoxEsp then
                    Box.Visible = OnScreen
                    Box.Size = Vector2.new((2350 / RootPosition.Z) + 2.5, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new((RootPosition.X - Box.Size.X / 2) - 1, RootPosition.Y - Box.Size.Y / 2)
                else
                    Box.Visible = false
                end
                if Config.Visuals.TracerEsp then
                    Tracer.Visible = OnScreen
                    if Config.Visuals.TracersOrigin == "Top" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 0)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2
                        )
                    elseif Config.Visuals.TracersOrigin == "Middle" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, Services.Camera.ViewportSize.Y / 2)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                ((HeadPosition.Y - LegPosition.Y) / 2)
                        )
                    elseif Config.Visuals.TracersOrigin == "Bottom" then
                        Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 1000)
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            RootPosition.Y - (HeadPosition.Y - LegPosition.Y) / 2
                        )
                    elseif Config.Visuals.TracersOrigin == "Mouse" then
                        Tracer.To = game:GetService("UserInputService"):GetMouseLocation()
                        Tracer.From =
                            Vector2.new(
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                            (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                ((HeadPosition.Y - LegPosition.Y) / 2)
                        )
                    end
                else
                    Tracer.Visible = false
                end
                if Config.Visuals.NameEsp then
                    Name.Visible = OnScreen
                    Name.Position =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 40
                    )
                    Name.Text = "[ " .. player.Name .. " ]"
                else
                    Name.Visible = false
                end
                if Config.Visuals.DistanceEsp and player.Character:FindFirstChild("Head") then
                    Distance.Visible = OnScreen
                    Distance.Position =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 25
                    )
                    Distance.Text =
                        "[ " ..
                        Funcs:Round(
                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                player.Character.Head.Position).Magnitude
                        ) ..
                            " Studs ]"
                else
                    Distance.Visible = false
                end
                if Config.Visuals.SkeletonEsp then
                    HeadLowerTorso.Visible = OnScreen
                    HeadLowerTorso.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y
                    )
                    HeadLowerTorso.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    NeckLeftUpper.Visible = OnScreen
                    NeckLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                            ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                3)
                    )
                    NeckLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                    )
                    LeftUpperLeftLower.Visible = OnScreen
                    LeftUpperLeftLower.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).Y
                    )
                    LeftUpperLeftLower.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                    )
                    NeckRightUpper.Visible = OnScreen
                    NeckRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                            ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                3)
                    )
                    NeckRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                    )
                    RightUpperLeftLower.Visible = OnScreen
                    RightUpperLeftLower.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).Y
                    )
                    RightUpperLeftLower.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                    )
                    LowerTorsoLeftUpper.Visible = OnScreen
                    LowerTorsoLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    LowerTorsoLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                    )
                    LeftLowerLeftUpper.Visible = OnScreen
                    LeftLowerLeftUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).Y
                    )
                    LeftLowerLeftUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                    )
                    LowerTorsoRightUpper.Visible = OnScreen
                    LowerTorsoRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).Y
                    )
                    LowerTorsoRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                    )
                    RightLowerRightUpper.Visible = OnScreen
                    RightLowerRightUpper.From =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                    )
                    RightLowerRightUpper.To =
                        Vector2.new(
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                        Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                    )
                else
                    HeadLowerTorso.Visible = false
                    NeckLeftUpper.Visible = false
                    LeftUpperLeftLower.Visible = false
                    NeckRightUpper.Visible = false
                    RightUpperLeftLower.Visible = false
                    LowerTorsoLeftUpper.Visible = false
                    LeftLowerLeftUpper.Visible = false
                    LowerTorsoRightUpper.Visible = false
                    RightLowerRightUpper.Visible = false
                end
                if game.Players.LocalPlayer.TeamColor ~= player.TeamColor then
                    Box.Color = Config.Visuals.EnemyColor
                    Tracer.Color = Config.Visuals.EnemyColor
                    Name.Color = Config.Visuals.EnemyColor
                    Distance.Color = Config.Visuals.EnemyColor
                    HeadLowerTorso.Color = Config.Visuals.EnemyColor
                    NeckLeftUpper.Color = Config.Visuals.EnemyColor
                    LeftUpperLeftLower.Color = Config.Visuals.EnemyColor
                    NeckRightUpper.Color = Config.Visuals.EnemyColor
                    RightUpperLeftLower.Color = Config.Visuals.EnemyColor
                    LowerTorsoLeftUpper.Color = Config.Visuals.EnemyColor
                    LeftLowerLeftUpper.Color = Config.Visuals.EnemyColor
                    LowerTorsoRightUpper.Color = Config.Visuals.EnemyColor
                    RightLowerRightUpper.Color = Config.Visuals.EnemyColor
                else
                    Box.Color = Config.Visuals.TeamColor
                    Tracer.Color = Config.Visuals.TeamColor
                    Name.Color = Config.Visuals.TeamColor
                    Distance.Color = Config.Visuals.TeamColor
                    HeadLowerTorso.Color = Config.Visuals.TeamColor
                    NeckLeftUpper.Color = Config.Visuals.TeamColor
                    LeftUpperLeftLower.Color = Config.Visuals.TeamColor
                    NeckRightUpper.Color = Config.Visuals.TeamColor
                    RightUpperLeftLower.Color = Config.Visuals.TeamColor
                    LowerTorsoLeftUpper.Color = Config.Visuals.TeamColor
                    LeftLowerLeftUpper.Color = Config.Visuals.TeamColor
                    LowerTorsoRightUpper.Color = Config.Visuals.TeamColor
                    RightLowerRightUpper.Color = Config.Visuals.TeamColor
                end
            else
                Box.Visible = false
                Tracer.Visible = false
                Name.Visible = false
                Distance.Visible = false
                HeadLowerTorso.Visible = false
                NeckLeftUpper.Visible = false
                LeftUpperLeftLower.Visible = false
                NeckRightUpper.Visible = false
                RightUpperLeftLower.Visible = false
                LowerTorsoLeftUpper.Visible = false
                LeftLowerLeftUpper.Visible = false
                LowerTorsoRightUpper.Visible = false
                RightLowerRightUpper.Visible = false
            end
        end
    )
end

for i, v in pairs(Services.Players:GetPlayers()) do
    if v ~= Services.LocalPlayer then
        Funcs:AddEsp(v)
    end
end

Services.Players.PlayerAdded:Connect(
    function(player)
        if v ~= Services.LocalPlayer then
            Funcs:AddEsp(player)
        end
    end
)

VisualsW:Button('Rainbow Gun',function()
local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
end)
VisualsW:Button('Banana ESP',function()
    while true do
    wait(4)
for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
    if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'Banana' then -- checks if it has a handle and if its a touchtransmitter
        local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
        local TextLabel = Instance.new('TextLabel') -- makes text label
        
        BillboardGui.Parent = v.Parent -- what the billboardgui goes into
        BillboardGui.AlwaysOnTop = true -- if its on top or not
        BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
        TextLabel.BackgroundTransparency = 1 -- transparency
        TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
        TextLabel.Text = "🍌" -- what the label says
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
        TextLabel.TextScaled = false -- if the text is scaled or not
    end
end
end
end)
VisualsW:Button('Ammo Box ESP',function()
while true do
    wait(4)
for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
    if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'DeadAmmo' then -- checks if it has a handle and if its a touchtransmitter
        local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
        local TextLabel = Instance.new('TextLabel') -- makes text label
        
        BillboardGui.Parent = v.Parent -- what the billboardgui goes into
        BillboardGui.AlwaysOnTop = true -- if its on top or not
        BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
        TextLabel.BackgroundTransparency = 1 -- transparency
        TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
        TextLabel.Text = "Ammo Box" -- what the label says
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
        TextLabel.TextScaled = false -- if the text is scaled or not
    end
end
end
end)
VisualsW:Button('HP Jug ESP',function()
    while true do
    wait(4)
for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
    if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'DeadHP' then -- checks if it has a handle and if its a touchtransmitter
        local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
        local TextLabel = Instance.new('TextLabel') -- makes text label
        
        BillboardGui.Parent = v.Parent -- what the billboardgui goes into
        BillboardGui.AlwaysOnTop = true -- if its on top or not
        BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
        TextLabel.BackgroundTransparency = 1 -- transparency
        TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
        TextLabel.Text = "HP Jar" -- what the label says
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
        TextLabel.TextScaled = false -- if the text is scaled or not
    end
end
end
end)

VisualsW:Toggle('Box ESP',function(state)
    Config.Visuals.BoxEsp = state
end)

VisualsW:Toggle('Line ESP',function(state)
    Config.Visuals.TracerEsp = state
end)
VisualsW:Dropdown(
  "Lines Origin", {'Top','Middle','Bottom','Mouse'}, function(selected)
    Config.Visuals.TracersOrigin = selected
end)
VisualsW:Toggle('Name ESP',function(state)
    Config.Visuals.NameEsp = state
end)
VisualsW:Toggle('Distance ESP',function(state)
    Config.Visuals.DistanceEsp = state
end)
VisualsW:Toggle('Skeletons ESP',function(state)
    Config.Visuals.SkeletonEsp = state
end)
VisualsW:Colorpicker(
	"Team Color",
	Color3.fromRGB(0, 255, 0),
	function(Color)
		Config.Visuals.TeamColor = Color
	end
)
VisualsW:Colorpicker(
	"Enemy Color",
	Color3.fromRGB(255, 0, 0),
	function(Color)
		Config.Visuals.EnemyColor = Color
	end
)


FarmingW:Slider('FOV Slider',30,120,function(num)
    game:GetService("Players").LocalPlayer.Settings.FOV.Value = num

end)
FarmingW:Button('Mask Usernames ON',function()
    game:GetService("Players").AutofarmingRainster.Settings.MaskUsernames.Value = true
    end)
FarmingW:Button('Mask Usernames OFF',function()
    game:GetService("Players").AutofarmingRainster.Settings.MaskUsernames.Value = false
    end)

FarmingW:Button('No Textures ON',function()
    game:GetService("Players").AutofarmingRainster.Settings.NoTextures.Value = true
end)
FarmingW:Button('No Textures OFF (Only Works Next Round)',function()
    game:GetService("Players").AutofarmingRainster.Settings.NoTextures.Value = false
end)
FarmingW:Button('AutoReload On',function()
    game:GetService("Players").AutofarmingRainster.Settings.AutoReload.Value = true
end)
FarmingW:Button('AutoReload OFF',function()
    game:GetService("Players").AutofarmingRainster.Settings.AutoReload.Value = false
    end)
MiscW:Button('Click To Copy Discord Invite',function()
setclipboard("discord.gg/CQz5CQKv89")
end)
MiscW:Label('Bolts Hub v5 - Arsenal')
MiscW:Label('RightShift To Toggle The Gui :D')
MiscW:Label('discord.gg/CQz5CQKv89')
MiscW:Label('Bolts#9999 - Owner')
MiscW:Label('Bolts#9999 Bug Fixing')
MiscW:Label('Dark Hub Devs For UI Lib')
