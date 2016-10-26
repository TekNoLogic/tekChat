
ChatFrameMenuButton:Hide()
QuickJoinToastButton:Hide()

for i=1,NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i]:SetClampRectInsets(0,0,0,0)
	local f = _G["ChatFrame"..i.."ButtonFrame"]
	f:Hide()
	f.Show = f.Hide

	local tab = _G["ChatFrame"..i.."Tab"]
	tab.noMouseAlpha = 0
	tab:SetAlpha(0)
end
