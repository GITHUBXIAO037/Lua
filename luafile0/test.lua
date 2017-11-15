function fun( n )
	-- body
	sum = 1
	for i=1,n do
		print(i)
		sum = sum * i
	end
	return sum
end

print(fun(36))