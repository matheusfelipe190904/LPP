--[[
Faça um programa utilizando “for” que imprima a soma do múltiplos
de 4 no intervalo de 1 a 400
]]
local sum = 0

for i = 0, 401, 4 do
    sum = sum + i
end

print(string.format("A soma dos multiplos de 4 entre 1 e 400 e: %d", sum))