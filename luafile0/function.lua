user = {}

user.add = function(x,y)
    return x + y
end

sum = user.add(12,18)

print(sum)
user["sub"] = function(x,y)
    return x-y
end

sub = user.sub(5,3)

print(sub)
