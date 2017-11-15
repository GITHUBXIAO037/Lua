function readOnly (t)
	local proxy = {}
	
	local mt = { -- create metatable
	
	__index = t,
	
	__newindex = function (t, k, v)
	
		error("attempt to update a read-only table", 2)
	
	end
	
	}
	
	setmetatable(proxy, mt)
	
	return proxy
end

abc = {name = "vxiao", age = 119}

abc = readOnly(abc)
--[[
print(abc.name)

print(abc.age)

--]]


a = {name = "vxiao", age = 119}

c = function(t) 
	
end

b,d = c(a)

print(b)
