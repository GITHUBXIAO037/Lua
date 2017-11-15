function fun(n)
	if(n==1)then
		return 1
	end
	return n*fun(n-1)
end


n = fun(30)
print(n)
