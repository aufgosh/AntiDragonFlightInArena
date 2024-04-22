local function OnEvent(self, event, ...)
	local mapID = C_Map.GetBestMapForUnit("player")
	if
	GetZoneText() == "Ruins of Lordaeron" or GetZoneText() == "Nokhudon Proving Grounds" or GetZoneText() == "Dalaran Arena" or GetZoneText() == "Tol'Viron Arena" or GetZoneText() == "Tiger's Peak" or
	GetZoneText() == "Ashamane's Fall" or GetZoneText() == "Black Rock Hold Arena" or GetZoneText() == "Hook Point" or GetZoneText() == "The Mugambala" or GetZoneText() == "The Robodrome" or
	GetZoneText() == "Empyrean Domain" or GetZoneText() == "Maldraxxus Coliseum" or GetZoneText() == "Enigma Crucible" or GetZoneText() == "Blade's Edge Arena" or
	 then
	UIWidgetPowerBarContainerFrame:Hide()
	else
	UIWidgetPowerBarContainerFrame:Show()
	  end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:SetScript("OnEvent", OnEvent)