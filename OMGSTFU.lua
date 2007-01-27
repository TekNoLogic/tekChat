local types = {
	["CHAT_MSG_SAY"] = true,
	["CHAT_MSG_YELL"] = true,
	["CHAT_MSG_EMOTE"] = true,
	["CHAT_MSG_TEXT_EMOTE"] = true,
	["CHAT_MSG_CHANNEL"] = true,
}

local linehist = {}
local history = 10

local orig = ChatFrame_MessageEventHandler
ChatFrame_MessageEventHandler = function(event, ...)
	if types[event] and arg1 and arg2 then
		local frame = this
		if not linehist[frame] then linehist[frame] = {} end
		local val = string.lower(arg1 .. arg2)
		local t = linehist[frame]

		if t[val] then return end

		if #t == history then
			local rem = table.remove(t, 1)
			t[rem] = nil
		end
		table.insert(t, val)
		t[val] = true
	end

	return orig(event, ...)
end
