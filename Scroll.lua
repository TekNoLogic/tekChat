

local function scroller(frame, delta)
	if delta > 0 then
		if IsShiftKeyDown() then frame:ScrollToTop()
		else frame:ScrollUp() end
	elseif delta < 0 then
		if IsShiftKeyDown() then frame:ScrollToBottom()
		else frame:ScrollDown() end
	end
end


local _G = getfenv(0)
for i=1,NUM_CHAT_WINDOWS do
	local cf = _G["ChatFrame"..i]
	cf:EnableMouseWheel(true)
	cf:SetScript("OnMouseWheel", scroller)
end
