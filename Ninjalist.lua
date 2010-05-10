Ninjalist = LibStub("AceAddon-3.0"):NewAddon("Ninjalist", "AceEvent-3.0", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Ninjalist", true)
local ninjas = {}


function Ninjalist:initialize() 
  self:Print("Ninjalist: Initializing Ninjalist")
  Ninjalist:RegisterEvent("PARTY_MEMBERS_CHANGED","Scan")
	Ninjalist:RegisterEvent("RAID_ROSTER_UPDATE","Scan")
end

function Ninjalist:Scan()
  local NumRaidMembers = GetNumRaidMembers()
	local NumPartyMembers = GetNumPartyMembers()
	
	
	Ninjalist.inGroup = false
	Ninjalist.inRaid = false

	if NumPartyMembers > 0 and NumRaidMembers == 0 then Recount.inGroup = true end
	if NumRaidMembers > 0 then Recount.inRaid = true end
	
	SendChatMessage("Ninjalist: scanning for ninjas in current party and raid...", "PARTY")
  --self:Print("Ninjalist: Finished scanning" .. NumPartyMembers)
  
	
end





Ninjalist:initialize()