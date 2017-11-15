--[[a = {12,13,14,15,16,17,18,19,20}

b = function (a) 
	for i,v in pairs(a) do
		print(v)
	end
		
end

b(a)
--]]

function derivative (f, delta)
	delta = delta or 1e-5
	return function (x)
		print(x)
		return (f(x + delta) - f(x))/delta
	end
end

c = derivative(math.sin)

print(c(5.2))
