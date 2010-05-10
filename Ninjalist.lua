Ninjalist = LibStub("AceAddon-3.0"):NewAddon("Ninjalist", "AceEvent-3.0", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Ninjalist", true)
local ninjas = {}
local tinsert = table.insert
local tremove = table.remove


function Ninjalist:OnInitialize()
  -- Assuming the .toc says ## SavedVariables: MyAddonDB
  self:Print("Ninjalist: Initializing Ninjalist database")
  self.db = LibStub("AceDB-3.0"):New("NinjalistDB")
  
  -- Hook into events
  self:Print("Ninjalist: Initializing hooks for raid/party changes")
  self:RegisterEvent("PARTY_MEMBERS_CHANGED","Scan")
  self:RegisterEvent("RAID_ROSTER_UPDATE","Scan")
end

function Ninjalist:List() 
  if not self.db then 
    return
  end
  
  
  print("Ninjas Found: " .. table.getn(self.db.global))
  for i,v in ipairs(self.db.global) do 
    print("Ninja: "..v) 
  end
end

function Ninjalist:Scan()
  local NumRaidMembers = GetNumRaidMembers()
  local NumPartyMembers = GetNumPartyMembers()
  
  
   
  self.inGroup = false
  self.inRaid = false

  if NumPartyMembers > 0 and NumRaidMembers == 0 then Ninjalist.inGroup = true end
  if NumRaidMembers > 0 then Ninjalist.inRaid = true end
  
  --SendChatMessage("Ninjalist: scanning for ninjas in current party and raid...", "GUILD")
  if self.inRaid or self.inGroup then
    self:Print("Scanning for ninjas in current party and raid...")
  end
end


function Ninjalist:Add(name)
  if name == "" or name == nil then 
    return 
  end
  local serverName = GetRealmName()
  
  self:Print(serverName.."|"..name.."|"..date("%a %b %d %H:%M:%S %Y"))
  local data = serverName.."|"..name.."|"..date("%a %b %d %H:%M:%S %Y")
  --ninjas.insert()
  
  
  tinsert(self.db.global, data)
  --SendChatMessage("Ninjalist: Added ninja - "..name.." on  "..date("%a %b %d %H:%M:%S %Y"), "GUILD")
end