
co = coroutine.create(function () print("hi") return end)

print(co) --> thread: 0x8071d98

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))


co = coroutine.create(function ()
	for i = 1, 10 do
		print("co", i)
		coroutine.yield()
	end
end)
coroutine.resume(co)
