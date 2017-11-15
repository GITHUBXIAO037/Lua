function foo(a)
    print("foo start", a)
    return coroutine.yield(2 * a)
end

co = coroutine.create(function ( a, b )
    print("co-body before", a, b)
    local r = foo(a + 1)
    print("co-body then", r)
    local r, s = coroutine.yield(a + b, a - b)
    print("co-body after", r, s)
   
    coroutine.yield(2 * 8)
    print("there is main 4,that will be ok")
    return "end"
    
end)

print("main 1", coroutine.resume(co, 1, 10))
print("main 2", coroutine.resume(co, "r"))
print("main 3", coroutine.resume(co, "x1", "y1"))
print("main 4", coroutine.resume(co, "x", "y"))
