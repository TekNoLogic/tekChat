
local oldOnEvent = ChatFrame_OnEvent

ChatFrame_OnEvent = function (event)
	if event == "CHAT_MSG_TEXT_EMOTE" and arg1 and string.find(arg1, "spit") then return end
	return oldOnEvent(event)
end

