local serverIP = "server.starj.kro.kr"
local serverPort = 4747
local serverPassword = "3291216"

NotifyOnNewObject("/Script/Pal.PalUIJoinGameBase", function(JoinGame)
    local PalUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
    
    if serverPassword and serverPassword ~= "" then
        PalUtility:SetPassword(JoinGame, serverPassword)
    end
    
    JoinGame:ConnectServerByAddress(serverIP, serverPort)
    
    print("[AutoConnect] 서버에 자동 연결 시도: " .. serverIP)
end)