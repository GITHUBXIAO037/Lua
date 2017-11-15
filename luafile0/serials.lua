function serialize (o)
	if type(o) == "number" then
		
		io.write(o)
		--io.write(string.format("%a", o))
		print()
	elseif type(o) == "string" then
		io.write(string.format("%q", o))
		print()
	else 
		io.write("data")
		print()
	end	
end
cd = [===[my own way]===]

print(cd)

serialize(12.123)
serialize("as")
