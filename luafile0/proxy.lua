local mt = {}

function mt.__index(t, k)
	t.__READS = t.__READS + 1
	return t.__TABLE[k]
end

function mt.__newindex(t, k, v)
	t.__WRITES = t.__WRITES + 1
	t.__TABLE[k] = v
end

local function track(t)
	local proxy = { __TABLE = t, __READS = 0, __WRITES = 0}
	return setmetatable(proxy, mt)
end

return { track = track }

--[[
	
	> proxy = require "proxy"
	> t = proxy.track({})
	> t.foo = 5
	> print(t.foo)
	5
	> t.foo = 2
	> print(t.__READS, t.__WRITES)
	1 2

--]]
