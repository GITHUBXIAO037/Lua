local use = require("Class")

local message = use.Lover

lover = message:new{girlfriend="xiao mei"}

show = lover:toString()

print(show)
