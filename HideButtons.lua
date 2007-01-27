
local function emptyfunc() end
local buttons = {"UpButton", "DownButton", "BottomButton"}
local _G = getfenv(0)

ChatFrameMenuButton:Hide()

for i=1,NUM_CHAT_WINDOWS do
	for _,j in pairs(buttons) do
		local f = _G["ChatFrame"..i..j]
		if f == nil then ChatFrame1:AddMessage("WTF???  ChatFrame"..i..j) end
		f:Hide()
		f.Show = emptyfunc
	end
end
