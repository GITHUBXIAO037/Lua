function sum(n)
  --在lua中，函数名可以和变量名同名  
    local sum = 0
    for i = 1, n do
        sum=sum+i
    end
    return sum
end

print(sum(100))
print(__FILE__)
