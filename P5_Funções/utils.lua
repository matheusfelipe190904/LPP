--[[
Adicionar ao módulo “util” as duas funções
● Função min(): retorna o mínimo de 2 valores
● Função max(): retorna o máximo de 2 valores
]]

local util = {}

function util.soma(a, b)
 return a+b
end

function util.min(a,b)
    if a > b then
        return b
    else
        return a
    end
end

function util.max(a,b)
    if a > b then
        return a
    else
        return b
    end
end

local a = io.read("*n")
local b = io.read("*n")

print(string.format("A soma dos numeros e: %d",util.soma(a,b)))
print(string.format("O maior entre os numeros e: %d", util.max(a,b)))
print(string.format("O menor entre os numeros e: %d", util.min(a,b)))