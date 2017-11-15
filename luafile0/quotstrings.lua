function quote (s)
-- find maximum length of sequences of equal signs
	local n = -1
	for w in string.gmatch(s, "]=*]") do
		n = math.max(n, #w - 2) -- -2 to remove the ']'s
	end
	print(n)
	-- produce a string with 'n' plus one equal signs
	local eq = string.rep("=", n + 1)
	-- build quoted string
	
	print(eq)
	return string.format(" [%s[\n%s]%s] ", eq, s, eq)
end

my = quote("wa ta si")
print(my)
