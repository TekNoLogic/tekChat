
for i=1,NUM_CHAT_WINDOWS do
	local eb = _G["ChatFrame"..i.."EditBox"]
	eb:ClearAllPoints()
	eb:SetPoint("TOPLEFT",  ChatFrame1, "TOPLEFT",  -5, 8)
	eb:SetPoint("TOPRIGHT", ChatFrame1, "TOPRIGHT", 5, 8)
	eb:SetAltArrowKeyMode(false)

	_G["ChatFrame"..i.."EditBoxLeft"]:Hide()
	_G["ChatFrame"..i.."EditBoxMid"]:Hide()
	_G["ChatFrame"..i.."EditBoxRight"]:Hide()
end
