--Blox Fruit Gui2
getgenv().SettingTheme = {
    Tab = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
    Button = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
}
if getgenv().SettingTheme == nil then
	getgenv().SettingTheme = {
    Tab = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
    Button = {
        Left_Color = Color3.fromRGB(203 ,156, 255),
        Right_Color = Color3.fromRGB(140, 166 ,252)
    },
}
    else
local Hub = {
     [5780309044] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/StandAweaken.lua",
   },
     [6461766546] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/AHeroDestiney.lua",
   },
     [1499872953] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/BokuNo.lua",
   },
     [2753915549] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/BloxFruit.lua",
   },
      [4442272183] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/BloxFruit.lua",
   },
      [6110371797] = {
        [1] = "http://skyhubking.xyz/script/free_script/SKYHUB/ProjectNewWorld.lua",
   }, 
      [6688650002] = {
	[1] = "http://skyhubking.xyz/script/free_script/SKYHUB/RojutsuBlox.lua"
   },
      [3400631762] = {
	[1] = "http://skyhubking.xyz/script/free_script/SKYHUB/JoJoBlox.lua"
   },
      [4313854107] = {
	[1] = "http://skyhubking.xyz/script/free_script/SKYHUB/JoJoBlox.lua"
   },
      [4587545091] = {
	[1] = "http://skyhubking.xyz/script/free_script/SKYHUB/VietNamPiece.lua"
   },
      [7148407314] = {
	[1] = "http://skyhubking.xyz/script/free_script/SKYHUB/MagicSea.lua"
   },
}

for i,v in pairs(Hub) do
    if i == game.PlaceId then
        print("CheckScript")
           loadstring(game:HttpGet(v[1]))()
        else
        
        end
    end
end
