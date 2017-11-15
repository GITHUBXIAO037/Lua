--save data
table={love = 1314}

table[1] = 120

table["like"] = 520

print(table)

for _,v in pairs(table) do
    print(_,v)

end

--access

num = table[1]

str1 = table.love
str2 = table.like 
str3 = table["like"]

print(str3)

--lua中下划线是存储不需要的值的变量
--print(_)

_ = 250
bc = _

print("bc "..bc)
print(_)
