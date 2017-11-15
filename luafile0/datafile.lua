local count = 0
function Entry () count = count + 1 end

Entry{"one","two","three","four"}
Entry{"one","two","three","four","five"}
Entry{"one","two","three"}

print(count)
