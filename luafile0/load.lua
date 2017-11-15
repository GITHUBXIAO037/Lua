f = loadfile("loadfile.lua")

print(foo) --> nil
f() -- defines 'foo'
foo("ok") 

foo("123456")
