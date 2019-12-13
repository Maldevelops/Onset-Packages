--[[
Steam Whitelist
by Maldevs.com

If your looking to have a whitelisted server
and not worry about a password being leaked
this is the best way to go! Thanks for downloading!
]]

-- [CONFIGURATION] -- [CONFIGURATION] -- [CONFIGURATION] --

--[[
WhitelistedIDs - Table Config

Must be the 64bit version of the SteamID.

]]
local WhitelistedIDs = {
	"76561198182303579", -- My ID you can remove just here for example
	"76561198182303579" 
}


local KickMsg = "Not Whitelisted! Apply @ www.example.com."


-- End of configuration, do not touch below!



function WhitelistAuth(player)

	table.ForEach(WhitelistedIDs, function(k, v)
		if GetPlayerSteamId(player) == v then
			print(GetPlayerName(player).." is whitelisted! Opening gate.")
		else
			print(GetPlayerName(player).." is not whitelisted! SECURITY!")
			KickPlayer(player, KickMsg)
		end
	end)
	
end


AddEvent("OnPlayerSteamAuth", WhitelistAuth)