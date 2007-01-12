
local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(a1, ...)
	if event == "CHAT_MSG_SAY" and string.find(a1, "^|c.+|Hitem.+|h.+|h|r$") then return end
	return orig(a1, ...)
end




