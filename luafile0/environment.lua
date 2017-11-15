a = "vxiao"

b = "yang"

abc = {c = b}

print(abc.c)

--print global variable name
--for n in pairs(_G) do print(n) end

--access global variable
value = _G.a

print("square",value)
--assign value to global variable name
_G.a="kingdom"
_G.a=a

print(a)

function show()
	print(_G.a)
end

show()
