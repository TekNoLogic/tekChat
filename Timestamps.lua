
local _G = getfenv(0)
local orig = {}

local function hook(frame, text, ...)
	orig[frame](frame, string.format("[%s] %s", date("%X"), text), ...)
end


for i=1,NUM_CHAT_WINDOWS do
	local f = _G["ChatFrame"..i]
	orig[f] = f.AddMessage
	f.AddMessage = hook
end

