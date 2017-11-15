reserved = {
	["while"] = true, ["end"] = true,
	["function"] = true, ["local"] = true,
}
for w in allwords() do
	if not reserved[w] then
		--<do something with ’w’> -- 'w' is not a reserved word
	end	
end
--auxiliary function 辅助函数
function Set (list)
	local set = {}
	for _, l in ipairs(list) do set[l] = true end
	return set
end
reserved = Set{"while", "end", "function", "local", }
