
local oldOnEvent = ChatFrame_MessageEventHandler
local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, a1, ...)
	if event == "CHAT_MSG_TEXT_EMOTE" and a1 and string.find(a1, "spit") then return end
	return orig(event, a1, ...)
end

