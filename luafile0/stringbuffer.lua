-- read whole file use io.read("*a")
local t = {}
	for line in io.lines() do
		t[#t + 1] = line .. "\n"
end
t[#t + 1] = ""
local s = table.concat(t)
