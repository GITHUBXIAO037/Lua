abc = {}

abc[1] = "xiao"

abc.surnom = "sir"

a = {}
a.a = a
a.a.b = 3
a.a.a.c = 44
print(type(a.a.a))
print(a.a.b)
--print(a.a)
--print(a.a.a)

print(abc.surnom )
