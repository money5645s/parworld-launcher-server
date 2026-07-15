local serverIP = "naru.ancientwizard.net"
local serverPort = 25530
local serverPassword = "144244"

NotifyOnNewObject("/Script/Pal.PalUIJoinGameBase", function(JoinGame)
    local PalUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
    
    if serverPassword and serverPassword ~= "" then
        PalUtility:SetPassword(JoinGame, serverPassword)
    end
    
    JoinGame:ConnectServerByAddress(serverIP, serverPort)
    
    print("[AutoConnect] 서버에 자동 연결 시도: " .. serverIP)
end)