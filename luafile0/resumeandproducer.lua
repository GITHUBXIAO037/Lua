function receive ()
	local status, value = coroutine.resume(producer)
	return value
end

function send (x)
	coroutine.yield(x)
end

producer = coroutine.create(
	function ()
		while true do
		local x = io.read() -- produce new value
		send(x)
	end
end)

function consumer ()
	while true do
		local x = receive() -- receive value from producer
		io.write(x, "\n") -- consume it
	end
end

consumer()
coroutine.resume(producer)
