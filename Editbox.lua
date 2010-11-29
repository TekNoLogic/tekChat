
local bg = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", insets = {left = 5, right = 5, top = 5, bottom = 5}, tile = true, tileSize = 16}

for i=1,NUM_CHAT_WINDOWS do
	local eb = _G["ChatFrame"..i.."EditBox"]
	eb:ClearAllPoints()
	eb:SetPoint("TOPLEFT",  ChatFrame1, "TOPLEFT",  -5, 8)
	eb:SetPoint("TOPRIGHT", ChatFrame1, "TOPRIGHT", 5, 8)
	eb:SetAltArrowKeyMode(false)

	eb:SetBackdrop(bg)
	eb:SetBackdropColor(0.09, 0.09, 0.19, 0.95)
	eb:SetBackdropBorderColor(0.5, 0.5, 0.5, 1)

	_G["ChatFrame"..i.."EditBoxLeft"]:Hide()
	_G["ChatFrame"..i.."EditBoxMid"]:Hide()
	_G["ChatFrame"..i.."EditBoxRight"]:Hide()
end
