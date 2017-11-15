local mt = {}
local function new(r, i)
	return setmetatable({ real = r or 0, im = i or 0 }, mt)
end

local function is_complex(v)
	return getmetatable(v) == mt
end

local function add(c1, c2)
	return new(c1.real + c2.real, c1.im + c2.im)
end
mt.__add = add

local function add(c1, c2)
	if not is_complex(c1) then
		return new(c2.real + c1, c2.im)
	end
	if not is_complex(c2) then
		return new(c1.real + c2, c1.im)
	end

	return new(c1.real + c2.real, c1.im + c2.im)
end

local function modulus(c)
	return math.sqrt(c.real * c.real + c.im * c.im)
end

mt.__len = modulus

local function tos(c)
	return tostring(c.real) .. "+" .. tostring(c.im) .. "i"
end

mt.__tostring = tos

local function eq(c1, c2)
	return (c1.real == c2.real) and (c1.im == c2.im)
end

mt.__eq = eq

local function le(c1, c2)
	if not is_complex(c1) then
		return (c1 <= c2.real) and (c2.im >= 0)
	end
	if not is_complex(c2) then
		return (c1.real <= c2) and (c2.im <= 0)
	end

	return (c1.real <= c2.real) and (c1.im <= c2.im)
end

mt.__le = le
