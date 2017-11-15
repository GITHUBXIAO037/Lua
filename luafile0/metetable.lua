-- a regular table for a metetable

local mt = {}
Set = {}




function Set.new(l)
	
	print("new way to call function")
	
	local set = {}
	
	setmetatable(set,mt)
	
	for _, v in ipairs(l) do set[v] = true end
	
	return set

end
--每调用new方法时，创建出来的表都有共同的元表

function Set.union(a,b)

	if getmetatable(a) ~= mt or getmetatable(b) ~= mt then
		error("attempt to 'add' a set with a non-set value", 2)
	end
	local res = Set.new{}
	
	for k in pairs(a) do res[k] = true end
	for k in pairs(b) do res[k] = true end
	
	return res
	
end

function Set.intersection(a,b)

	local res = Set.new{}
	for k in pairs(a) do
		res[k] = b[k]
	end	

end



function Set.tostring(set)

	local l = {}
	
	for e in pairs(set) do
		l[#l+1] = e
	end
	
	return "{ "..table.concat(l," ").." }"

end

function Set.print(s)
	
	print(Set.tostring(s))

end

mt.__le = function (a, b) -- set containment
	for k in pairs(a) do
		if not b[k] then return false end
	end
	return true
end


mt.__lt = function (a, b)
	return a <= b and not (b <= a)
end

--add metamethod to metatable
mt.__add = Set.union

mt.__eq = function (a, b)
	return a <= b and b <= a
end


mt.__tostring = Set.tostring

s1 = Set.new{12,23,34,45,56}
s2 = Set.new{11,22,33,44}
--c = Set.union(s1,s2)
c = s1 + s2
--Set.print(c)
print(c)



--[[
abc = S.new()

print(abc)
--]]





