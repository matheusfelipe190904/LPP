-- Fórmula de Bháskara
print("Digite os valores dos coeficientes:")
local a = io.read('*n')
local b = io.read('*n')
local c = io.read('*n')

local delta = b^2 - (4*a*c)
if delta < 0 then
    print("Nao existem raizes reais")
else
    local r1 = (-b - math.sqrt(delta))/(2*a)
    local r2 = (-b + math.sqrt(delta))/(2*a)
    print("R1 = ", r1)
    print("R2 = ", r2)
end