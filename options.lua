local Ninjalist = Ninjalist
local AceGUI = LibStub("AceGUI-3.0")
local LSM = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("Ninjalist", true)
LSM:Register("statusbar", "Minimalist", "Interface\\Addons\\Ninjalist\\images\\Minimalist")

local textStore

function Ninjalist:CreateFrame()
  --Create the UI
  self.frame = AceGUI:Create("Frame")
  self.frame:SetTitle("Ninjalist")
  self.frame:SetStatusText("Developed by Jaime Bueza")
  self.frame:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
  self.frame:SetLayout("Flow")
  self.frame:SetHeight(200)

  local editbox = AceGUI:Create("EditBox")
  editbox:SetLabel("Enter ninja name here:")
  editbox:SetWidth(200)
  editbox:SetHeight(50)
  editbox:SetCallback("OnEnterPressed", function(widget, event, text) textStore = text end)
  --editbox:HideButton(editbox)
  self.frame:AddChild(editbox)

  local btnAdd = AceGUI:Create("Button")
  btnAdd:SetText("Add Ninja")
  btnAdd:SetWidth(200)
  btnAdd:SetCallback("OnClick", function() Ninjalist:Add(textStore) end)
  self.frame:AddChild(btnAdd)
end

function Ninjalist:Toggle()
  if self.frame and self.frame:IsShown()  then
    self.frame:Hide()
  else
    if ( not self.frame ) then
      self:CreateFrame()
    end
    self.frame:Show()
  end
end

local function slashHandler(option)
  -- Mayhaps use Ace to handle slash command? It leaves something to be desired, methinks. -kremonted
  option = string.lower(option)
  
  if option == "add" then

    --SendChatMessage("Invoke: AddNinjaCommand(ninjaName)", "PARTY")
    Ninjalist:Print("Invoke: AddNinjaCommand(ninjaName)")  
  elseif option == "scan" then
    --self:ToggleFrame(1)
    Ninjalist:Print("Invoke: Scan(raidGroup)")
    Ninjalist:Scan()
    --SendChatMessage("Invoke: Scan(raidGroup)", "GUILD")
  else
    Ninjalist:Toggle()
  end
end


Ninjalist:RegisterChatCommand("ninjalist", slashHandler)