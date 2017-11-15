prototype = {x = 0, y = 0, width = 100, height = 100}
mt = {} -- create a metatable
-- declare the constructor function
function new (o)
	setmetatable(o, mt)
	print(o)
	return o
end

--[[
_ 虚拟的变量,过滤用的
mt.__index = function (_, key)
	print(_)
	return prototype[key]
end
--]]

mt.__index = prototype

w = new{x=10, y=20}
print(w.width) --> 100
