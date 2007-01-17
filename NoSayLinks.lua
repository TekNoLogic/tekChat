
local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, ...)
	if event == "CHAT_MSG_SAY" and string.find(arg1, "^|c.+|Hitem.+|h.+|h|r$") then return end
	return orig(event, ...)
end




