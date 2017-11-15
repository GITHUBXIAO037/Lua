local status, err = pcall(function () error({code=121}) end)
--print(err.code) --> 121

local status, err = pcall(function () a = "a"+1 end)
print(status)
print(err)
