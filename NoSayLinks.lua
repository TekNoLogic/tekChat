
GFY_WoW_ChatFrame_OnEvent = ChatFrame_OnEvent
ChatFrame_OnEvent = function(event)
	if event == "CHAT_MSG_SAY" and string.find(arg1, "^|c.+|Hitem.+|h.+|h|r$") then return end
	return GFY_WoW_ChatFrame_OnEvent(event)
end




