
local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, a1, ...)
	if event == "CHAT_MSG_SAY" and string.find(a1, "^|c.+|Hitem.+|h.+|h|r$") then return end
	return orig(event, a1, ...)
end




