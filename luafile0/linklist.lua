list = nil

list = {next = nil, value = 121}

list = {next = list, value = 911}

list = {next = list, value = 120}
local l = list
while l do
	--<visit l.value>
	print(l.value)
	l = l.next
end
