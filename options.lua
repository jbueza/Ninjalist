local Ninjalist = Ninjalist
local self = Ninjalist
local LSM = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Ninjalist", true)
LSM:Register("statusbar", "Minimalist", "Interface\\Addons\\Ninjalist\\images\\Minimalist")




local function slashHandler(option)
  -- Mayhaps use Ace to handle slash command? It leaves something to be desired, methinks. -kremonted
  option = string.lower(option)
  
  if option == "add" then
    --Ninjalist:ShowOptions()
    SendChatMessage("Command: Add ninja", "GUILD")
  elseif option == "search" then
    --self:ToggleFrame(1)
    SendChatMessage("Command: Search", "GUILD")
  else
    SendChatMessage("Valid slash commands are:", "GUILD")
    
    SendChatMessage("/ninjalist add name", "GUILD")
    
    SendChatMessage("/ninjalist scan", "GUILD")
    
--    self:Print("Valid slash commands are:")
  --  self:Print("/ninjalist add name")
  --  self:Print("/ninjalist scan")
  end
end


self:RegisterChatCommand("ninjalist", slashHandler)