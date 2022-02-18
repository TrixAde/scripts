local URL = "https://solarishub.dev/games"

local games = {
    [286090429] = "Arsenal",
    [1782832995] = "AUT",
    [3233893879] = "Bad Business",
    [3527629287] = "Big Paintball",
    -- [6494523288] = "Blade Quest",
    -- [5490351219] = "Clicker Madness",
    [115797356] = "Counter Blox",
    [2788229376] = "Da Hood",
    [6172932937] = "Energy Assault",
    -- [] = "HH",
    [606849621] = "Jailbreak",
    [254394801] = "KAT",
    [6381829480] = "Kings Legacy SS",
    [142823291] = "Murder Mystery",
    [21532277] = "Notoriety",
    [292439477] = "Phantom Forces",
    [5041144419] = "SCP Roleplay",
    [1511883870] = "Shindo Life",
    [1962086868] = "TOH",
    [4520749081] = "Kings Legacy"
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(URL .. "/" .. (name or "Universal") .. ".lua", true))()
