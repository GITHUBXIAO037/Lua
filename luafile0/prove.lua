prove=function (n)
    k = 0

    while k<n do
        print("如果 "..k.."成立")
	print("则   "..(k+1).."成立")
	--如果成立，则成立
        k = k + 1
    end
end


prove(3)
