f1 = {a = 1, b = 2}
f2 = {a = 2, b = 3}
-- 此时如果计算 s = f1 + f2 会出错
mt = {}
function mt.__add(x, y)
	sum = {}
	sum.a = x.a + y.a
	sum.b = x.b + y.b
	return sum
end
setmetatable(f1, mt)
setmetatable(f2, mt)
 
-- 实际调用 f1 的 metatable 中的 __add(f1, f2)
-- 所以只为 f1 设置元表即可
s = f1 + f2 -- s = {a = 3, b = 5}
-- 此时如果 s2 = s + s 为错，因为s 未定义元表

print(s.a,s.b)
