local GamesList = {

}
local Universal = ""
local PID = game.PlaceId

if not GamesList[PID] then
    loadstring(Universal)
else
    loadstring(GamesList[PID])
end