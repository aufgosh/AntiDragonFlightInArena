local function OnEvent(self, event, ...)
	local mapID = C_Map.GetBestMapForUnit("player")
	if
	GetZoneText() == "Ruins of Lordaeron" or GetZoneText() == "Nokhudon Proving Grounds" or GetZoneText() == "Dalaran Arena" or GetZoneText() == "Tol'viron Arena" or GetZoneText() == "The Tiger's Peak" or
	GetZoneText() == "Ashamane's Fall" or GetZoneText() == "Black Rook Hold Arena" or GetZoneText() == "Hook Point" or GetZoneText() == "Mugambala" or GetZoneText() == "The Robodrome" or
	GetZoneText() == "Empyrean Domain" or GetZoneText() == "Maldraxxus Coliseum" or GetZoneText() == "Enigma Crucible" or GetZoneText() == "Blade's Edge Arena" or GetZoneText() == "Nagrand Arena"
	then
	UIWidgetPowerBarContainerFrame:Hide()
	else
	UIWidgetPowerBarContainerFrame:Show()
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:SetScript("OnEvent", OnEvent)