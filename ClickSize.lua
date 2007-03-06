
--~ local cos = math.cos
--~ local pi = math.pi

--~ local movetime = 1
--~ local max = 250
--~ local elapsed, status, cf = {}, {}, {}
--~ local tabbase = {}
--~ local min = 75


--~ local function CosineInterpolate(y1, y2, mu)
--~ 	local mu2 = (1 - cos(mu*pi)) / 2
--~ 	return y1*(1-mu2)+y2*mu2
--~ end


--~ local slideUp = function(self, elap)
--~ 	local parent = self:GetParent()
--~ 	local bott = parent:GetBottom()
--~ 	elapsed[self] = (elapsed[self] or 0) + elap
--~ 	if elapsed[self] >= movetime then
--~ 		elapsed[self] = movetime
--~ 		status[self] = "Open"
--~ 		parent:SetHeight(max)
--~ 		self:SetScript("OnUpdate", nil)
--~ 		return
--~ 	end

--~ 	local left, bott, width = parent:GetLeft(), parent:GetBottom(), parent:GetWidth()
--~ 	parent:ClearAllPoints()
--~ 	parent:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, bott)
--~ 	parent:SetHeight(CosineInterpolate(min, max, elapsed[self]/movetime))
--~ end


--~ local slideDown = function(self, elap)
--~ 	local parent = self:GetParent()
--~ 	local bott = parent:GetBottom()
--~ 	elapsed[self] = (elapsed[self] or movetime) - elap
--~ 	if elapsed[self] <= 0 then
--~ 		elapsed[self] = 0
--~ 		status[self] = nil
--~ 		parent:SetHeight(min)
--~ 		self:SetScript("OnUpdate", nil)
--~ 		return
--~ 	end
--~ 	local left, bott, width = parent:GetLeft(), parent:GetBottom(), parent:GetWidth()
--~ 	parent:ClearAllPoints()
--~ 	parent:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, bott)
--~ 	parent:SetHeight(CosineInterpolate(min, max, elapsed[self]/movetime))
--~ end


--~ local function OnClick(self, button, down)
--~ 	if not status[self] then
--~ 		elapsed[self] = 0
--~ 		status[self] = "Opening"
--~ 		self:SetScript("OnUpdate", slideUp)
--~ 	elseif status[self] == "Closing" then
--~ 		status[self] = "Opening"
--~ 		self:SetScript("OnUpdate", slideUp)
--~ 	elseif status[self] == "Opening" or status[self] == "Open" then
--~ 		status[self] = "Closing"
--~ 		self:SetScript("OnUpdate", slideDown)
--~ 	end
--~ end


--~ local _G = getfenv(0)
--~ for i=1,7 do
--~ 	local parent = _G["ChatFrame"..i]
--~ 	local f = CreateFrame("Button", nil, parent)
--~ 	f:SetAllPoints(parent)

--~ 	local left, bott, width = parent:GetLeft(), parent:GetBottom()
--~ 	parent:ClearAllPoints()
--~ 	parent:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", left, bott)
--~ 	parent:SetHeight(min)

--~ 	f:RegisterForClicks("MiddleButton")
--~ 	f:SetScript("OnClick", OnClick)
--~ end


