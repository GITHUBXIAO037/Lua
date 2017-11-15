-- a closure function

function abc(x)

	return 
		function(y) 
			return x^y
		end

end

--[[a = abc(2)
b = a(3)

print(b)
--]]


--return a table
function a()

	local abc = {"asd","abc"}

	return abc

end

--[[ test

b = a()

for i,v in pairs(b) do
	print(v)
	
end
--]]

--[[
do 
	local i = 119
	print(i)
	print("there is first block")

end

do 
	print("there is a text block")
	print(i)

end

--]]

--[[
--local function
do
	local oldSin = math.sin
	local k = math.pi/180
	math.sin = function (x)
		return oldSin(x*k)
	end
end
print(math.sin(15))
--]]

function foo (n)
	--print(n)
	if n > 0 then return foo(n - 1) end
	print(n)
end

foo(150000)

