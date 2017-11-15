Lover = {girlfriend = "yang",days = 520}

function Lover:toString()
    return "xiao love".." "..self.girlfriend
end

function Lover:new(t)
    t = t or {}
    setmetatable(t,self)
    self.__index = self
    return t
end


yourname = Lover:new{girlfriend = "zhai"}

message = yourname:toString()

print(message)

return{
    Lover = Lover
}
