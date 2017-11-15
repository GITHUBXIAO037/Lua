co = coroutine.create(function (a,b)
    print(a)
    print("hi")
    print(b)
        
end)

     

print("main 1",coroutine.resume(co,12,45) )
