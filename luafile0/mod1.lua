-- 文件名 mod1.lua
mod = {}


foo = function  () 
	
	return nil
end
print('foo return')
print(type(foo))
--fo1 = foo, the type of fo1 will be function
fo1 = foo() -- here the type of fo1 will be function
print(type(fo1))

abc = print('Hi!')

print(type(abc))
return mod
--lua模块中，return后面的语句将不被执行
-- mod1.lua 结束




