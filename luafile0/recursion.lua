function abc(n)
   if n==0 then
        print("end")
    
    else
        abc(n-1)
    end

    print(n)
end
 

abc(100000)
