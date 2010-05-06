local Ninjalist = Ninjalist
local self = Ninjalist
local LSM = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Ninjalist", true)
LSM:Register("statusbar", "Minimalist", "Interface\\Addons\\Ninjalist\\images\\Minimalist")




local function slashHandler(option)
  -- Mayhaps use Ace to handle slash command? It leaves something to be desired, methinks. -kremonted
  option = string.lower(option)
  
  if option == "add" then
    --Gladius:ShowOptions()
    SendChatMessage("Command: Add ninja", "SAY")
  elseif option == "search" then
    --self:ToggleFrame(1)
    SendChatMessage("Command: Search". "SAY")
  else
    self:Print(L["Valid slash commands are:"])
    self:Print(L["/ninjalist add <name>"])
    self:Print(L["/ninjalist search"])
  end
end