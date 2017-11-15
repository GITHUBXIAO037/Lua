function vxiao( ... )
	-- to give the table set with the variable args
	arg = {...}

	for k,v in ipairs(arg) do
		print(k,v)
	end

	print(arg[0])
end

vxiao({1,2,3})