--为每一个新字段增添默认值

--[[
function setDefault (t, d)
	local mt = {__index = function () return d end}
	setmetatable(t, mt)
end
--]]

--[[
local mt = {__index = function (t) return t.___ end}

function setDefault (t, d)
	t.___ = d
	setmetatable(t, mt)
end

--]]


--避免冲突
local key = {} -- unique key

local mt = {__index = function (t) return t[key] end}

function setDefault (t, d)
	t[key] = d
	setmetatable(t, mt)
end

tab = {x=10, y=20}
print(tab.x, tab.z, tab.c) --> 10 nil
setDefault(tab, 0)
print(tab.x, tab.z, tab.y, tab.c) --> 10 0
