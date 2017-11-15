-- 文件名 module.lua
module = {}
-- 定义一个常量
module.constant = "这是一个常量"
-- 定义一个函数
function module.func1()
	io.write("这是一个公有函数！\n")
end

local function func2()
	print("这是一个私有函数！")
end
-- 模块提供的对外接口 
function module.func3()
	func2()
end
 
return module  -- 最后要返回整个表
-- module.lua 结束
