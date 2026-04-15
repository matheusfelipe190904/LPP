--[[
 Fórmula de Bhaskara
○ Implementar a função delta()
○ Implementar a função raizes() que retorna as duas raízes
○ Utilize a convenção de erro para indicar que não há raízes (delta negativo)
]]

local function delta (a, b, c)
    local del = (b^2) - (4*a*c)
    return del
end

local function raizes (a, b, c)
    local del = delta(a,b,c)
    if del >= 0 then
        local x1 = (-b - math.sqrt(del))/(2*a)
        local x2 = (-b + math.sqrt(del))/(2*a)
        return true, x1, x2
    else
        return false, "Sem raiz real. Delta < 0"
    end
end

local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")

local ok, x1, x2 = raizes(a,b,c)

if ok then
    print(string.format("X1 = %.2f", x1))
    print(string.format("X2 = %.2f", x2))
else
    print(x1)
end