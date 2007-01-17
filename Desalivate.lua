
local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, ...)
	if event == "CHAT_MSG_TEXT_EMOTE" and arg1 and string.find(arg1, "spit") then return end
	return orig(event, ...)
end

