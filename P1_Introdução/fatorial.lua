function fatorial(n)
 if n == 0 then
 return 1
 else
 return n * fatorial(n-1)
 end
end
print("enter a number: ")
v = io.read("*n")
print(fatorial(v))